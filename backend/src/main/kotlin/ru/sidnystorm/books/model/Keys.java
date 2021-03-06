/*
 * This file is generated by jOOQ.
 */
package ru.sidnystorm.books.model;


import org.jooq.ForeignKey;
import org.jooq.Identity;
import org.jooq.UniqueKey;
import org.jooq.impl.Internal;
import ru.sidnystorm.books.model.tables.*;
import ru.sidnystorm.books.model.tables.records.*;

import javax.annotation.Generated;


/**
 * A class modelling foreign key relationships and constraints of tables of 
 * the <code>public</code> schema.
 */
@Generated(
    value = {
        "http://www.jooq.org",
        "jOOQ version:3.11.9"
    },
    comments = "This class is generated by jOOQ"
)
@SuppressWarnings({ "all", "unchecked", "rawtypes" })
public class Keys {

    // -------------------------------------------------------------------------
    // IDENTITY definitions
    // -------------------------------------------------------------------------

    public static final Identity<BookAcademRecord, Integer> IDENTITY_BOOK_ACADEM = Identities0.IDENTITY_BOOK_ACADEM;
    public static final Identity<BookBinomRecord, Integer> IDENTITY_BOOK_BINOM = Identities0.IDENTITY_BOOK_BINOM;
    public static final Identity<BookDrofaRecord, Integer> IDENTITY_BOOK_DROFA = Identities0.IDENTITY_BOOK_DROFA;
    public static final Identity<BookProsvetBlRecord, Integer> IDENTITY_BOOK_PROSVET_BL = Identities0.IDENTITY_BOOK_PROSVET_BL;
    public static final Identity<BookProsvetFpRecord, Integer> IDENTITY_BOOK_PROSVET_FP = Identities0.IDENTITY_BOOK_PROSVET_FP;
    public static final Identity<BookProsvetMeRecord, Integer> IDENTITY_BOOK_PROSVET_ME = Identities0.IDENTITY_BOOK_PROSVET_ME;
    public static final Identity<BookProsvetShRecord, Integer> IDENTITY_BOOK_PROSVET_SH = Identities0.IDENTITY_BOOK_PROSVET_SH;
    public static final Identity<BookProsvetVuRecord, Integer> IDENTITY_BOOK_PROSVET_VU = Identities0.IDENTITY_BOOK_PROSVET_VU;
    public static final Identity<BookRuwordRecord, Integer> IDENTITY_BOOK_RUWORD = Identities0.IDENTITY_BOOK_RUWORD;
    public static final Identity<BookVentanaRecord, Integer> IDENTITY_BOOK_VENTANA = Identities0.IDENTITY_BOOK_VENTANA;
    public static final Identity<BookXxiRecord, Integer> IDENTITY_BOOK_XXI = Identities0.IDENTITY_BOOK_XXI;
    public static final Identity<ManagerRecord, Integer> IDENTITY_MANAGER = Identities0.IDENTITY_MANAGER;
    public static final Identity<OrderRecord, Integer> IDENTITY_ORDER = Identities0.IDENTITY_ORDER;
    public static final Identity<OrderBookRecord, Integer> IDENTITY_ORDER_BOOK = Identities0.IDENTITY_ORDER_BOOK;
    public static final Identity<PublisherRecord, Integer> IDENTITY_PUBLISHER = Identities0.IDENTITY_PUBLISHER;
    public static final Identity<UsersRecord, Integer> IDENTITY_USERS = Identities0.IDENTITY_USERS;

    // -------------------------------------------------------------------------
    // UNIQUE and PRIMARY KEY definitions
    // -------------------------------------------------------------------------

