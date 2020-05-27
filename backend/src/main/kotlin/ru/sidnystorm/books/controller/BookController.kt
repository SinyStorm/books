package ru.sidnystorm.books.controller

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.http.HttpStatus
import org.springframework.security.access.prepost.PreAuthorize
import org.springframework.web.bind.annotation.*
import ru.sidnystorm.books.service.BookService

@RestController
@RequestMapping("/api/book")
class BookController(@Autowired val service: BookService) {

   @GetMapping("/{publisher}")
   @PreAuthorize("isAuthenticated()")
   @ResponseStatus(HttpStatus.OK)
   fun list(@PathVariable publisher: Int) = service.listBooks(publisher)
}