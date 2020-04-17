package com.microsoft.azure.sdk.iot.deps.serializer;

import com.google.gson.Gson;
import com.google.gson.internal.Excluder;
import e.c.c.e;
import e.c.c.j;
import e.c.c.m;
import e.c.c.s;
import e.c.c.w.t;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

@Deprecated
public class TwinParser {
    public static final String DESIRED_TAG = "desired";
    public static final int MAX_MAP_LEVEL = 5;
    public static final String PROPERTIES_TAG = "properties";
    public static final String REPORTED_TAG = "reported";
    public static final String TAGS_TAG = "tags";
    public static TwinChangedCallback onTagsCallback;
    public RegisterManagerParser manager;
    public TwinChangedCallback onDesiredCallback;
    public TwinChangedCallback onReportedCallback;
    public TwinProperties properties;
    public TwinTags tags;

    public TwinParser() {
        this.onDesiredCallback = null;
        this.onReportedCallback = null;
        this.tags = null;
        this.properties = new TwinProperties();
        this.manager = new RegisterManagerParser();
    }

    private j innerUpdateDesiredProperty(Map<String, Object> map) {
        if (map == null) {
            return null;
        }
        validateMap(map);
        return this.properties.updateDesired(map);
    }

    private j innerUpdateReportedProperty(Map<String, Object> map) {
        if (map == null) {
            return null;
        }
        validateMap(map);
        return this.properties.updateReported(map);
    }

    private j innerUpdateTags(Map<String, Object> map) {
        if (this.tags == null) {
            throw new IOException("Update not enabled Tags");
        } else if (map != null) {
            validateMap(map);
            return this.tags.update(map);
        } else {
            throw new IllegalArgumentException("Null tags map");
        }
    }

    private void validateJson(String str) {
        try {
            e eVar = new e();
            Excluder clone = eVar.a.clone();
            boolean z = false;
            clone.z = false;
            eVar.a = clone;
            eVar.f1303l = false;
            Class cls = HashMap.class;
            Map map = (Map) t.a(cls).cast(eVar.a().a(str, (Type) cls));
            if (map != null) {
                Iterator it = map.entrySet().iterator();
                boolean z2 = true;
                boolean z3 = false;
                while (true) {
                    if (!it.hasNext()) {
                        z2 = z;
                        break;
                    }
                    Map.Entry entry = (Map.Entry) it.next();
                    if (((String) entry.getKey()).equals("properties")) {
                        this.properties.validate((Map) entry.getValue());
                    } else if (((String) entry.getKey()).equals("desired") || ((String) entry.getKey()).equals("reported")) {
                        if (!z3) {
                            this.properties.validate(map);
                        } else {
                            throw new IllegalArgumentException("Invalid Entry");
                        }
                    } else if (((String) entry.getKey()).equals("tags")) {
                        TwinTags twinTags = this.tags;
                        if (twinTags != null) {
                            twinTags.validate((Map) entry.getValue());
                        }
                    }
                    z = true;
                    z3 = true;
                }
                if (!z2) {
                    throw new IllegalArgumentException("Json do not contains twin information");
                }
            }
        } catch (Exception e2) {
            throw new IllegalArgumentException("Malformed Json: " + e2);
        }
    }

    private void validateMap(Map<String, Object> map) {
        if (map != null) {
            validateMap(map, 0, 5);
        }
    }

    public void enableMetadata() {
        this.properties.enableDesiredMetadata();
        this.properties.enableReportedMetadata();
    }

    public void enableTags() {
        if (this.tags == null) {
            this.tags = new TwinTags();
        }
    }

    public TwinConnectionState getConnectionState() {
        return this.manager.connectionState;
    }

    public String getConnectionStateUpdatedTime() {
        return this.manager.connectionStateUpdatedTime;
    }

    public Map<String, Object> getDesiredPropertyMap() {
        return this.properties.getDesiredPropertyMap();
    }

    public Integer getDesiredPropertyVersion() {
        return this.properties.getDesiredVersion();
    }

    public String getDeviceId() {
        return this.manager.deviceId;
    }

    public String getETag() {
        return this.manager.eTag;
    }

    public String getGenerationId() {
        return this.manager.generationId;
    }

    public String getLastActivityTime() {
        return this.manager.lastActivityTime;
    }

    public Map<String, Object> getReportedPropertyMap() {
        return this.properties.getReportedPropertyMap();
    }

    public Integer getReportedPropertyVersion() {
        return this.properties.getReportedVersion();
    }

