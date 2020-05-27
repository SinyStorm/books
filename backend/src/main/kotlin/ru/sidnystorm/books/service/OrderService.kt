package ru.sidnystorm.books.service

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.http.HttpStatus
import org.springframework.stereotype.Service
import org.springframework.web.server.ResponseStatusException
import ru.sidnystorm.books.dto.Order
import ru.sidnystorm.books.repository.OrderRepository
import ru.sidnystorm.books.repository.book.BookRepository

@Service
class OrderService {

   @Autowired
   lateinit var orderRepository: OrderRepository

   @Autowired
   lateinit var bookRepository: BookRepository

   @Autowired
   lateinit var xlsService: XLSService
   @Autowired
   lateinit var emailService: EmailService

   fun find(id:Int, userId:Int, skipEmpty:Boolean = true): Order? {
      val order = orderRepository.find(id, userId) ?: return null
      order.books = bookRepository.getRepository(order.publisher?.id).listOrder(order.id!!, skipEmpty)

      return order
   }

   fun list(userId:Int) = orderRepository.list(userId)

   fun add(order: Order) {
      val newId = orderRepository.insert(order)
      if (order.books?.isNotEmpty() == true) {
         order.books!!.forEach { it.order = newId }
         orderRepository.insert(order.books!!)
      }
   }

   fun update(order: Order) {
      orderRepository.find(order.id!!, order.user!!.id!!) ?: throw ResponseStatusException(HttpStatus.NOT_FOUND)

      order.formed = false
      orderRepository.update(order)

      orderRepository.deleteBooks(order.id!!)

      if (order.books?.isNotEmpty() == true) {
         order.books!!.forEach { it.order = order.id }
         orderRepository.insert(order.books!!)
      }
   }

   fun form(order: Order) {
      val fromDb = find(order.id!!, order.user!!.id!!, false)?:throw ResponseStatusException(HttpStatus.NOT_FOUND)
      fromDb.user = order.user

      // generate xls
      val fileName = xlsService.writeToFile(fromDb)

      // email it
      emailService.post(fromDb, fileName)

      fromDb.formed = true
      orderRepository.update(fromDb)
   }
}