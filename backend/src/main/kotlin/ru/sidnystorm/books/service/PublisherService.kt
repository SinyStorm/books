package ru.sidnystorm.books.service

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service
import ru.sidnystorm.books.dto.Publisher
import ru.sidnystorm.books.repository.PublisherRepository

@Service
class PublisherService @Autowired constructor(val repository: PublisherRepository) {

   fun listAll(): List<Publisher> = repository.listAll()
}