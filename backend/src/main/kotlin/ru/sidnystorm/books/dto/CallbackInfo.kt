package ru.sidnystorm.books.dto

import javax.validation.constraints.NotEmpty

class CallbackInfo {
   @NotEmpty
   var name:String? = null
   @NotEmpty
   var phone:String? = null
   var userId:Int? = null
}