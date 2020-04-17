package com.microsoft.azure.sdk.iot.deps.serializer;

import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import e.c.c.e;
import e.c.c.j;
import e.c.c.w.t;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

@Deprecated
public class TwinProperty {
    public static final String LAST_UPDATE_TAG = "$lastUpdated";
    public static final String LAST_UPDATE_VERSION_TAG = "$lastUpdatedVersion";
    public static final String METADATA_TAG = "$metadata";
    public static final String VERSION_TAG = "$version";
    public Object lock = new Object();
    public ConcurrentMap<String, Property> property = new ConcurrentHashMap();
    public Boolean reportMetadata = false;
    public Integer version = null;

    public class Property {
        public TwinMetadata metadata;
        public Object value;

        public Property(Object obj, Integer num) {
            this.value = obj;
            this.metadata = new TwinMetadata(num);
        }
    }

    private Map<String, Object> updateFields(Map<String, Object> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry next : map.entrySet()) {
            if (((String) next.getKey()).isEmpty()) {
                throw new IllegalArgumentException("Invalid Key on Json");
            } else if (!((String) next.getKey()).contains("$")) {
                synchronized (this.lock) {
                    if (this.property.containsKey(next.getKey())) {
                        if (next.getValue() == null) {
                            this.property.remove(next.getKey());
                            hashMap.put(next.getKey(), (Object) null);
                        } else if (!((Property) this.property.get(next.getKey())).value.equals(next.getValue())) {
                            this.property.put(next.getKey(), new Property(next.getValue(), (Integer) null));
                            hashMap.put(next.getKey(), next.getValue());
                        }
                    } else if (next.getValue() != null) {
                        this.property.put(next.getKey(), new Property(next.getValue(), (Integer) null));
                        hashMap.put(next.getKey(), next.getValue());
                    }
                }
            }
        }
        return hashMap;
    }

    private Map<String, Object> updateMetadata(Map<String, Object> map) {
        HashMap hashMap = new HashMap();
        Iterator<Map.Entry<String, Object>> it = map.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry next = it.next();
            if (((String) next.getKey()).equals("$metadata")) {
                for (Map.Entry entry : ((Map) next.getValue()).entrySet()) {
                    synchronized (this.lock) {
                        if (this.property.containsKey(entry.getKey())) {
                            String str = null;
                            Integer num = null;
                            for (Map.Entry entry2 : ((Map) entry.getValue()).entrySet()) {
                                if (((String) entry2.getKey()).equals("$lastUpdated")) {
                                    str = entry2.getValue().toString();
                                } else if (((String) entry2.getKey()).equals("$lastUpdatedVersion")) {
                                    num = Integer.valueOf((int) ((Double) entry2.getValue()).doubleValue());
                                }
                            }
                            if (((Property) this.property.get(entry.getKey())).metadata.update(str, num)) {
                                hashMap.put(entry.getKey(), entry.getValue());
                            }
                        }
                    }
                }
            }
        }
        return hashMap;
    }

    private void updateVersion(Map<String, Object> map) {
        for (Map.Entry next : map.entrySet()) {
            if (((String) next.getKey()).equals("$version")) {
                this.version = new Integer((int) ((Double) next.getValue()).doubleValue());
                return;
            }
        }
    }

    public Boolean addProperty(String str, Object obj, Integer num) {
        boolean z = false;
        if (str == null) {
            throw new IllegalArgumentException("Property key shall not be null");
        } else if (str.isEmpty()) {
            throw new IllegalArgumentException("Property key shall not be empty");
        } else if (str.length() > 128) {
            throw new IllegalArgumentException("Property key is too big for json");
        } else if (str.contains(CryptoConstants.ALIAS_SEPARATOR) || str.contains(" ") || str.contains("$")) {
            throw new IllegalArgumentException("Property key contains illegal character");
        } else if (obj == null) {
            if (this.property.containsKey(str)) {
                this.property.remove(str);
            }
            return true;
        } else {
            if (!this.property.containsKey(str) || !((Property) this.property.get(str)).value.equals(obj) || this.reportMetadata.booleanValue()) {
                z = true;
            }
            this.property.put(str, new Property(obj, num));
            return z;
        }
    }

    public void enableMetadata() {
        this.reportMetadata = true;
    }

    public Object get(String str) {
        Object access$000;
        synchronized (this.lock) {
            access$000 = this.property.containsKey(str) ? ((Property) this.property.get(str)).value : null;
        }
        return access$000;
    }

    public TwinMetadata getMetadata(String str) {
        TwinMetadata access$200;
        synchronized (this.lock) {
            access$200 = this.property.containsKey(str) ? ((Property) this.property.get(str)).metadata : null;
        }
        return access$200;
    }

    public Map<String, Object> getPropertyMap() {
        HashMap hashMap;
        synchronized (this.lock) {
            hashMap = null;
            if (!this.property.isEmpty()) {
                HashMap hashMap2 = new HashMap();
                for (Map.Entry entry : this.property.entrySet()) {
                    Object access$000 = ((Property) entry.getValue()).value;
                    if (access$000 == null) {
                        hashMap2.put(entry.getKey(), (Object) null);
                    } else {
                        hashMap2.put(entry.getKey(), access$000);
                    }
                }
                hashMap = hashMap2;
            }
        }
        return hashMap;
    }

    public Integer getVersion() {
        return this.version;
    }

    public int size() {
        return this.property.size();
    }

    public String toJson() {
        return toJsonElement().toString();
    }

    public j toJsonElement() {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        synchronized (this.lock) {
            for (Map.Entry entry : this.property.entrySet()) {
                hashMap.put(entry.getKey(), ((Property) entry.getValue()).value);
                hashMap2.put(entry.getKey(), ((Property) entry.getValue()).metadata.toJsonElement());
            }
        }
        if (this.reportMetadata.booleanValue()) {
            hashMap.put("$metadata", hashMap2);
        }
        Integer num = this.version;
        if (num != null) {
            hashMap.put("$version", num);
        }
        return ParserUtility.mapToJsonElement(hashMap);
    }

    public j update(Map<String, Object> map) {
        j jVar;
        TwinProperty twinProperty = new TwinProperty();
        synchronized (this.lock) {
            jVar = null;
            if (map != null) {
                try {
                    for (Map.Entry next : map.entrySet()) {
                        if (addProperty((String) next.getKey(), next.getValue(), (Integer) null).booleanValue()) {
                            twinProperty.property.put(next.getKey(), new Property(next.getValue(), (Integer) null));
                        }
                    }
                    if (twinProperty.size() > 0) {
                        jVar = twinProperty.toJsonElement();
                    }
                } finally {
                }
            }
        }
        return jVar;
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
        new HashMap();
        new HashMap();
        try {
            updateVersion(map);
            Map<String, Object> updateFields = updateFields(map);
            Map<String, Object> updateMetadata = updateMetadata(map);
            if (this.reportMetadata.booleanValue()) {
                for (Map.Entry next : updateMetadata.entrySet()) {
                    Property property2 = (Property) this.property.get(next.getKey());
                    if (property2 == null) {
                        updateFields.put(next.getKey(), (Object) null);
                    } else {
                        updateFields.put(next.getKey(), property2.value);
                    }
                }
            }
            if (updateFields.size() != 0 && twinChangedCallback != null) {
                twinChangedCallback.execute(updateFields);
            }
        } catch (Exception e2) {
            throw new IllegalArgumentException("Malformed Json:" + e2);
        }
    }

    public void update(String str, TwinChangedCallback twinChangedCallback) {
        try {
            Class cls = Map.class;
            update((Map<String, Object>) (Map) t.a(cls).cast(new e().a().a(str, (Type) cls)), twinChangedCallback);
        } catch (Exception e2) {
            throw new IllegalArgumentException("Malformed Json:" + e2);
        }
    }
}
