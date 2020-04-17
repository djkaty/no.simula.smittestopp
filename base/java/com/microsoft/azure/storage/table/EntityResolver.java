package com.microsoft.azure.storage.table;

import java.util.Date;
import java.util.HashMap;

public interface EntityResolver<T> {
    T resolve(String str, String str2, Date date, HashMap<String, EntityProperty> hashMap, String str3);
}
