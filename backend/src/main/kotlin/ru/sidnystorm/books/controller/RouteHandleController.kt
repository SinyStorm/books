package ru.sidnystorm.books.controller

import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.GetMapping

/**
 * @author mosalev-ra-121205
 */
@Controller
class RouteHandleController {

   @GetMapping("**/{path:[^\\\\.]*}")
   fun handle() = "forward:/"
}