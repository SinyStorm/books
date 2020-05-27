package ru.sidnystorm.books.controller

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.http.HttpStatus
import org.springframework.security.access.prepost.PreAuthorize
import org.springframework.web.bind.annotation.*
import ru.sidnystorm.books.service.PublisherService

@RestController
@RequestMapping("/api/publisher")
class PublisherController(@Autowired val service: PublisherService) {

   @GetMapping("/list")
   @PreAuthorize("isAuthenticated()")
   @ResponseStatus(HttpStatus.OK)
   fun list() = service.listAll()
}