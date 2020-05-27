package ru.sidnystorm.books.controller

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.http.HttpStatus
import org.springframework.security.access.prepost.PreAuthorize
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.ResponseStatus
import org.springframework.web.bind.annotation.RestController
import ru.sidnystorm.books.service.ManagerService

@RestController
@RequestMapping("/api/region")
class RegionController(@Autowired val service: ManagerService) {

   @GetMapping("/list")
   @PreAuthorize("isAuthenticated()")
   @ResponseStatus(HttpStatus.OK)
   fun list() = service.listOptions()
}