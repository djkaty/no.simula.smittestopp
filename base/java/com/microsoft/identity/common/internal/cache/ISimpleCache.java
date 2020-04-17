package com.microsoft.identity.common.internal.cache;

import java.util.List;

public interface ISimpleCache<T> {
    boolean clear();

    List<T> getAll();

    boolean insert(T t);

    boolean remove(T t);
}
