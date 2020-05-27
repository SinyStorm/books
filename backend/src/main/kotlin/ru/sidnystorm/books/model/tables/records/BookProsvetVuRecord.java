/*
 * This file is generated by jOOQ.
 */
package ru.sidnystorm.books.model.tables.records;


import org.jooq.Field;
import org.jooq.Record1;
import org.jooq.Record5;
import org.jooq.Row5;
import org.jooq.impl.UpdatableRecordImpl;
import ru.sidnystorm.books.model.tables.BookProsvetVu;

import javax.annotation.Generated;


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
public class BookProsvetVuRecord extends UpdatableRecordImpl<BookProsvetVuRecord> implements Record5<Integer, String, String, String, Double> {

    private static final long serialVersionUID = 1556024889;

    /**
     * Setter for <code>public.book_prosvet_vu.id</code>.
     */
    public void setId(Integer value) {
        set(0, value);
    }

    /**
     * Getter for <code>public.book_prosvet_vu.id</code>.
     */
    public Integer getId() {
        return (Integer) get(0);
    }

    /**
     * Setter for <code>public.book_prosvet_vu.author</code>.
     */
    public void setAuthor(String value) {
        set(1, value);
    }

    /**
     * Getter for <code>public.book_prosvet_vu.author</code>.
     */
    public String getAuthor() {
        return (String) get(1);
    }

    /**
     * Setter for <code>public.book_prosvet_vu.name</code>.
     */
    public void setName(String value) {
        set(2, value);
    }

    /**
     * Getter for <code>public.book_prosvet_vu.name</code>.
     */
    public String getName() {
        return (String) get(2);
    }

    /**
     * Setter for <code>public.book_prosvet_vu.grade</code>.
     */
    public void setGrade(String value) {
        set(3, value);
    }

    /**
     * Getter for <code>public.book_prosvet_vu.grade</code>.
     */
    public String getGrade() {
        return (String) get(3);
    }

    /**
     * Setter for <code>public.book_prosvet_vu.price</code>.
     */
    public void setPrice(Double value) {
        set(4, value);
    }

    /**
     * Getter for <code>public.book_prosvet_vu.price</code>.
     */
    public Double getPrice() {
        return (Double) get(4);
    }

    // -------------------------------------------------------------------------
    // Primary key information
    // -------------------------------------------------------------------------

    /**
     * {@inheritDoc}
     */
    @Override
    public Record1<Integer> key() {
        return (Record1) super.key();
    }

    // -------------------------------------------------------------------------
    // Record5 type implementation
    // -------------------------------------------------------------------------

    /**
     * {@inheritDoc}
     */
    @Override
    public Row5<Integer, String, String, String, Double> fieldsRow() {
        return (Row5) super.fieldsRow();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Row5<Integer, String, String, String, Double> valuesRow() {
        return (Row5) super.valuesRow();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Field<Integer> field1() {
        return BookProsvetVu.BOOK_PROSVET_VU.ID;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Field<String> field2() {
        return BookProsvetVu.BOOK_PROSVET_VU.AUTHOR;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Field<String> field3() {
        return BookProsvetVu.BOOK_PROSVET_VU.NAME;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Field<String> field4() {
        return BookProsvetVu.BOOK_PROSVET_VU.GRADE;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Field<Double> field5() {
        return BookProsvetVu.BOOK_PROSVET_VU.PRICE;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Integer component1() {
        return getId();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public String component2() {
        return getAuthor();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public String component3() {
        return getName();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public String component4() {
        return getGrade();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Double component5() {
        return getPrice();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Integer value1() {
        return getId();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public String value2() {
        return getAuthor();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public String value3() {
        return getName();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public String value4() {
        return getGrade();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Double value5() {
        return getPrice();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public BookProsvetVuRecord value1(Integer value) {
        setId(value);
        return this;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public BookProsvetVuRecord value2(String value) {
        setAuthor(value);
        return this;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public BookProsvetVuRecord value3(String value) {
        setName(value);
        return this;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public BookProsvetVuRecord value4(String value) {
        setGrade(value);
        return this;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public BookProsvetVuRecord value5(Double value) {
        setPrice(value);
        return this;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public BookProsvetVuRecord values(Integer value1, String value2, String value3, String value4, Double value5) {
        value1(value1);
        value2(value2);
        value3(value3);
        value4(value4);
        value5(value5);
        return this;
    }

    // -------------------------------------------------------------------------
    // Constructors
    // -------------------------------------------------------------------------

    /**
     * Create a detached BookProsvetVuRecord
     */
    public BookProsvetVuRecord() {
        super(BookProsvetVu.BOOK_PROSVET_VU);
    }

    /**
     * Create a detached, initialised BookProsvetVuRecord
     */
    public BookProsvetVuRecord(Integer id, String author, String name, String grade, Double price) {
        super(BookProsvetVu.BOOK_PROSVET_VU);

        set(0, id);
        set(1, author);
        set(2, name);
        set(3, grade);
        set(4, price);
    }
}
