package ru.sidnystorm.books.config

import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.beans.factory.annotation.Value
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter
import org.springframework.security.config.http.SessionCreationPolicy
import org.springframework.security.authentication.AuthenticationManager
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity
import org.springframework.security.config.annotation.web.builders.HttpSecurity
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder
import org.springframework.web.cors.CorsConfiguration
import org.springframework.web.cors.CorsConfigurationSource
import org.springframework.web.cors.UrlBasedCorsConfigurationSource
import ru.sidnystorm.books.auth.JwtAuthEntryPoint
import ru.sidnystorm.books.auth.JwtAuthTokenFilter
import ru.sidnystorm.books.service.UserDetailsServiceImpl


@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
class WebSecurityConfig : WebSecurityConfigurerAdapter() {

   @Autowired
   internal var userDetailsService: UserDetailsServiceImpl? = null

   @Autowired
   private val unauthorizedHandler: JwtAuthEntryPoint? = null

   @Value("\${app.domain}")
   lateinit var appDomain: String

   @Bean
   fun bCryptPasswordEncoder(): BCryptPasswordEncoder {
      return BCryptPasswordEncoder()
   }

   @Bean
   fun authenticationJwtTokenFilter(): JwtAuthTokenFilter {
      return JwtAuthTokenFilter()
   }

   @Bean
   fun corsConfigurationSource(): CorsConfigurationSource {
      val configuration = CorsConfiguration()
      configuration.allowedOrigins = listOf("http://localhost:8080", "http://localhost:8081", appDomain)
      configuration.allowedHeaders = listOf("*")
      configuration.allowedMethods = listOf("GET", "POST", "PUT", "DELETE", "OPTIONS")
      configuration.allowCredentials = true
      configuration.maxAge = 3600
      val source = UrlBasedCorsConfigurationSource()
      source.registerCorsConfiguration("/**", configuration)
      return source
   }

   @Throws(Exception::class)
   override fun configure(authenticationManagerBuilder: AuthenticationManagerBuilder) {
      authenticationManagerBuilder
            .userDetailsService(userDetailsService)
            .passwordEncoder(bCryptPasswordEncoder())
   }

   @Bean
   @Throws(Exception::class)
   override fun authenticationManagerBean(): AuthenticationManager {
      return super.authenticationManagerBean()
   }

   @Throws(Exception::class)
   override fun configure(http: HttpSecurity) {
      http
            .cors().and()
            .csrf().disable().authorizeRequests()
            .antMatchers("/**").permitAll()
            .anyRequest().authenticated()
            .and()
            .exceptionHandling().authenticationEntryPoint(unauthorizedHandler).and()
            .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)

      http.addFilterBefore(authenticationJwtTokenFilter(), UsernamePasswordAuthenticationFilter::class.java)
      http.headers().cacheControl().disable()
   }
}