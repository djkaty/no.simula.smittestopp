package com.microsoft.identity.common.adal.internal.util;

import com.google.gson.Gson;
import com.microsoft.identity.common.internal.broker.BrokerResult;
import com.microsoft.identity.common.internal.cache.ICacheRecord;
import com.microsoft.identity.common.internal.util.ICacheRecordGsonAdapter;
import e.c.c.e;
import e.c.c.w.t;
import e.c.c.x.a;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public final class JsonExtensions {
    public static Map<String, String> extractJsonObjectIntoMap(String str) {
        JSONObject jSONObject = new JSONObject(str);
        Iterator<String> keys = jSONObject.keys();
        HashMap hashMap = new HashMap();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, jSONObject.getString(next));
        }
        return hashMap;
    }

    public static BrokerResult getBrokerResultFromJsonString(String str) {
        e eVar = new e();
        eVar.a(ICacheRecord.class, new ICacheRecordGsonAdapter());
        Class cls = BrokerResult.class;
        return (BrokerResult) t.a(cls).cast(eVar.a().a(str, (Type) cls));
    }

    public static List<ICacheRecord> getICacheRecordListFromJsonString(String str) {
        e eVar = new e();
        eVar.a(ICacheRecord.class, new ICacheRecordGsonAdapter());
        return (List) eVar.a().a(str, new a<List<ICacheRecord>>() {
        }.getType());
    }

    public static String getJsonStringFromICacheRecordList(List<ICacheRecord> list) {
        return new Gson().a((Object) list, new a<List<ICacheRecord>>() {
        }.getType());
    }
}
