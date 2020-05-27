package ru.sidnystorm.books.service

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.security.crypto.password.PasswordEncoder
import org.springframework.stereotype.Service
import ru.sidnystorm.books.dto.User
import ru.sidnystorm.books.dto.UserInfo
import ru.sidnystorm.books.dto.UserRole
import ru.sidnystorm.books.exception.DuplicatedUserException
import ru.sidnystorm.books.repository.UserRepository

@Service
class UserService {

   @Autowired
   lateinit var repository: UserRepository
   @Autowired
   lateinit var encoder: PasswordEncoder

   fun add(user: User) : Int {
      if (repository.findAuth(user.login!!) != null) {
         throw DuplicatedUserException()
      }

      user.password = encoder.encode(user.password)
      user.role = UserRole.USER
      return repository.insert(user)
   }

   fun find(login: String) = repository.find(User(login))

   //TODO existence check
   fun update(login: String, userInfo: UserInfo) = repository.update(login, userInfo)
}