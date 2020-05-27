package ru.sidnystorm.books.dto

import java.util.*

class Order: Entity() {
   var date:Date = Date()
   var user:User? = null
   var publisher:Publisher? = null
   var formed:Boolean = false
   var books:List<Book>? = null
}