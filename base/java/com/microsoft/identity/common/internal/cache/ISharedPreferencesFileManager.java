package com.microsoft.identity.common.internal.cache;

import java.util.Map;

public interface ISharedPreferencesFileManager {
    void clear();

    boolean contains(String str);

    Map<String, String> getAll();

    String getSharedPreferencesFileName();

    String getString(String str);

    void putString(String str, String str2);

    void remove(String str);
}
