package ru.sidnystorm.books.dto

import javax.validation.Valid
import javax.validation.constraints.NotBlank
import javax.validation.constraints.Size

class UserInfo:Entity() {
   @NotBlank
   var name:String? = null
   @NotBlank
   var address:String? = null
   @NotBlank
   @Size(min=10, max=10)
   var inn:String? = null
   @NotBlank
   @Size(min=9, max=9)
   var kpp:String? = null
   @NotBlank
   @Size(min=13, max=13)
   var ogrn:String? = null
//   @NotBlank
//   @Size(min=8, max=10)
   var okpo:String? = null
   @NotBlank
   var bank:String? = null
   @NotBlank
   @Size(min=9, max=9)
   var bik:String? = null
//   @NotBlank
   var bankAddress:String? = null
   @NotBlank
   var checkingAccount:String? = null
//   @NotBlank
   var correspondentAccount:String? = null
   @NotBlank
   var phone:String? = null
   @NotBlank
   var email:String? = null
   @Valid
   var manager:Manager? = null
}