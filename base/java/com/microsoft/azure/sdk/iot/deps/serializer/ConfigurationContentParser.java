package com.microsoft.azure.sdk.iot.deps.serializer;

import com.google.gson.Gson;
import e.c.c.j;
import e.c.c.m;
import e.c.c.s;
import e.c.c.v.a;
import e.c.c.v.c;
import e.c.c.w.t;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;

public class ConfigurationContentParser {
    public static final String DEVICE_CONTENT_NAME = "deviceContent";
    public static final String MODULES_CONTENT_NAME = "modulesContent";
    public static transient Gson gson = new Gson();
    @a(deserialize = true, serialize = false)
    @c("deviceContent")
    public Map<String, Object> deviceContent;
    @a(deserialize = true, serialize = false)
    @c("modulesContent")
    public Map<String, Map<String, Object>> modulesContent;

    public ConfigurationContentParser() {
    }

    public Map<String, Object> getDeviceContent() {
        return this.deviceContent;
    }

    public Map<String, Map<String, Object>> getModulesContent() {
        return this.modulesContent;
    }

    public void setDeviceContent(Map<String, Object> map) {
        this.deviceContent = map;
    }

    public void setModulesContent(Map<String, Map<String, Object>> map) {
        this.modulesContent = map;
    }

    public String toJson() {
        return gson.a((Object) this);
    }

    public j toJsonElement() {
        m mVar = new m();
        if (this.modulesContent != null) {
            HashMap hashMap = new HashMap();
            for (Map.Entry next : this.modulesContent.entrySet()) {
                hashMap.put(next.getKey(), next.getValue());
            }
            mVar.a(MODULES_CONTENT_NAME, ParserUtility.mapToJsonElement(hashMap));
        }
        Map<String, Object> map = this.deviceContent;
        if (map != null) {
            mVar.a(DEVICE_CONTENT_NAME, ParserUtility.mapToJsonElement(map));
        }
        return mVar;
    }

    public ConfigurationContentParser(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("The provided json cannot be null or empty");
        }
        try {
            Class cls = ConfigurationContentParser.class;
            ConfigurationContentParser configurationContentParser = (ConfigurationContentParser) t.a(cls).cast(gson.a(str, (Type) cls));
            this.modulesContent = configurationContentParser.modulesContent;
            this.deviceContent = configurationContentParser.deviceContent;
        } catch (s unused) {
            throw new IllegalArgumentException("The provided json could not be parsed");
        }
    }
}
