package ru.sidnystorm.books.model.tables

import org.jooq.Record
import org.jooq.impl.DSL
import org.jooq.impl.SQLDataType
import org.jooq.impl.TableImpl

class CommonBookTable<R: Record, T: TableImpl<R>>(val table: T): TableImpl<R>(table.name) {

   val ID = createField<R, Int>("id", SQLDataType.INTEGER.nullable(false).defaultValue(DSL.field("nextval('${table.name}_id_seq'::regclass)", SQLDataType.INTEGER)), table, "")
   val AUTHOR = createField<R, String>("author", SQLDataType.CLOB, table, "")
   val NAME = createField<R, String>("name", SQLDataType.CLOB, table, "")
   val GRADE = createField<R, String>("grade", SQLDataType.CLOB, table, "")
   val PRICE = createField<R, Double>("price", SQLDataType.DOUBLE, table, "")
}