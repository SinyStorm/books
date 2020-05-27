package ru.sidnystorm.books.advice

import org.springframework.http.HttpHeaders
import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.MethodArgumentNotValidException
import org.springframework.web.bind.annotation.ControllerAdvice
import org.springframework.web.bind.annotation.ExceptionHandler
import org.springframework.web.bind.annotation.RestController
import org.springframework.web.context.request.WebRequest
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler
import java.io.IOException
import java.util.*
import javax.servlet.http.HttpServletResponse
import javax.validation.ConstraintViolationException


@ControllerAdvice
@RestController
class ValidationHandler : ResponseEntityExceptionHandler() {

   override fun handleMethodArgumentNotValid(ex: MethodArgumentNotValidException, headers: HttpHeaders, status: HttpStatus, request: WebRequest): ResponseEntity<Any> {
      val body = linkedMapOf(
            "timestamp" to Date(),
            "status" to status.value(),
            "errors" to ex.bindingResult.fieldErrors.map{x -> x.defaultMessage}
      )

      return ResponseEntity(body, headers, status)
   }

   @ExceptionHandler(ConstraintViolationException::class)
   @Throws(IOException::class)
   fun handleConstraintViolationError(response: HttpServletResponse) {
      response.sendError(HttpStatus.BAD_REQUEST.value())
   }
}