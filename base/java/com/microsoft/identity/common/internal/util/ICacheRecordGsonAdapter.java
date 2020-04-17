package com.microsoft.identity.common.internal.util;

import com.google.gson.internal.bind.TreeTypeAdapter;
import com.microsoft.identity.common.internal.cache.CacheRecord;
import com.microsoft.identity.common.internal.cache.ICacheRecord;
import e.c.c.h;
import e.c.c.i;
import e.c.c.j;
import java.lang.reflect.Type;

public class ICacheRecordGsonAdapter implements i<ICacheRecord> {
    public ICacheRecord deserialize(j jVar, Type type, h hVar) {
        return (ICacheRecord) ((TreeTypeAdapter.b) hVar).a(jVar, (Type) CacheRecord.class);
    }
}
