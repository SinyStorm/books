package ru.sidnystorm.books.response

import org.springframework.security.core.GrantedAuthority

class SuccessfulSigninResponse(var login: String?, val authorities:
Collection<GrantedAuthority>) {
   var type = "Bearer"
}