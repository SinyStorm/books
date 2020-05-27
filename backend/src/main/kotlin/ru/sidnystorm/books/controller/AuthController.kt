package ru.sidnystorm.books.controller

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.beans.factory.annotation.Value
import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.security.authentication.AuthenticationManager
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken
import org.springframework.security.core.GrantedAuthority
import org.springframework.security.core.authority.SimpleGrantedAuthority
import org.springframework.security.core.context.SecurityContextHolder
import org.springframework.web.bind.annotation.*
import ru.sidnystorm.books.auth.JwtProvider
import ru.sidnystorm.books.dto.AuthInfo
import ru.sidnystorm.books.response.SuccessfulSigninResponse
import ru.sidnystorm.books.dto.User
import ru.sidnystorm.books.repository.UserRepository
import javax.servlet.http.Cookie
import javax.servlet.http.HttpServletResponse
import javax.validation.Valid

@RestController
@RequestMapping("/api/auth")
class AuthController {
   @Autowired
   lateinit var authenticationManager: AuthenticationManager

   @Autowired
   lateinit var userRepository: UserRepository

   @Autowired
   lateinit var jwtProvider: JwtProvider

   @Value("\${app.authCookieName}")
   lateinit var authCookieName: String

   @Value("\${app.isCookieSecure}")
   var isCookieSecure: Boolean = true


   @PostMapping("/signin")
   fun authenticateUser(@Valid @RequestBody authInfo: AuthInfo, response: HttpServletResponse): ResponseEntity<*> {

      val userCandidate = userRepository.find(User(authInfo.login))

      return if (userCandidate != null) {
         val authentication = authenticationManager.authenticate(
               UsernamePasswordAuthenticationToken(authInfo.login, authInfo.password))
         SecurityContextHolder.getContext().authentication = authentication
         val jwt: String = jwtProvider.generateJwtToken(userCandidate.login!!)

         val cookie = Cookie(authCookieName, jwt)
         cookie.maxAge = jwtProvider.jwtExpiration!!
         cookie.secure = isCookieSecure
         cookie.isHttpOnly = true
         cookie.path = "/"
         response.addCookie(cookie)

         val authorities: List<GrantedAuthority> = listOf(SimpleGrantedAuthority(userCandidate.role.name))
         ResponseEntity.ok(SuccessfulSigninResponse(userCandidate.login, authorities))
      } else {
         ResponseEntity("User not found!",
               HttpStatus.BAD_REQUEST)
      }
   }

   @PostMapping("/logout")
   fun logout(response: HttpServletResponse): String {
      val cookie = Cookie(authCookieName, null)
      cookie.maxAge = 0
      cookie.secure = isCookieSecure
      cookie.isHttpOnly = true
      cookie.path = "/"
      response.addCookie(cookie)

      return "logged out"
   }
}