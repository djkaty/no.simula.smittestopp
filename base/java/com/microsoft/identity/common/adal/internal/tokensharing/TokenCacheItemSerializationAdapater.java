package com.microsoft.identity.common.adal.internal.tokensharing;

import com.microsoft.identity.common.internal.cache.ADALTokenCacheItem;
import e.c.c.h;
import e.c.c.i;
import e.c.c.j;
import e.c.c.m;
import e.c.c.n;
import e.c.c.p;
import e.c.c.q;
import e.c.c.r;
import java.lang.reflect.Type;

public final class TokenCacheItemSerializationAdapater implements i<ADALTokenCacheItem>, r<ADALTokenCacheItem> {
    public static final String TAG = "TokenCacheItemSerializationAdapater";

    private void throwIfParameterMissing(m mVar, String str) {
        if (!(mVar.a.a((Object) str) != null)) {
            throw new n(TAG + "Attribute " + str + " is missing for deserialization.");
        }
    }

    public ADALTokenCacheItem deserialize(j jVar, Type type, h hVar) {
        m c2 = jVar.c();
        throwIfParameterMissing(c2, "authority");
        throwIfParameterMissing(c2, "id_token");
        throwIfParameterMissing(c2, "foci");
        throwIfParameterMissing(c2, "refresh_token");
        String f2 = c2.a("id_token").f();
        ADALTokenCacheItem aDALTokenCacheItem = new ADALTokenCacheItem();
        aDALTokenCacheItem.setAuthority(c2.a("authority").f());
        aDALTokenCacheItem.setRawIdToken(f2);
        aDALTokenCacheItem.setFamilyClientId(c2.a("foci").f());
        aDALTokenCacheItem.setRefreshToken(c2.a("refresh_token").f());
        return aDALTokenCacheItem;
    }

    public j serialize(ADALTokenCacheItem aDALTokenCacheItem, Type type, q qVar) {
        m mVar = new m();
        mVar.a("authority", (j) new p(aDALTokenCacheItem.getAuthority()));
        mVar.a("refresh_token", (j) new p(aDALTokenCacheItem.getRefreshToken()));
        mVar.a("id_token", (j) new p(aDALTokenCacheItem.getRawIdToken()));
        mVar.a("foci", (j) new p(aDALTokenCacheItem.getFamilyClientId()));
        return mVar;
    }
}
