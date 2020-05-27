package ru.sidnystorm.books.util

import java.lang.Exception
import java.text.MessageFormat;
import java.util.Locale;
import java.util.ResourceBundle;

/**
 * @author mosalev-ra-121205
 */
class MessageLoader private constructor() {

   companion object {
      private const val MESSAGE_PATH = "locale";
      private val LOCALE = Locale("ru")
      private var messages: ResourceBundle? = null
      private var LOADER: MessageLoader? = null
      fun getLoader(): MessageLoader {
         if (LOADER == null) {
            LOADER = MessageLoader()
         }
         return LOADER!!
      }
   }

   init {
      messages = ResourceBundle.getBundle(MESSAGE_PATH, LOCALE)
   }

   /**
    * Данный метод генерирует локализованное значение, которое подставляется вместо указанного ключа
    * в генерируемых системой страницах.
    * @param key Ключ, для которого необходимо локализованное значение.
    * @param locale Язык локали, для которого необходимо получить значение.
    * @return Локализованное значение для данного ключевого поля.
    */
   fun getMessage(key: String, vararg params: Any?) =
      try {
         format(messages!!.getString(key), *params)
      } catch (e: Exception) {
         key
      }

   private fun format(message: String, vararg params: Any?) =
      if (params.isNotEmpty()) {
         val formatter = MessageFormat("")
         formatter.locale = LOCALE
         formatter.applyPattern(message)
         formatter.format(params)
      } else {
         message
      }
}
