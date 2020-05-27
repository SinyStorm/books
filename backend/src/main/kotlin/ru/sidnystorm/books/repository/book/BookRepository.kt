package ru.sidnystorm.books.repository.book

import org.jooq.DSLContext
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import ru.sidnystorm.books.enum.PublisherEnum
import ru.sidnystorm.books.model.Tables
import ru.sidnystorm.books.model.tables.CommonBookTable
import java.lang.IllegalArgumentException

@Configuration
class BookRepository {

   @Autowired
   private lateinit var dsl: DSLContext

   @Bean
   fun DROFA() = CommonBookRepository(dsl, CommonBookTable(Tables.BOOK_DROFA))
   @Bean
   fun BINOM() = CommonBookRepository(dsl, CommonBookTable(Tables.BOOK_BINOM))
   @Bean
   fun XXI() = CommonBookRepository(dsl, CommonBookTable(Tables.BOOK_XXI))
   @Bean
   fun RUWORD() = CommonBookRepository(dsl, CommonBookTable(Tables.BOOK_RUWORD))
   @Bean
   fun ACADEM() = CommonBookRepository(dsl, CommonBookTable(Tables.BOOK_ACADEM))
   @Bean
   fun VENTANA() = CommonBookRepository(dsl, CommonBookTable(Tables.BOOK_VENTANA))
   @Bean
   fun PROSVET_FP() = CommonBookRepository(dsl, CommonBookTable(Tables.BOOK_PROSVET_FP))
   @Bean
   fun PROSVET_SH() = CommonBookRepository(dsl, CommonBookTable(Tables.BOOK_PROSVET_SH))
   @Bean
   fun PROSVET_VU() = CommonBookRepository(dsl, CommonBookTable(Tables.BOOK_PROSVET_VU))
   @Bean
   fun PROSVET_BL() = CommonBookRepository(dsl, CommonBookTable(Tables.BOOK_PROSVET_BL))
   @Bean
   fun PROSVET_ME() = CommonBookRepository(dsl, CommonBookTable(Tables.BOOK_PROSVET_ME))

   fun getRepository(id: Int?) = when(PublisherEnum.fromCode(id!!)) {
      PublisherEnum.DROFA -> DROFA()
      PublisherEnum.BINOM -> BINOM()
      PublisherEnum.XXI -> XXI()
      PublisherEnum.RUWORD -> RUWORD()
      PublisherEnum.ACADEM -> ACADEM()
      PublisherEnum.VENTANA -> VENTANA()
      PublisherEnum.PROSVET_FP -> PROSVET_FP()
      PublisherEnum.PROSVET_SH -> PROSVET_SH()
      PublisherEnum.PROSVET_VU -> PROSVET_VU()
      PublisherEnum.PROSVET_BL -> PROSVET_BL()
      PublisherEnum.PROSVET_ME -> PROSVET_ME()
      else -> throw IllegalArgumentException("Unknown publisher $id")
   }
}