package ru.sidnystorm.books.dto

abstract class Entity {
   var id:Int? = null

   override fun equals(other: Any?): Boolean {
      return other != null && other::class == this::class && (other as Entity).id == this.id
   }

   override fun hashCode(): Int {
      return id?.hashCode() ?: 0
   }

   override fun toString(): String {
      return "Entity: id $id"
   }
}