package com.microsoft.identity.common.adal.internal.tokensharing;

import com.google.gson.Gson;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.internal.cache.ADALTokenCacheItem;
import e.c.c.e;
import e.c.c.n;
import e.c.c.v.c;
import e.c.c.w.t;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public final class SSOStateSerializer {
    public static final Gson GSON;
    @c("tokenCacheItems")
    public final List<ADALTokenCacheItem> mTokenCacheItems;
    @c("version")
    public final int version;

    static {
        e eVar = new e();
        eVar.a(ADALTokenCacheItem.class, new TokenCacheItemSerializationAdapater());
        GSON = eVar.a();
    }

    public SSOStateSerializer() {
        this.version = 1;
        this.mTokenCacheItems = new ArrayList();
    }

    public static ADALTokenCacheItem deserialize(String str) {
        return new SSOStateSerializer().internalDeserialize(str);
    }

    private ADALTokenCacheItem getTokenItem() {
        List<ADALTokenCacheItem> list = this.mTokenCacheItems;
        if (list != null && !list.isEmpty()) {
            return this.mTokenCacheItems.get(0);
        }
        throw new ClientException(ClientException.TOKEN_CACHE_ITEM_NOT_FOUND, "There is no token cache item in the SSOStateContainer.");
    }

    private int getVersion() {
        return 1;
    }

    private ADALTokenCacheItem internalDeserialize(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.getInt("version") == getVersion()) {
                Class cls = SSOStateSerializer.class;
                return ((SSOStateSerializer) t.a(cls).cast(GSON.a(str, (Type) cls))).getTokenItem();
            }
            throw new ClientException(ClientException.TOKEN_SHARING_DESERIALIZATION_ERROR, "Fail to deserialize because the blob version is incompatible. The version of the serializedBlob is " + jSONObject.getInt("version") + ". And the target class version is " + getVersion());
        } catch (n | JSONException e2) {
            throw new ClientException(ClientException.TOKEN_SHARING_DESERIALIZATION_ERROR, e2.getMessage());
        }
    }

    private String internalSerialize() {
        return GSON.a((Object) this);
    }

    public static String serialize(ADALTokenCacheItem aDALTokenCacheItem) {
        return new SSOStateSerializer(aDALTokenCacheItem).internalSerialize();
    }

    public SSOStateSerializer(ADALTokenCacheItem aDALTokenCacheItem) {
        this.version = 1;
        ArrayList arrayList = new ArrayList();
        this.mTokenCacheItems = arrayList;
        if (aDALTokenCacheItem != null) {
            arrayList.add(aDALTokenCacheItem);
            return;
        }
        throw new IllegalArgumentException("tokenItem is null");
    }
}
