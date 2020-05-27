package ru.sidnystorm.books.advice

import org.springframework.http.HttpStatus
import org.springframework.web.bind.annotation.ControllerAdvice
import org.springframework.web.bind.annotation.ExceptionHandler
import org.springframework.web.bind.annotation.ResponseBody
import org.springframework.web.bind.annotation.ResponseStatus
import ru.sidnystorm.books.exception.AccessDeniedException

/**
 * @author mosalev-ra-121205
 */
@ControllerAdvice
class AccessDeniedAdvice {
   @ResponseBody
   @ExceptionHandler(AccessDeniedException::class)
   @ResponseStatus(HttpStatus.FORBIDDEN)
   fun accessDeniedHandler(ex: AccessDeniedException) = ex.message
}