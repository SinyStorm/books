package ru.sidnystorm.books.response


data class ResponseDTO<T>(val status:String? = null, val message:String? = "Success", val body:T? = null)