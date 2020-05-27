package ru.sidnystorm.books.service

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service
import ru.sidnystorm.books.enum.PublisherEnum
import ru.sidnystorm.books.model.tables.BookDrofa
import ru.sidnystorm.books.model.tables.records.BookDrofaRecord
import ru.sidnystorm.books.repository.book.BookRepository
import ru.sidnystorm.books.repository.book.CommonBookRepository

@Service
class BookService {

   @Autowired
   lateinit var bookRepository: BookRepository

   fun listBooks(publisher: Int) = bookRepository.getRepository(publisher).listBooks()
}