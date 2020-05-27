package ru.sidnystorm.books.repository

import org.jooq.*
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Repository
import ru.sidnystorm.books.dto.Book
import ru.sidnystorm.books.dto.Order
import ru.sidnystorm.books.dto.Publisher
import ru.sidnystorm.books.model.Tables.*
import ru.sidnystorm.books.model.tables.records.OrderBookRecord
import ru.sidnystorm.books.model.tables.records.OrderRecord
import java.util.Date

@Repository
class OrderRepository @Autowired constructor(val dsl: DSLContext) {

   fun find(id: Int, user: Int): Order? = dsl.select().from(ORDER)
         .leftJoin(PUBLISHER).on(PUBLISHER.ID.eq(ORDER.PUBLISHER))
         .where(ORDER.ID.eq(id).and(ORDER.USER.eq(user))).fetchOne(this::map)

   fun list(user: Int): List<Order> = dsl.select().from(ORDER)
         .leftJoin(PUBLISHER).on(PUBLISHER.ID.eq(ORDER.PUBLISHER))
         .where(ORDER.USER.eq(user)).orderBy(ORDER.ID.desc()).fetch(this::map)

   fun insert(order: Order): Int = dsl.insertInto(ORDER).set(dsl.newRecord(ORDER, map(order))).returning().fetchOne().get(ORDER.ID)

   fun insert(books: List<Book>): IntArray = dsl.batchInsert(books.map { map(it) }).execute()

   fun update(order: Order): Int = dsl.update(ORDER).set(map(order)).where(ORDER.ID.eq(order.id)).execute()

   fun deleteBooks(id: Int) = dsl.deleteFrom(ORDER_BOOK).where(ORDER_BOOK.ORDER.eq(id)).execute()

   fun map(record: Record) = Order().apply {
      id = record.get(ORDER.ID)
      date = record.get(ORDER.DATE)
      formed = record.get(ORDER.FORMED)
      publisher = Publisher().apply {
         id = record.get(ORDER.PUBLISHER)
         name = record.field(PUBLISHER.NAME)?.let { record.get(it) }
      }
      user = ru.sidnystorm.books.dto.User().apply { id = record.get(ORDER.USER) }
   }

   fun map(order: Order) = OrderRecord().apply {
         set(ORDER.USER, order.user!!.id)
         set(ORDER.DATE, java.sql.Date(Date().time))
         set(ORDER.PUBLISHER, order.publisher!!.id)
         set(ORDER.FORMED, order.formed)
      }

   fun map(book: Book) = OrderBookRecord().apply {
      set(ORDER_BOOK.BOOK, book.id)
      set(ORDER_BOOK.ORDER, book.order)
      set(ORDER_BOOK.COUNT, book.count)
   }
}