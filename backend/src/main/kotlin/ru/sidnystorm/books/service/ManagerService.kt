package ru.sidnystorm.books.service

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service
import ru.sidnystorm.books.repository.ManagerRepository

@Service
class ManagerService @Autowired constructor(val repository: ManagerRepository) {

   fun listOptions() = repository.listOptions()

   fun find(id:Int) = repository.find(id)
}