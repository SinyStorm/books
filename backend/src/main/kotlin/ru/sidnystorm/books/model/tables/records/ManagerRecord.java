/*
 * This file is generated by jOOQ.
 */
package ru.sidnystorm.books.model.tables.records;


import org.jooq.Field;
import org.jooq.Record1;
import org.jooq.Record5;
import org.jooq.Row5;
import org.jooq.impl.UpdatableRecordImpl;
import ru.sidnystorm.books.model.tables.Manager;

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
public class ManagerRecord extends UpdatableRecordImpl<ManagerRecord> implements Record5<Integer, String, String, String, String> {

    private static final long serialVersionUID = 732395677;

    /**
     * Setter for <code>public.manager.id</code>.
     */
    public void setId(Integer value) {
        set(0, value);
    }

    /**
     * Getter for <code>public.manager.id</code>.
     */
    public Integer getId() {
        return (Integer) get(0);
    }

    /**
     * Setter for <code>public.manager.region</code>.
     */
    public void setRegion(String value) {
        set(1, value);
    }

    /**
     * Getter for <code>public.manager.region</code>.
     */
    public String getRegion() {
        return (String) get(1);
    }

    /**
     * Setter for <code>public.manager.phone</code>.
     */
    public void setPhone(String value) {
        set(2, value);
    }

    /**
     * Getter for <code>public.manager.phone</code>.
     */
    public String getPhone() {
        return (String) get(2);
    }

    /**
     * Setter for <code>public.manager.email</code>.
     */
    public void setEmail(String value) {
        set(3, value);
    }

    /**
     * Getter for <code>public.manager.email</code>.
     */
    public String getEmail() {
        return (String) get(3);
    }

    /**
     * Setter for <code>public.manager.name</code>.
     */
    public void setName(String value) {
        set(4, value);
    }

    /**
     * Getter for <code>public.manager.name</code>.
     */
    public String getName() {
        return (String) get(4);
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
    public Row5<Integer, String, String, String, String> fieldsRow() {
        return (Row5) super.fieldsRow();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Row5<Integer, String, String, String, String> valuesRow() {
        return (Row5) super.valuesRow();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Field<Integer> field1() {
        return Manager.MANAGER.ID;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Field<String> field2() {
        return Manager.MANAGER.REGION;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Field<String> field3() {
        return Manager.MANAGER.PHONE;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Field<String> field4() {
        return Manager.MANAGER.EMAIL;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Field<String> field5() {
        return Manager.MANAGER.NAME;
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
        return getRegion();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public String component3() {
        return getPhone();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public String component4() {
        return getEmail();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public String component5() {
        return getName();
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
        return getRegion();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public String value3() {
        return getPhone();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public String value4() {
        return getEmail();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public String value5() {
        return getName();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public ManagerRecord value1(Integer value) {
        setId(value);
        return this;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public ManagerRecord value2(String value) {
        setRegion(value);
        return this;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public ManagerRecord value3(String value) {
        setPhone(value);
        return this;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public ManagerRecord value4(String value) {
        setEmail(value);
        return this;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public ManagerRecord value5(String value) {
        setName(value);
        return this;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public ManagerRecord values(Integer value1, String value2, String value3, String value4, String value5) {
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
     * Create a detached ManagerRecord
     */
    public ManagerRecord() {
        super(Manager.MANAGER);
    }

    /**
     * Create a detached, initialised ManagerRecord
     */
    public ManagerRecord(Integer id, String region, String phone, String email, String name) {
        super(Manager.MANAGER);

        set(0, id);
        set(1, region);
        set(2, phone);
        set(3, email);
        set(4, name);
    }
}
