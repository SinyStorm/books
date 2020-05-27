package ru.sidnystorm.books.repository

import org.jooq.DSLContext
import org.jooq.Record
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Repository
import ru.sidnystorm.books.dto.Publisher
import ru.sidnystorm.books.model.Tables.PUBLISHER

@Repository
class PublisherRepository @Autowired constructor(private val dsl: DSLContext) {

   fun listAll() = dsl.select().from(PUBLISHER).fetch(this::map)

   fun map(record: Record) = Publisher().apply {
      id = record.get(PUBLISHER.ID)
      name = record.get(PUBLISHER.NAME)
      description = record.get(PUBLISHER.DESCRIPTION)
      image = record.get(PUBLISHER.IMAGE)
   }

   fun find(id: Int): Publisher = dsl.select().from(PUBLISHER).where(PUBLISHER.ID.eq(id)).fetchOne(this::map)
}