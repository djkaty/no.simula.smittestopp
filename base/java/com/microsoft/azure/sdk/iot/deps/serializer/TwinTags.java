package com.microsoft.azure.sdk.iot.deps.serializer;

import e.c.c.e;
import e.c.c.j;
import e.c.c.m;
import java.util.HashMap;
import java.util.Map;

@Deprecated
public class TwinTags {
    public static final String METADATA_TAG = "$metadata";
    public static final String VERSION_TAG = "$version";
    public Map<String, Object> tags = new HashMap();

    private void addProperty(m mVar, String str, Object obj) {
        if (obj instanceof Number) {
            mVar.a(str, mVar.a((Object) (Number) obj));
        } else if (obj instanceof Boolean) {
            mVar.a(str, mVar.a((Object) (Boolean) obj));
        } else if (obj instanceof Character) {
            mVar.a(str, mVar.a((Object) (Character) obj));
        } else if (obj.getClass().isLocalClass() || obj.getClass().isArray()) {
            throw new IllegalArgumentException("Type not supported");
        } else {
            mVar.a(str, mVar.a((Object) obj.toString()));
        }
    }

    private synchronized Map<String, Object> updateFromJson(Map<String, Object> map, Map<String, Object> map2) {
        HashMap hashMap;
        hashMap = new HashMap();
        for (Map.Entry next : map.entrySet()) {
            String str = (String) next.getKey();
            Object value = next.getValue();
            Object obj = map2.get(str);
            if (!map2.containsKey(str)) {
                if (value != null) {
                    map2.put(str, value);
                    hashMap.put(str, value);
                }
            } else if (value == null) {
                map2.remove(str);
                hashMap.put(str, (Object) null);
            } else if (!(value instanceof Map)) {
                map2.put(str, value);
                hashMap.put(str, value);
            } else if (obj instanceof Map) {
                Map<String, Object> updateFromJson = updateFromJson((Map) value, (Map) obj);
                if (updateFromJson != null) {
                    hashMap.put(str, updateFromJson);
                }
            } else {
                map2.put(str, value);
                hashMap.put(str, value);
            }
        }
        if (hashMap.size() == 0) {
            hashMap = null;
        }
        return hashMap;
    }

    private synchronized j updateFromMap(Map<String, Object> map, Map<String, Object> map2) {
        m mVar;
        mVar = new m();
        for (Map.Entry next : map.entrySet()) {
            String str = (String) next.getKey();
            Object value = next.getValue();
            Object obj = map2.get(str);
            if (value == null) {
                map2.remove(str);
                mVar.a(str, (j) null);
            } else if (!map2.containsKey(str)) {
                if (value instanceof Map) {
                    map2.put(str, new HashMap());
                    mVar.a(str, updateFromMap((Map) value, (Map) map2.get(str)));
                } else {
                    map2.put(str, value);
                    addProperty(mVar, str, value);
                }
            } else if (value instanceof Map) {
                if (!(obj instanceof Map)) {
                    map2.put(str, new HashMap());
                }
                j updateFromMap = updateFromMap((Map) value, (Map) map2.get(str));
                if (updateFromMap != null && !updateFromMap.toString().equals("{}")) {
                    mVar.a(str, updateFromMap);
                }
            } else if (!value.equals(obj)) {
                map2.put(str, value);
                addProperty(mVar, str, value);
            }
        }
        return mVar;
    }

    public synchronized Map<String, Object> getMap() {
        return this.tags;
    }

    public String toJson() {
        return new e().a().a((Object) this.tags);
    }

    public j toJsonElement() {
        return new e().a().b(this.tags);
    }

    public synchronized j update(Map<String, Object> map) {
        j updateFromMap = updateFromMap(map, this.tags);
        if (updateFromMap == null || updateFromMap.toString().equals("{}")) {
            return null;
        }
        return updateFromMap;
    }

    public void validate(Map<String, Object> map) {
        if (map != null) {
            for (Map.Entry next : map.entrySet()) {
                if (((String) next.getKey()).equals("$metadata")) {
                    if (next.getValue() instanceof Map) {
                        ParserUtility.validateMap((Map) next.getValue());
                    }
                } else if (!((String) next.getKey()).equals("$version") && (next.getValue() instanceof Map)) {
                    ParserUtility.validateMap((Map) next.getValue());
                }
            }
            return;
        }
        throw new IllegalArgumentException("property cannot be null");
    }

    public void update(Map<String, Object> map, TwinChangedCallback twinChangedCallback) {
        Map<String, Object> updateFromJson = updateFromJson(map, this.tags);
        if (updateFromJson != null && twinChangedCallback != null) {
            twinChangedCallback.execute(updateFromJson);
        }
    }
}
