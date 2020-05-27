package ru.sidnystorm.books.enum

enum class PublisherEnum(private val code: Int) {
   VENTANA(1),
   ACADEM(2),
   DROFA(3),
   BINOM(4),
   XXI(5),
   RUWORD(6),
   PROSVET_FP(7),
   PROSVET_SH(8),
   PROSVET_VU(9),
   PROSVET_BL(10),
   PROSVET_ME(11);

   companion object {
      fun fromCode(code: Int) = values().find { it.code == code }
   }
}