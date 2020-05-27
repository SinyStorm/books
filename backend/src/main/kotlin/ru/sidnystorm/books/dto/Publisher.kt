package ru.sidnystorm.books.dto

class Publisher: Entity() {
   var name:String? = null
   var description:String? = null
   var image:String? = null
   val view
      get() = name + (if (description !== null) "" else "($description)")

}