    public TwinStatus getStatus() {
        return this.manager.status;
    }

    public String getStatusReason() {
        return this.manager.statusReason;
    }

    public String getStatusUpdatedTime() {
        return this.manager.statusUpdatedTime;
    }

    public Map<String, Object> getTagsMap() {
        TwinTags twinTags = this.tags;
        if (twinTags != null) {
            return twinTags.getMap();
        }
        throw new IOException("Update not enabled Tags");
    }

    public Integer getVersion() {
        return this.manager.version;
    }

    public String resetDesiredProperty(Map<String, Object> map) {
        if (map != null) {
            validateMap(map);
            j resetDesired = this.properties.resetDesired(map);
            if (resetDesired == null) {
                return "{}";
            }
            return resetDesired.toString();
        }
        throw new IllegalArgumentException("Null property map");
    }

    public String resetReportedProperty(Map<String, Object> map) {
        if (map != null) {
            validateMap(map);
            j resetReported = this.properties.resetReported(map);
            if (resetReported == null) {
                return "{}";
            }
            return resetReported.toString();
        }
        throw new IllegalArgumentException("Null property map");
    }

    public String resetTags(Map<String, Object> map) {
        if (this.tags == null) {
            throw new IOException("Update not enabled Tags");
        } else if (map != null) {
            validateMap(map);
            TwinTags twinTags = new TwinTags();
            this.tags = twinTags;
            j update = twinTags.update(map);
            if (update == null) {
                return "{}";
            }
            return update.toString();
        } else {
            throw new IllegalArgumentException("Null tags map");
        }
    }

    public void setDesiredCallback(TwinChangedCallback twinChangedCallback) {
        this.onDesiredCallback = twinChangedCallback;
    }

    public void setDeviceId(String str) {
        ParserUtility.validateId(str);
        this.manager.setDeviceId(str);
    }

    public void setETag(String str) {
        ParserUtility.validateStringUTF8(str);
        this.manager.eTag = str;
    }

    public void setReportedCallback(TwinChangedCallback twinChangedCallback) {
        this.onReportedCallback = twinChangedCallback;
    }

    public void setTagsCallback(TwinChangedCallback twinChangedCallback) {
        onTagsCallback = twinChangedCallback;
    }

    public String toJson() {
        return toJsonElement().toString();
    }

    public j toJsonElement() {
        e eVar = new e();
        eVar.f1303l = false;
        m c2 = eVar.a().b(this.manager).c();
        TwinTags twinTags = this.tags;
        if (twinTags != null) {
            c2.a("tags", twinTags.toJsonElement());
        }
        c2.a("properties", this.properties.toJsonElement());
        return c2;
    }

    public String updateDesiredProperty(Map<String, Object> map) {
        if (map != null) {
            j innerUpdateDesiredProperty = innerUpdateDesiredProperty(map);
            if (innerUpdateDesiredProperty == null) {
                return null;
            }
            return innerUpdateDesiredProperty.toString();
        }
        throw new IllegalArgumentException("Null desired property map.");
    }

    public String updateDeviceManager(String str, TwinStatus twinStatus, String str2) {
        this.manager.validateDeviceManager(str, twinStatus, str2);
        boolean status = this.manager.setStatus(twinStatus, str2);
        if (this.manager.setDeviceId(str)) {
            status = true;
        }
        if (!status) {
            return null;
        }
        return toJson();
    }

    public String updateReportedProperty(Map<String, Object> map) {
        if (map != null) {
            j innerUpdateReportedProperty = innerUpdateReportedProperty(map);
            if (innerUpdateReportedProperty == null) {
                return null;
            }
            return innerUpdateReportedProperty.toString();
        }
        throw new IllegalArgumentException("Null reported property map.");
    }

    public String updateTags(Map<String, Object> map) {
        j innerUpdateTags = innerUpdateTags(map);
        if (innerUpdateTags == null) {
            return null;
        }
        return innerUpdateTags.toString();
    }