    public static final UniqueKey<BookAcademRecord> BOOK_ACADEM_PKEY = UniqueKeys0.BOOK_ACADEM_PKEY;
    public static final UniqueKey<BookBinomRecord> BOOK_BINOM_PKEY = UniqueKeys0.BOOK_BINOM_PKEY;
    public static final UniqueKey<BookDrofaRecord> BOOK_DROFA_PKEY = UniqueKeys0.BOOK_DROFA_PKEY;
    public static final UniqueKey<BookProsvetBlRecord> BOOK_PROSVET_BL_PKEY = UniqueKeys0.BOOK_PROSVET_BL_PKEY;
    public static final UniqueKey<BookProsvetFpRecord> BOOK_PROSVET_PKEY = UniqueKeys0.BOOK_PROSVET_PKEY;
    public static final UniqueKey<BookProsvetMeRecord> BOOK_PROSVET_ME_PKEY = UniqueKeys0.BOOK_PROSVET_ME_PKEY;
    public static final UniqueKey<BookProsvetShRecord> BOOK_PROSVET_SH_PKEY = UniqueKeys0.BOOK_PROSVET_SH_PKEY;
    public static final UniqueKey<BookProsvetVuRecord> BOOK_PROSVET_VU_PKEY = UniqueKeys0.BOOK_PROSVET_VU_PKEY;
    public static final UniqueKey<BookRuwordRecord> BOOK_RUWORD_PKEY = UniqueKeys0.BOOK_RUWORD_PKEY;
    public static final UniqueKey<BookVentanaRecord> BOOK_VENTANA_PKEY = UniqueKeys0.BOOK_VENTANA_PKEY;
    public static final UniqueKey<BookXxiRecord> BOOK_XXI_PKEY = UniqueKeys0.BOOK_XXI_PKEY;
    public static final UniqueKey<ManagerRecord> MANAGER_PKEY = UniqueKeys0.MANAGER_PKEY;
    public static final UniqueKey<OrderRecord> ORDER_PKEY = UniqueKeys0.ORDER_PKEY;
    public static final UniqueKey<OrderBookRecord> ORDER_BOOK_PKEY = UniqueKeys0.ORDER_BOOK_PKEY;
    public static final UniqueKey<PublisherRecord> PUBLISHER_PKEY = UniqueKeys0.PUBLISHER_PKEY;
    public static final UniqueKey<UsersRecord> USERS_PKEY = UniqueKeys0.USERS_PKEY;
    public static final UniqueKey<UsersRecord> USERS_LOGIN_KEY = UniqueKeys0.USERS_LOGIN_KEY;

    // -------------------------------------------------------------------------
    // FOREIGN KEY definitions
    // -------------------------------------------------------------------------

    public static final ForeignKey<OrderRecord, UsersRecord> ORDER__ORDER_USER = ForeignKeys0.ORDER__ORDER_USER;
    public static final ForeignKey<OrderRecord, PublisherRecord> ORDER__ORDER_PUBLIHER = ForeignKeys0.ORDER__ORDER_PUBLIHER;
    public static final ForeignKey<OrderBookRecord, OrderRecord> ORDER_BOOK__ORDER_BOOK_OORDER = ForeignKeys0.ORDER_BOOK__ORDER_BOOK_OORDER;
    public static final ForeignKey<UsersRecord, ManagerRecord> USERS__USERS_MANAGER = ForeignKeys0.USERS__USERS_MANAGER;

    // -------------------------------------------------------------------------
    // [#1459] distribute members to avoid static initialisers > 64kb
    // -------------------------------------------------------------------------

