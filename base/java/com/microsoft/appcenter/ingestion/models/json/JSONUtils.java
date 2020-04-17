package com.microsoft.appcenter.ingestion.models.json;

import com.microsoft.appcenter.ingestion.models.Model;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONStringer;

public class JSONUtils {
    public static <M extends Model> List<M> readArray(JSONObject jSONObject, String str, ModelFactory<M> modelFactory) {
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray == null) {
            return null;
        }
        List<M> createList = modelFactory.createList(optJSONArray.length());
        for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
            JSONObject jSONObject2 = optJSONArray.getJSONObject(i2);
            M create = modelFactory.create();
            create.read(jSONObject2);
            createList.add(create);
        }
        return createList;
    }

    public static Boolean readBoolean(JSONObject jSONObject, String str) {
        if (jSONObject.has(str)) {
            return Boolean.valueOf(jSONObject.getBoolean(str));
        }
        return null;
    }

    public static Integer readInteger(JSONObject jSONObject, String str) {
        if (jSONObject.has(str)) {
            return Integer.valueOf(jSONObject.getInt(str));
        }
        return null;
    }

    public static Long readLong(JSONObject jSONObject, String str) {
        if (jSONObject.has(str)) {
            return Long.valueOf(jSONObject.getLong(str));
        }
        return null;
    }

    public static Map<String, String> readMap(JSONObject jSONObject, String str) {
        JSONObject optJSONObject = jSONObject.optJSONObject(str);
        if (optJSONObject == null) {
            return null;
        }
        HashMap hashMap = new HashMap(optJSONObject.length());
        Iterator<String> keys = optJSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, optJSONObject.getString(next));
        }
        return hashMap;
    }

    public static List<String> readStringArray(JSONObject jSONObject, String str) {
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(optJSONArray.length());
        for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
            arrayList.add(optJSONArray.getString(i2));
        }
        return arrayList;
    }

    public static void write(JSONStringer jSONStringer, String str, Object obj) {
        if (obj != null) {
            jSONStringer.key(str).value(obj);
        }
    }

    public static void writeArray(JSONStringer jSONStringer, String str, List<? extends Model> list) {
        if (list != null) {
            jSONStringer.key(str).array();
            for (Model write : list) {
                jSONStringer.object();
                write.write(jSONStringer);
                jSONStringer.endObject();
            }
            jSONStringer.endArray();
        }
    }

    public static void writeMap(JSONStringer jSONStringer, String str, Map<String, String> map) {
        if (map != null) {
            jSONStringer.key(str).object();
            for (Map.Entry next : map.entrySet()) {
                jSONStringer.key((String) next.getKey()).value(next.getValue());
            }
            jSONStringer.endObject();
        }
    }

    public static void writeStringArray(JSONStringer jSONStringer, String str, List<String> list) {
        if (list != null) {
            jSONStringer.key(str).array();
            for (String value : list) {
                jSONStringer.value(value);
            }
            jSONStringer.endArray();
        }
    }
}
