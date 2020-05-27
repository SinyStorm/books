/*
 * This file is generated by jOOQ.
 */
package ru.sidnystorm.books.model.tables;


import org.jooq.*;
import org.jooq.impl.DSL;
import org.jooq.impl.TableImpl;
import ru.sidnystorm.books.model.Indexes;
import ru.sidnystorm.books.model.Keys;
import ru.sidnystorm.books.model.Public;
import ru.sidnystorm.books.model.tables.records.BookProsvetBlRecord;

import javax.annotation.Generated;
import java.util.Arrays;
import java.util.List;


/**
 * This class is generated by jOOQ.
 */
@Generated(
    value = {
        "http://www.jooq.org",
        "jOOQ version:3.11.9"
    },
    comments = "This class is generated by jOOQ"
)
@SuppressWarnings({ "all", "unchecked", "rawtypes" })
public class BookProsvetBl extends TableImpl<BookProsvetBlRecord> {

    private static final long serialVersionUID = 314917983;

    /**
     * The reference instance of <code>public.book_prosvet_bl</code>
     */
    public static final BookProsvetBl BOOK_PROSVET_BL = new BookProsvetBl();

    /**
     * The class holding records for this type
     */
    @Override
    public Class<BookProsvetBlRecord> getRecordType() {
        return BookProsvetBlRecord.class;
    }

    /**
     * The column <code>public.book_prosvet_bl.id</code>.
     */
    public final TableField<BookProsvetBlRecord, Integer> ID = createField("id", org.jooq.impl.SQLDataType.INTEGER.nullable(false).defaultValue(DSL.field("nextval('book_prosvet_bl_id_seq'::regclass)", org.jooq.impl.SQLDataType.INTEGER)), this, "");

    /**
     * The column <code>public.book_prosvet_bl.author</code>.
     */
    public final TableField<BookProsvetBlRecord, String> AUTHOR = createField("author", org.jooq.impl.SQLDataType.CLOB, this, "");

    /**
     * The column <code>public.book_prosvet_bl.name</code>.
     */
    public final TableField<BookProsvetBlRecord, String> NAME = createField("name", org.jooq.impl.SQLDataType.CLOB, this, "");

    /**
     * The column <code>public.book_prosvet_bl.grade</code>.
     */
    public final TableField<BookProsvetBlRecord, String> GRADE = createField("grade", org.jooq.impl.SQLDataType.CLOB, this, "");

    /**
     * The column <code>public.book_prosvet_bl.price</code>.
     */
    public final TableField<BookProsvetBlRecord, Double> PRICE = createField("price", org.jooq.impl.SQLDataType.DOUBLE, this, "");

    /**
     * Create a <code>public.book_prosvet_bl</code> table reference
     */
    public BookProsvetBl() {
        this(DSL.name("book_prosvet_bl"), null);
    }

    /**
     * Create an aliased <code>public.book_prosvet_bl</code> table reference
     */
    public BookProsvetBl(String alias) {
        this(DSL.name(alias), BOOK_PROSVET_BL);
    }

    /**
     * Create an aliased <code>public.book_prosvet_bl</code> table reference
     */
    public BookProsvetBl(Name alias) {
        this(alias, BOOK_PROSVET_BL);
    }

    private BookProsvetBl(Name alias, Table<BookProsvetBlRecord> aliased) {
        this(alias, aliased, null);
    }

    private BookProsvetBl(Name alias, Table<BookProsvetBlRecord> aliased, Field<?>[] parameters) {
        super(alias, null, aliased, parameters, DSL.comment(""));
    }

    public <O extends Record> BookProsvetBl(Table<O> child, ForeignKey<O, BookProsvetBlRecord> key) {
        super(child, key, BOOK_PROSVET_BL);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Schema getSchema() {
        return Public.PUBLIC;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public List<Index> getIndexes() {
        return Arrays.<Index>asList(Indexes.BOOK_PROSVET_BL_PKEY);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Identity<BookProsvetBlRecord, Integer> getIdentity() {
        return Keys.IDENTITY_BOOK_PROSVET_BL;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public UniqueKey<BookProsvetBlRecord> getPrimaryKey() {
        return Keys.BOOK_PROSVET_BL_PKEY;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public List<UniqueKey<BookProsvetBlRecord>> getKeys() {
        return Arrays.<UniqueKey<BookProsvetBlRecord>>asList(Keys.BOOK_PROSVET_BL_PKEY);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public BookProsvetBl as(String alias) {
        return new BookProsvetBl(DSL.name(alias), this);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public BookProsvetBl as(Name alias) {
        return new BookProsvetBl(alias, this);
    }

    /**
     * Rename this table
     */
    @Override
    public BookProsvetBl rename(String name) {
        return new BookProsvetBl(DSL.name(name), null);
    }

    /**
     * Rename this table
     */
    @Override
    public BookProsvetBl rename(Name name) {
        return new BookProsvetBl(name, null);
    }
}
