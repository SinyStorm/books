package ru.sidnystorm.books.controller

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.http.HttpStatus
import org.springframework.security.access.prepost.PreAuthorize
import org.springframework.web.bind.annotation.*
import org.springframework.web.server.ResponseStatusException
import ru.sidnystorm.books.dto.User
import ru.sidnystorm.books.dto.UserInfo
import ru.sidnystorm.books.service.UserService
import javax.validation.Valid
import javax.websocket.server.PathParam

@RestController
@RequestMapping("/api/user")
class UserController(@Autowired val userService: UserService) {

   @PostMapping("/add")
   @PreAuthorize("hasRole('ADMIN')")
   @ResponseStatus(HttpStatus.CREATED)
   fun add(@Valid @RequestBody user: User) =
      userService.add(user)

   @PostMapping("/find")
   @PreAuthorize("isAuthenticated()")
   @ResponseStatus(HttpStatus.OK)
   fun find(@RequestParam login: String) =
         userService.find(login) ?: ResponseStatusException(HttpStatus.NOT_FOUND)

   @PostMapping("/update")
   @PreAuthorize("isAuthenticated()")
   @ResponseStatus(HttpStatus.OK)
   fun update(@RequestParam("login") login: String, @Valid @RequestBody userInfo: UserInfo) =
       userService.update(login, userInfo) > 0
}