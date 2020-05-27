package ru.sidnystorm.books.repository

import org.jooq.DSLContext
import org.jooq.Record
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Repository
import ru.sidnystorm.books.dto.Manager
import ru.sidnystorm.books.dto.RegionOption
import ru.sidnystorm.books.model.Tables.MANAGER

@Repository
class ManagerRepository @Autowired constructor(private val dsl: DSLContext) {

   fun find(id:Int): Manager? = dsl.select().from(MANAGER).where(MANAGER.ID.eq(id)).fetchOne(this::map)

   fun listOptions(): List<RegionOption> = dsl.select(MANAGER.ID, MANAGER.REGION).from(MANAGER).fetch(this::mapOptions)

   fun map(record: Record) = Manager().apply {
      id = record.get(MANAGER.ID)
      region = record.get(MANAGER.REGION)
      phone = record.get(MANAGER.PHONE)
      email = record.get(MANAGER.EMAIL)
   }
   fun mapOptions(record: Record) = RegionOption().apply {
      id = record.get(MANAGER.ID)
      name = record.get(MANAGER.REGION)
   }
}