    private static class Identities0 {
        public static Identity<BookAcademRecord, Integer> IDENTITY_BOOK_ACADEM = Internal.createIdentity(BookAcadem.BOOK_ACADEM, BookAcadem.BOOK_ACADEM.ID);
        public static Identity<BookBinomRecord, Integer> IDENTITY_BOOK_BINOM = Internal.createIdentity(BookBinom.BOOK_BINOM, BookBinom.BOOK_BINOM.ID);
        public static Identity<BookDrofaRecord, Integer> IDENTITY_BOOK_DROFA = Internal.createIdentity(BookDrofa.BOOK_DROFA, BookDrofa.BOOK_DROFA.ID);
        public static Identity<BookProsvetBlRecord, Integer> IDENTITY_BOOK_PROSVET_BL = Internal.createIdentity(BookProsvetBl.BOOK_PROSVET_BL, BookProsvetBl.BOOK_PROSVET_BL.ID);
        public static Identity<BookProsvetFpRecord, Integer> IDENTITY_BOOK_PROSVET_FP = Internal.createIdentity(BookProsvetFp.BOOK_PROSVET_FP, BookProsvetFp.BOOK_PROSVET_FP.ID);
        public static Identity<BookProsvetMeRecord, Integer> IDENTITY_BOOK_PROSVET_ME = Internal.createIdentity(BookProsvetMe.BOOK_PROSVET_ME, BookProsvetMe.BOOK_PROSVET_ME.ID);
        public static Identity<BookProsvetShRecord, Integer> IDENTITY_BOOK_PROSVET_SH = Internal.createIdentity(BookProsvetSh.BOOK_PROSVET_SH, BookProsvetSh.BOOK_PROSVET_SH.ID);
        public static Identity<BookProsvetVuRecord, Integer> IDENTITY_BOOK_PROSVET_VU = Internal.createIdentity(BookProsvetVu.BOOK_PROSVET_VU, BookProsvetVu.BOOK_PROSVET_VU.ID);
        public static Identity<BookRuwordRecord, Integer> IDENTITY_BOOK_RUWORD = Internal.createIdentity(BookRuword.BOOK_RUWORD, BookRuword.BOOK_RUWORD.ID);
        public static Identity<BookVentanaRecord, Integer> IDENTITY_BOOK_VENTANA = Internal.createIdentity(BookVentana.BOOK_VENTANA, BookVentana.BOOK_VENTANA.ID);
        public static Identity<BookXxiRecord, Integer> IDENTITY_BOOK_XXI = Internal.createIdentity(BookXxi.BOOK_XXI, BookXxi.BOOK_XXI.ID);
        public static Identity<ManagerRecord, Integer> IDENTITY_MANAGER = Internal.createIdentity(Manager.MANAGER, Manager.MANAGER.ID);
        public static Identity<OrderRecord, Integer> IDENTITY_ORDER = Internal.createIdentity(Order.ORDER, Order.ORDER.ID);
        public static Identity<OrderBookRecord, Integer> IDENTITY_ORDER_BOOK = Internal.createIdentity(OrderBook.ORDER_BOOK, OrderBook.ORDER_BOOK.ID);
        public static Identity<PublisherRecord, Integer> IDENTITY_PUBLISHER = Internal.createIdentity(Publisher.PUBLISHER, Publisher.PUBLISHER.ID);
        public static Identity<UsersRecord, Integer> IDENTITY_USERS = Internal.createIdentity(Users.USERS, Users.USERS.ID);
    }