    public String updateTwin(Map<String, Object> map, Map<String, Object> map2, Map<String, Object> map3) {
        j jVar;
        m mVar = new m();
        validateMap(map);
        validateMap(map2);
        validateMap(map3);
        e eVar = new e();
        eVar.f1303l = false;
        m c2 = eVar.a().b(this.manager).c();
        if (this.tags == null && map3 != null) {
            throw new IOException("Update not enabled Tags");
        } else if (map == null && map2 == null && map3 == null) {
            throw new IllegalArgumentException("Null maps");
        } else {
            j innerUpdateDesiredProperty = innerUpdateDesiredProperty(map);
            if (innerUpdateDesiredProperty != null) {
                mVar.a("desired", innerUpdateDesiredProperty);
            } else {
                mVar.a("desired", (j) new m());
            }
            j innerUpdateReportedProperty = innerUpdateReportedProperty(map2);
            if (innerUpdateReportedProperty != null) {
                mVar.a("reported", innerUpdateReportedProperty);
            } else {
                mVar.a("reported", (j) new m());
            }
            if (this.tags != null) {
                if (map3 == null) {
                    c2.a("tags", (j) new m());
                } else {
                    jVar = innerUpdateTags(map3);
                    if (jVar != null) {
                        c2.a("tags", jVar);
                    } else {
                        c2.a("tags", (j) new m());
                    }
                    if (innerUpdateDesiredProperty != null && innerUpdateReportedProperty == null && jVar == null) {
                        return null;
                    }
                    c2.a("properties", (j) mVar);
                    return c2.toString();
                }
            }
            jVar = null;
            if (innerUpdateDesiredProperty != null) {
            }
            c2.a("properties", (j) mVar);
            return c2.toString();
        }
    }

    private void validateMap(Map<String, Object> map, int i2, int i3) {
        int i4 = i2 + 1;
        for (Map.Entry<String, Object> value : map.entrySet()) {
            Object value2 = value.getValue();
            if (value2 != null && (value2.getClass().isArray() || value2.getClass().isLocalClass())) {
                throw new IllegalArgumentException("Malformed Json: illegal value type");
            } else if (value2 != null && (value2 instanceof Map)) {
                if (i4 <= i3) {
                    validateMap((Map) value2, i4, i3);
                } else {
                    throw new IllegalArgumentException("Malformed Json: exceed 5 levels");
                }
            }
        }
    }

    public void updateDesiredProperty(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Null json");
        } else if (!str.isEmpty()) {
            try {
                this.properties.updateDesired(str, this.onDesiredCallback);
            } catch (s e2) {
                throw new IllegalArgumentException("Malformed json: " + e2);
            }
        }
    }

    public void updateReportedProperty(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Null json");
        } else if (!str.isEmpty()) {
            try {
                this.properties.updateReported(str, this.onReportedCallback);
            } catch (s e2) {
                throw new IllegalArgumentException("Malformed json: " + e2);
            }
        }
    }

    public TwinParser(TwinChangedCallback twinChangedCallback) {
        this();
        setDesiredCallback(twinChangedCallback);
    }

    public TwinParser(TwinChangedCallback twinChangedCallback, TwinChangedCallback twinChangedCallback2) {
        this();
        setDesiredCallback(twinChangedCallback);
        setReportedCallback(twinChangedCallback2);
    }

    public void updateTwin(String str) {
        if (str != null) {
            validateJson(str);
            if (!str.isEmpty()) {
                e eVar = new e();
                Excluder clone = eVar.a.clone();
                boolean z = false;
                clone.z = false;
                eVar.a = clone;
                eVar.f1303l = false;
                Gson a = eVar.a();
                Class cls = HashMap.class;
                try {
                    Map map = (Map) t.a(cls).cast(a.a(str, (Type) cls));
                    Class cls2 = RegisterManagerParser.class;
                    this.manager = (RegisterManagerParser) t.a(cls2).cast(a.a(str, (Type) cls2));
                    for (Map.Entry entry : map.entrySet()) {
                        if (((String) entry.getKey()).equals("properties")) {
                            this.properties.update((Map) entry.getValue(), this.onDesiredCallback, this.onReportedCallback);
                        } else if (((String) entry.getKey()).equals("desired") || ((String) entry.getKey()).equals("reported")) {
                            if (!z) {
                                this.properties.update(map, this.onDesiredCallback, this.onReportedCallback);
                                return;
                            }
                            throw new IllegalArgumentException("Invalid Entry");
                        } else if (((String) entry.getKey()).equals("tags")) {
                            TwinTags twinTags = this.tags;
                            if (twinTags != null) {
                                twinTags.update((Map) entry.getValue(), onTagsCallback);
                            }
                        }
                        z = true;
                    }
                } catch (s e2) {
                    throw new IllegalArgumentException("Malformed Json: " + e2);
                }
            }
        } else {
            throw new IllegalArgumentException("Null json");
        }
    }
}
