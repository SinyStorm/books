package ru.sidnystorm.books.dto

import javax.validation.constraints.NotBlank

data class AuthInfo (
   @NotBlank val login:String,
   @NotBlank val password:String
)