    private static class UniqueKeys0 {
        public static final UniqueKey<BookAcademRecord> BOOK_ACADEM_PKEY = Internal.createUniqueKey(BookAcadem.BOOK_ACADEM, "book_academ_pkey", BookAcadem.BOOK_ACADEM.ID);
        public static final UniqueKey<BookBinomRecord> BOOK_BINOM_PKEY = Internal.createUniqueKey(BookBinom.BOOK_BINOM, "book_binom_pkey", BookBinom.BOOK_BINOM.ID);
        public static final UniqueKey<BookDrofaRecord> BOOK_DROFA_PKEY = Internal.createUniqueKey(BookDrofa.BOOK_DROFA, "book_drofa_pkey", BookDrofa.BOOK_DROFA.ID);
        public static final UniqueKey<BookProsvetBlRecord> BOOK_PROSVET_BL_PKEY = Internal.createUniqueKey(BookProsvetBl.BOOK_PROSVET_BL, "book_prosvet_bl_pkey", BookProsvetBl.BOOK_PROSVET_BL.ID);
        public static final UniqueKey<BookProsvetFpRecord> BOOK_PROSVET_PKEY = Internal.createUniqueKey(BookProsvetFp.BOOK_PROSVET_FP, "book_prosvet_pkey", BookProsvetFp.BOOK_PROSVET_FP.ID);
        public static final UniqueKey<BookProsvetMeRecord> BOOK_PROSVET_ME_PKEY = Internal.createUniqueKey(BookProsvetMe.BOOK_PROSVET_ME, "book_prosvet_me_pkey", BookProsvetMe.BOOK_PROSVET_ME.ID);
        public static final UniqueKey<BookProsvetShRecord> BOOK_PROSVET_SH_PKEY = Internal.createUniqueKey(BookProsvetSh.BOOK_PROSVET_SH, "book_prosvet_sh_pkey", BookProsvetSh.BOOK_PROSVET_SH.ID);
        public static final UniqueKey<BookProsvetVuRecord> BOOK_PROSVET_VU_PKEY = Internal.createUniqueKey(BookProsvetVu.BOOK_PROSVET_VU, "book_prosvet_vu_pkey", BookProsvetVu.BOOK_PROSVET_VU.ID);
        public static final UniqueKey<BookRuwordRecord> BOOK_RUWORD_PKEY = Internal.createUniqueKey(BookRuword.BOOK_RUWORD, "book_ruword_pkey", BookRuword.BOOK_RUWORD.ID);
        public static final UniqueKey<BookVentanaRecord> BOOK_VENTANA_PKEY = Internal.createUniqueKey(BookVentana.BOOK_VENTANA, "book_ventana_pkey", BookVentana.BOOK_VENTANA.ID);
        public static final UniqueKey<BookXxiRecord> BOOK_XXI_PKEY = Internal.createUniqueKey(BookXxi.BOOK_XXI, "book_xxi_pkey", BookXxi.BOOK_XXI.ID);
        public static final UniqueKey<ManagerRecord> MANAGER_PKEY = Internal.createUniqueKey(Manager.MANAGER, "manager_pkey", Manager.MANAGER.ID);
        public static final UniqueKey<OrderRecord> ORDER_PKEY = Internal.createUniqueKey(Order.ORDER, "order_pkey", Order.ORDER.ID);
        public static final UniqueKey<OrderBookRecord> ORDER_BOOK_PKEY = Internal.createUniqueKey(OrderBook.ORDER_BOOK, "order_book_pkey", OrderBook.ORDER_BOOK.ID);
        public static final UniqueKey<PublisherRecord> PUBLISHER_PKEY = Internal.createUniqueKey(Publisher.PUBLISHER, "publisher_pkey", Publisher.PUBLISHER.ID);
        public static final UniqueKey<UsersRecord> USERS_PKEY = Internal.createUniqueKey(Users.USERS, "users_pkey", Users.USERS.ID);
        public static final UniqueKey<UsersRecord> USERS_LOGIN_KEY = Internal.createUniqueKey(Users.USERS, "users_login_key", Users.USERS.LOGIN);
    }

    private static class ForeignKeys0 {
        public static final ForeignKey<OrderRecord, UsersRecord> ORDER__ORDER_USER = Internal.createForeignKey(Keys.USERS_PKEY, Order.ORDER, "order__order_user", Order.ORDER.USER);
        public static final ForeignKey<OrderRecord, PublisherRecord> ORDER__ORDER_PUBLIHER = Internal.createForeignKey(Keys.PUBLISHER_PKEY, Order.ORDER, "order__order_publiher", Order.ORDER.PUBLISHER);
        public static final ForeignKey<OrderBookRecord, OrderRecord> ORDER_BOOK__ORDER_BOOK_OORDER = Internal.createForeignKey(Keys.ORDER_PKEY, OrderBook.ORDER_BOOK, "order_book__order_book_oorder", OrderBook.ORDER_BOOK.ORDER);
        public static final ForeignKey<UsersRecord, ManagerRecord> USERS__USERS_MANAGER = Internal.createForeignKey(Keys.MANAGER_PKEY, Users.USERS, "users__users_manager", Users.USERS.MANAGER);
    }
}
