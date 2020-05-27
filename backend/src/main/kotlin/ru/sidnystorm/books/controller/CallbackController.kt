package ru.sidnystorm.books.controller

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.http.HttpStatus
import org.springframework.security.access.prepost.PreAuthorize
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.ResponseStatus
import ru.sidnystorm.books.dto.CallbackInfo
import ru.sidnystorm.books.service.EmailService
import javax.validation.Valid

@Controller
@RequestMapping("/api/callback")
class CallbackController(@Autowired private val service: EmailService) {

   @PostMapping("/send")
   @PreAuthorize("isAuthenticated()")
   @ResponseStatus(HttpStatus.OK)
   fun send(@Valid @RequestBody info: CallbackInfo) = service.sendCallback(info)
}