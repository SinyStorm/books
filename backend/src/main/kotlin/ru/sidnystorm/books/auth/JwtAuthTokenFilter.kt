package ru.sidnystorm.books.auth

import java.io.IOException

import javax.servlet.FilterChain
import javax.servlet.ServletException
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

import org.slf4j.LoggerFactory
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.beans.factory.annotation.Value
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken
import org.springframework.security.core.context.SecurityContextHolder
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource
import org.springframework.web.filter.OncePerRequestFilter
import ru.sidnystorm.books.service.UserDetailsServiceImpl


class JwtAuthTokenFilter : OncePerRequestFilter() {

   @Autowired
   private val tokenProvider: JwtProvider? = null

   @Autowired
   private val userDetailsService: UserDetailsServiceImpl? = null

   @Value("\${app.authCookieName}")
   lateinit var authCookieName: String

   @Throws(ServletException::class, IOException::class)
   override fun doFilterInternal(request: HttpServletRequest, response: HttpServletResponse, filterChain: FilterChain) {
      try {

         val jwt = getJwt(request)
         if (jwt != null && tokenProvider!!.validateJwtToken(jwt)) {
            val username = tokenProvider.getUserNameFromJwtToken(jwt)

            val userDetails = userDetailsService!!.loadUserByUsername(username)
            val authentication = UsernamePasswordAuthenticationToken(
                  userDetails, null, userDetails.authorities)
            authentication.details = WebAuthenticationDetailsSource().buildDetails(request)

            SecurityContextHolder.getContext().authentication = authentication
         }
      } catch (e: Exception) {
         logger.error("Can NOT set user authentication -> Message: {}", e)
      }

      filterChain.doFilter(request, response)
   }

   private fun getJwt(request: HttpServletRequest): String? {
      for (cookie in request.cookies) {
         if (cookie.name == authCookieName) {
            return cookie.value
         }
      }
      return null
   }

   companion object {
      private val logger = LoggerFactory.getLogger(JwtAuthTokenFilter::class.java)
   }
}