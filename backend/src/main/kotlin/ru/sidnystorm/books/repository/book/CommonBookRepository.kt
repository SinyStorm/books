package ru.sidnystorm.books.repository.book

import org.jooq.DSLContext
import org.jooq.Record
import org.jooq.impl.DSL.noCondition
import org.jooq.impl.TableImpl
import ru.sidnystorm.books.dto.Book
import ru.sidnystorm.books.model.Tables.ORDER_BOOK
import ru.sidnystorm.books.model.tables.CommonBookTable

class CommonBookRepository<R: Record, T: TableImpl<R>> constructor(private val dsl: DSLContext, private val t: CommonBookTable<R, T>) {

   fun listBooks():List<Book> = dsl.select().from(t.table).where(t.NAME.isNotNull).orderBy(t.ID).fetch(this::map)

   fun listOrder(order: Int, skipEmpty: Boolean):List<Book> {
      val fetch = dsl.select().from(t.table)
            .leftJoin(ORDER_BOOK).on(t.ID.eq(ORDER_BOOK.BOOK).and(ORDER_BOOK.ORDER.eq(order)))
            .where(if (skipEmpty) ORDER_BOOK.ID.isNotNull else noCondition())
            .orderBy(t.ID)

      return fetch.fetch(this::map)
   }

   fun map(record: Record):Book {
      val book = Book().apply {
         id = record.get(t.ID)
         author = record.get(t.AUTHOR)
         name = record.get(t.NAME)
         grade = record.get(t.GRADE)
         price = record.get(t.PRICE)
      }
      if (record.field(ORDER_BOOK.COUNT) != null) {
         book.count = record.get(ORDER_BOOK.COUNT)?:0
      }

      return book
   }
}