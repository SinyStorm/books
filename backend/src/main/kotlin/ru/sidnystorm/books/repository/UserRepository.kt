package ru.sidnystorm.books.repository

import org.jooq.*
import org.jooq.impl.DSL.noCondition
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Repository
import ru.sidnystorm.books.dto.Manager
import ru.sidnystorm.books.dto.User
import ru.sidnystorm.books.dto.UserInfo
import ru.sidnystorm.books.dto.UserRole
import ru.sidnystorm.books.model.Tables.MANAGER
import ru.sidnystorm.books.model.enums.Role
import ru.sidnystorm.books.model.tables.Users.USERS
import ru.sidnystorm.books.model.tables.records.UsersRecord
import ru.sidnystorm.books.util.filterEqual

@Repository
class UserRepository @Autowired constructor(private val dsl: DSLContext) {

   fun findAuth(login:String):User? = dsl.select(USERS.LOGIN, USERS.PASSWORD, USERS.ROLE).from(USERS).where(USERS.LOGIN.eq(login)).fetchOne(this::mapAuth)
   
   fun find(user:User):User? {
      val t = dsl.select()
            .from(USERS)
            .leftJoin(MANAGER).on(MANAGER.ID.eq(USERS.MANAGER))
            .where(getWherePart(user))
      return t.fetchOne(this::map)
   }

   fun insert(entity: User): Int = dsl.insertInto(USERS).set(dsl.newRecord(USERS, map(entity))).returning().fetchOne().get(USERS.ID)

   fun update(login: String, info: UserInfo): Int = dsl.update(USERS).set(map(info, UsersRecord())).where(USERS.LOGIN.eq(login)).execute()

   fun mapAuth(record: Record): User = User().apply {
      login = record.get(USERS.LOGIN)
      password = record.get(USERS.PASSWORD)
      role = UserRole.valueOf(record.get(USERS.ROLE).name)
   }

   fun map(record: Record): User = User().apply {
      id = record.get(USERS.ID)
      login = record.get(USERS.LOGIN)
      password = record.get(USERS.PASSWORD)
      role = UserRole.valueOf(record.get(USERS.ROLE).name)
      userInfo = UserInfo().apply {
         name = record.get(USERS.NAME)
         address = record.get(USERS.ADDRESS)
         inn = record.get(USERS.INN)
         kpp = record.get(USERS.KPP)
         ogrn = record.get(USERS.OGRN)
         okpo = record.get(USERS.OKPO)
         bank = record.get(USERS.BANK)
         bik = record.get(USERS.BIK)
         bankAddress = record.get(USERS.BANK_ADDRESS)
         checkingAccount = record.get(USERS.CHECKING_ACCOUNT)
         correspondentAccount = record.get(USERS.CORRESPONDENT_ACCOUNT)
         phone = record.get(USERS.PHONE)
         email = record.get(USERS.EMAIL)
         manager = Manager().apply {
            id = record.get(MANAGER.ID)
            region = record.get(MANAGER.REGION)
            phone = record.get(MANAGER.PHONE)
            email = record.get(MANAGER.EMAIL)
            name = record.get(MANAGER.NAME)
         }
      }
   }

   fun map(entity: User) = UsersRecord().apply {
      set(USERS.LOGIN, entity.login)
      set(USERS.PASSWORD, entity.password)
      set(USERS.ROLE, Role.valueOf(entity.role.name))
      entity.userInfo?.let { map(entity.userInfo!!, this) }
   }

   fun map(entity: UserInfo, record: UsersRecord) = record.apply {
      record.set(USERS.NAME, entity.name)
      record.set(USERS.ADDRESS, entity.address)
      record.set(USERS.INN, entity.inn)
      record.set(USERS.KPP, entity.kpp)
      record.set(USERS.OGRN, entity.ogrn)
      record.set(USERS.OKPO, entity.okpo)
      record.set(USERS.BANK, entity.bank)
      record.set(USERS.BIK, entity.bik)
      record.set(USERS.BANK_ADDRESS, entity.bankAddress)
      record.set(USERS.CHECKING_ACCOUNT, entity.checkingAccount)
      record.set(USERS.CORRESPONDENT_ACCOUNT, entity.correspondentAccount)
      record.set(USERS.PHONE, entity.phone)
      record.set(USERS.EMAIL, entity.email)
      record.set(USERS.MANAGER, entity.manager?.id)
   }

   fun getWherePart(entity: User): Condition {
      return noCondition()
            .filterEqual(entity.login, USERS.LOGIN)
            .filterEqual(entity.id, USERS.ID)
   }
}