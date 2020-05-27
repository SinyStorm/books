package ru.sidnystorm.books.service

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.security.core.authority.SimpleGrantedAuthority
import org.springframework.security.core.userdetails.UserDetails
import org.springframework.security.core.userdetails.UserDetailsService
import org.springframework.security.core.userdetails.UsernameNotFoundException
import org.springframework.stereotype.Service
import ru.sidnystorm.books.repository.UserRepository

@Service
class UserDetailsServiceImpl: UserDetailsService {

   @Autowired
   lateinit var userRepository: UserRepository

   @Throws(UsernameNotFoundException::class)
   override fun loadUserByUsername(username: String): UserDetails {
      val user = userRepository.findAuth(username)
            ?: throw UsernameNotFoundException("User '$username' not found")

      return org.springframework.security.core.userdetails.User
            .withUsername(username)
            .password(user.password)
            .authorities(listOf(SimpleGrantedAuthority("ROLE_${user.role.name}")))
            .accountExpired(false)
            .accountLocked(false)
            .credentialsExpired(false)
            .disabled(false)
            .build()
   }
}