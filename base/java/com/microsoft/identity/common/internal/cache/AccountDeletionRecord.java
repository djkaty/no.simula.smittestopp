package com.microsoft.identity.common.internal.cache;

import com.microsoft.identity.common.internal.dto.AccountRecord;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

public class AccountDeletionRecord implements List<AccountRecord> {
    public static final String RESULT_IS_READ_ONLY = "Result is read-only";
    public final List<AccountRecord> mAccountRecordList;

    public AccountDeletionRecord(List<AccountRecord> list) {
        if (list == null) {
            this.mAccountRecordList = new ArrayList();
        } else {
            this.mAccountRecordList = list;
        }
    }

    public boolean addAll(Collection<? extends AccountRecord> collection) {
        throw new UnsupportedOperationException(RESULT_IS_READ_ONLY);
    }

    public void clear() {
        throw new UnsupportedOperationException(RESULT_IS_READ_ONLY);
    }

    public boolean contains(Object obj) {
        return this.mAccountRecordList.contains(obj);
    }

    public boolean containsAll(Collection<?> collection) {
        return this.mAccountRecordList.containsAll(collection);
    }

    public int indexOf(Object obj) {
        return this.mAccountRecordList.indexOf(obj);
    }

    public boolean isEmpty() {
        return this.mAccountRecordList.isEmpty();
    }

    public Iterator<AccountRecord> iterator() {
        return this.mAccountRecordList.iterator();
    }

    public int lastIndexOf(Object obj) {
        return this.mAccountRecordList.lastIndexOf(obj);
    }

    public ListIterator<AccountRecord> listIterator() {
        return this.mAccountRecordList.listIterator();
    }

    public boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException(RESULT_IS_READ_ONLY);
    }

    public boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException(RESULT_IS_READ_ONLY);
    }

    public int size() {
        return this.mAccountRecordList.size();
    }

    public List<AccountRecord> subList(int i2, int i3) {
        return this.mAccountRecordList.subList(i2, i3);
    }

    public Object[] toArray() {
        return this.mAccountRecordList.toArray();
    }

    public boolean addAll(int i2, Collection<? extends AccountRecord> collection) {
        throw new UnsupportedOperationException(RESULT_IS_READ_ONLY);
    }

    public AccountRecord get(int i2) {
        return this.mAccountRecordList.get(i2);
    }

    public ListIterator<AccountRecord> listIterator(int i2) {
        return this.mAccountRecordList.listIterator(i2);
    }

    public boolean remove(Object obj) {
        throw new UnsupportedOperationException(RESULT_IS_READ_ONLY);
    }

    public AccountRecord set(int i2, AccountRecord accountRecord) {
        throw new UnsupportedOperationException(RESULT_IS_READ_ONLY);
    }

    public <T> T[] toArray(T[] tArr) {
        return this.mAccountRecordList.toArray(tArr);
    }

    public boolean add(AccountRecord accountRecord) {
        throw new UnsupportedOperationException(RESULT_IS_READ_ONLY);
    }

    public AccountRecord remove(int i2) {
        throw new UnsupportedOperationException(RESULT_IS_READ_ONLY);
    }

    public void add(int i2, AccountRecord accountRecord) {
        throw new UnsupportedOperationException(RESULT_IS_READ_ONLY);
    }
}
