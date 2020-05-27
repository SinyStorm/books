package ru.sidnystorm.books.config

import org.jooq.DSLContext
import org.jooq.SQLDialect
import org.jooq.conf.Settings
import org.jooq.impl.DataSourceConnectionProvider
import org.jooq.impl.DefaultConfiguration
import org.jooq.impl.DefaultDSLContext
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.beans.factory.annotation.Qualifier
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import org.springframework.jdbc.datasource.TransactionAwareDataSourceProxy
import javax.sql.DataSource

@Configuration
class DBConfig {
   @Autowired
   lateinit var dataSource: DataSource

   @Bean
   fun connectionProvider(): DataSourceConnectionProvider = DataSourceConnectionProvider(
         TransactionAwareDataSourceProxy(dataSource)
   )

   @Bean
   fun dsl(@Qualifier("jooqConfig") config: org.jooq.Configuration): DSLContext = DefaultDSLContext(config.derive(dataSource))

   @Bean
   fun jooqConfig(@Qualifier("connectionProvider") provider: DataSourceConnectionProvider): org.jooq.Configuration {
      val settings = Settings()
            .withFetchWarnings(false)
            .withRenderSchema(false)

      return DefaultConfiguration()
            .set(provider)
            .derive(SQLDialect.POSTGRES_10)
            .derive(settings)
   }
}