package ru.sidnystorm.books.dto

import javax.validation.Valid
import javax.validation.constraints.NotBlank
import javax.validation.constraints.NotNull

class User: Entity {

   @NotBlank
   var login:String? = null
   @NotBlank
   var password:String? = null
   var role = UserRole.USER
   @Valid @NotNull
   var userInfo:UserInfo? = null

   constructor(): super()
   constructor(login: String): super() {
      this.login = login
   }
}