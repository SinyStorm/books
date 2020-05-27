package ru.sidnystorm.books

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.transaction.annotation.EnableTransactionManagement

/**
 * @author mosalev-ra-121205
 */
@SpringBootApplication
@EnableTransactionManagement
class App

fun main(args: Array<String>) {
    runApplication<App>(*args)
}
