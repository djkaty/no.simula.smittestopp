package com.microsoft.identity.common.internal.telemetry;

import com.microsoft.identity.common.internal.util.StringUtil;
import java.util.concurrent.ConcurrentHashMap;

public class Properties {
    public ConcurrentHashMap<String, String> mProperties;

    public Properties(ConcurrentHashMap<String, String> concurrentHashMap) {
        this.mProperties = concurrentHashMap;
    }

    public ConcurrentHashMap<String, String> getProperties() {
        return this.mProperties;
    }

    public Properties put(String str, String str2) {
        if (this.mProperties == null) {
            this.mProperties = new ConcurrentHashMap<>();
        }
        if (!StringUtil.isEmpty(str) && !StringUtil.isEmpty(str2)) {
            this.mProperties.put(str, str2);
        }
        return this;
    }

    public Properties remove(String str) {
        this.mProperties.remove(str);
        return this;
    }

    public Properties remove(String str, String str2) {
        this.mProperties.remove(str, str2);
        return this;
    }

    public Properties() {
        this.mProperties = new ConcurrentHashMap<>();
    }

    public Properties put(Properties properties) {
        ConcurrentHashMap<String, String> concurrentHashMap = this.mProperties;
        if (concurrentHashMap == null) {
            this.mProperties = properties.getProperties();
        } else {
            concurrentHashMap.putAll(properties.getProperties());
        }
        return this;
    }
}
