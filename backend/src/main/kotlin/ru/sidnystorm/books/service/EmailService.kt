package ru.sidnystorm.books.service

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.beans.factory.annotation.Value
import org.springframework.core.io.FileSystemResource
import org.springframework.mail.MailException
import org.springframework.mail.javamail.JavaMailSender
import org.springframework.mail.javamail.MimeMessageHelper
import org.springframework.stereotype.Component
import java.io.File
import javax.mail.MessagingException
import org.springframework.core.env.Environment
import org.springframework.http.HttpStatus
import org.springframework.mail.SimpleMailMessage
import org.springframework.web.server.ResponseStatusException
import ru.sidnystorm.books.dto.CallbackInfo
import ru.sidnystorm.books.dto.Order
import ru.sidnystorm.books.dto.User
import ru.sidnystorm.books.repository.UserRepository
import ru.sidnystorm.books.util.MessageLoader
import java.text.SimpleDateFormat

@Component
class EmailService {

   @Value("\${spring.mail.username}")
   lateinit var sender: String

   @Autowired
   lateinit var environment: Environment

   @Autowired
   var emailSender: JavaMailSender? = null

   @Autowired
   lateinit var userRepository: UserRepository


   fun post(order: Order, pathToAttachment: String) {
      try {
         if (order.user?.id == null) throw ResponseStatusException(HttpStatus.NOT_FOUND)

         val user = userRepository.find(order.user!!) ?: throw ResponseStatusException(HttpStatus.NOT_FOUND)

         val message = emailSender!!.createMimeMessage()
         val helper = MimeMessageHelper(message, true)


         helper.setTo(user.userInfo?.manager?.email ?: "")
//         helper.setTo("Den26031991@mail.ru")
         helper.setFrom(sender)
         helper.setSubject(MessageLoader.getLoader().getMessage("email.subject", order.id, SimpleDateFormat("yyyy-MM-dd").format(order.date), user.login))
         helper.setText(MessageLoader.getLoader().getMessage("email.text", user.userInfo!!.name!!, user.userInfo!!.manager!!.name, order.publisher!!.view))

         val file = FileSystemResource(File(pathToAttachment))
         helper.addAttachment(pathToAttachment.substring(pathToAttachment.lastIndexOf('/')), file)

         emailSender!!.send(message)
      } catch (e: MessagingException) {
         e.printStackTrace()
      }
   }

   fun sendHtmlMessage(to: String, subject: String, htmlMsg: String) {
      try {
         val message = emailSender!!.createMimeMessage()
         message.setContent(htmlMsg, "text/html")

         val helper = MimeMessageHelper(message, false, "utf-8")

         helper.setTo(to)
         helper.setFrom(sender)
         helper.setSubject(subject)

         emailSender!!.send(message)
      } catch (exception: MailException) {
         exception.printStackTrace()
      }
   }

   fun sendCallback(info: CallbackInfo) {
      try {
         var recipient = "Den26031991@mail.ru" // default

         if (info.userId != null) {
            val user = userRepository.find(User().apply { id = info.userId })
//            recipient = user?.userInfo?.manager?.email ?: recipient
         }

         val message = SimpleMailMessage()
         message.setTo(recipient)
         message.setFrom(sender)
         message.setSubject(MessageLoader.getLoader().getMessage("email.callback.subject"))
         message.setText(MessageLoader.getLoader().getMessage("email.callback.text", info.phone, info.name))

         emailSender!!.send(message)
      } catch (e: MessagingException) {
         e.printStackTrace()
      }
   }
}