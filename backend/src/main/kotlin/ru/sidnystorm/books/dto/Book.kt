package ru.sidnystorm.books.dto

class Book: Entity() {
   var author:String? = null
   var name:String? = null
   var grade:String? = null
   var price:Double? = null
   var count:Int = 0
   var order:Int? = null
}