package ru.sidnystorm.books.controller

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.http.HttpStatus
import org.springframework.security.access.prepost.PreAuthorize
import org.springframework.web.bind.annotation.*
import org.springframework.web.server.ResponseStatusException
import ru.sidnystorm.books.dto.Order
import ru.sidnystorm.books.service.OrderService

@RestController
@RequestMapping("/api/order")
class OrderController(@Autowired val service: OrderService) {

   @GetMapping("/{user}/{id}")
   @PreAuthorize("isAuthenticated()")
   @ResponseStatus(HttpStatus.OK)
   fun find(@PathVariable user: Int, @PathVariable id: Int) = service.find(id, user)?:throw ResponseStatusException(HttpStatus.NOT_FOUND)

   @GetMapping("list/{user}")
   @PreAuthorize("isAuthenticated()")
   @ResponseStatus(HttpStatus.OK)
   fun list(@PathVariable user: Int) = service.list(user)

   @PostMapping("/add")
   @PreAuthorize("isAuthenticated()")
   @ResponseStatus(HttpStatus.CREATED)
   fun add(@RequestBody order: Order) = service.add(order)

   @PostMapping("/update/{id}")
   @PreAuthorize("isAuthenticated()")
   @ResponseStatus(HttpStatus.CREATED)
   fun add(@PathVariable id: Int, @RequestBody order: Order) = service.update(order)

   @PostMapping("/form")
   @PreAuthorize("isAuthenticated()")
   @ResponseStatus(HttpStatus.OK)
   fun form(@RequestBody order: Order) = service.form(order)
}