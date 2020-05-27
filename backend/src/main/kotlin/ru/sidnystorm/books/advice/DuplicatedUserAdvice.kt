package ru.sidnystorm.books.advice

import org.springframework.http.HttpStatus
import org.springframework.web.bind.annotation.ControllerAdvice
import org.springframework.web.bind.annotation.ExceptionHandler
import org.springframework.web.bind.annotation.ResponseBody
import org.springframework.web.bind.annotation.ResponseStatus
import ru.sidnystorm.books.exception.DuplicatedUserException
import javax.servlet.http.HttpServletResponse

/**
 * @author mosalev-ra-121205
 */
@ControllerAdvice
class DuplicatedUserAdvice {
   @ResponseBody
   @ExceptionHandler(DuplicatedUserException::class)
   @ResponseStatus(HttpStatus.CONFLICT)
   fun duplicatedUserHandler(ex: DuplicatedUserException, response: HttpServletResponse) = ex.message
}