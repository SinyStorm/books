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
import ru.sidnystorm.books.model.tables.records.BookAcademRecord;

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
public class BookAcadem extends TableImpl<BookAcademRecord> {

    private static final long serialVersionUID = 2010125056;

    /**
     * The reference instance of <code>public.book_academ</code>
     */
    public static final BookAcadem BOOK_ACADEM = new BookAcadem();

    /**
     * The class holding records for this type
     */
    @Override
    public Class<BookAcademRecord> getRecordType() {
        return BookAcademRecord.class;
    }

    /**
     * The column <code>public.book_academ.id</code>.
     */
    public final TableField<BookAcademRecord, Integer> ID = createField("id", org.jooq.impl.SQLDataType.INTEGER.nullable(false).defaultValue(DSL.field("nextval('book_academ_id_seq'::regclass)", org.jooq.impl.SQLDataType.INTEGER)), this, "");

    /**
     * The column <code>public.book_academ.author</code>.
     */
    public final TableField<BookAcademRecord, String> AUTHOR = createField("author", org.jooq.impl.SQLDataType.CLOB, this, "");

    /**
     * The column <code>public.book_academ.name</code>.
     */
    public final TableField<BookAcademRecord, String> NAME = createField("name", org.jooq.impl.SQLDataType.CLOB, this, "");

    /**
     * The column <code>public.book_academ.grade</code>.
     */
    public final TableField<BookAcademRecord, String> GRADE = createField("grade", org.jooq.impl.SQLDataType.CLOB, this, "");

    /**
     * The column <code>public.book_academ.price</code>.
     */
    public final TableField<BookAcademRecord, Double> PRICE = createField("price", org.jooq.impl.SQLDataType.DOUBLE, this, "");

    /**
     * Create a <code>public.book_academ</code> table reference
     */
    public BookAcadem() {
        this(DSL.name("book_academ"), null);
    }

    /**
     * Create an aliased <code>public.book_academ</code> table reference
     */
    public BookAcadem(String alias) {
        this(DSL.name(alias), BOOK_ACADEM);
    }

    /**
     * Create an aliased <code>public.book_academ</code> table reference
     */
    public BookAcadem(Name alias) {
        this(alias, BOOK_ACADEM);
    }

    private BookAcadem(Name alias, Table<BookAcademRecord> aliased) {
        this(alias, aliased, null);
    }

    private BookAcadem(Name alias, Table<BookAcademRecord> aliased, Field<?>[] parameters) {
        super(alias, null, aliased, parameters, DSL.comment(""));
    }

    public <O extends Record> BookAcadem(Table<O> child, ForeignKey<O, BookAcademRecord> key) {
        super(child, key, BOOK_ACADEM);
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
        return Arrays.<Index>asList(Indexes.BOOK_ACADEM_PKEY);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Identity<BookAcademRecord, Integer> getIdentity() {
        return Keys.IDENTITY_BOOK_ACADEM;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public UniqueKey<BookAcademRecord> getPrimaryKey() {
        return Keys.BOOK_ACADEM_PKEY;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public List<UniqueKey<BookAcademRecord>> getKeys() {
        return Arrays.<UniqueKey<BookAcademRecord>>asList(Keys.BOOK_ACADEM_PKEY);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public BookAcadem as(String alias) {
        return new BookAcadem(DSL.name(alias), this);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public BookAcadem as(Name alias) {
        return new BookAcadem(alias, this);
    }

    /**
     * Rename this table
     */
    @Override
    public BookAcadem rename(String name) {
        return new BookAcadem(DSL.name(name), null);
    }

    /**
     * Rename this table
     */
    @Override
    public BookAcadem rename(Name name) {
        return new BookAcadem(name, null);
    }
}
