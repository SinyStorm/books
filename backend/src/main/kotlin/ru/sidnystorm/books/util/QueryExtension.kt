package ru.sidnystorm.books.util

import org.jooq.Condition
import org.jooq.Record
import org.jooq.TableField
import org.jooq.impl.DSL.noCondition

/**
 * @author mosalev-ra-121205
 */

fun <R: Record, T> Condition.filterEqual(value: T?, field: TableField<R, T>): Condition {
   if (value == null) return this
   return this.and(field.eq(value))
}