package com.microsoft.azure.sdk.iot.deps.serializer;

import com.google.gson.Gson;
import e.c.c.s;
import e.c.c.v.a;
import e.c.c.v.c;
import e.c.c.w.t;
import java.lang.reflect.Type;

public class RegistryStatisticsParser {
    public static final String DISABLED_DEVICE_COUNT_NAME = "disabledDeviceCount";
    public static final String ENABLED_DEVICE_COUNT_NAME = "enableDeviceCount";
    public static final String TOTAL_DEVICE_COUNT_NAME = "totalDeviceCount";
    public static transient Gson gson = new Gson();
    @a(deserialize = true, serialize = true)
    @c("disabledDeviceCount")
    public long disabledDeviceCount;
    @a(deserialize = true, serialize = true)
    @c("enableDeviceCount")
    public long enabledDeviceCount;
    @a(deserialize = true, serialize = true)
    @c("totalDeviceCount")
    public long totalDeviceCount;

    public RegistryStatisticsParser() {
    }

    public long getDisabledDeviceCount() {
        return this.disabledDeviceCount;
    }

    public long getEnabledDeviceCount() {
        return this.enabledDeviceCount;
    }

    public long getTotalDeviceCount() {
        return this.totalDeviceCount;
    }

    public void setDisabledDeviceCount(long j2) {
        this.disabledDeviceCount = j2;
    }

    public void setEnabledDeviceCount(long j2) {
        this.enabledDeviceCount = j2;
    }

    public void setTotalDeviceCount(long j2) {
        this.totalDeviceCount = j2;
    }

    public String toJson() {
        return gson.a((Object) this);
    }

    public RegistryStatisticsParser(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("The provided json cannot be null or empty");
        }
        try {
            Class cls = RegistryStatisticsParser.class;
            RegistryStatisticsParser registryStatisticsParser = (RegistryStatisticsParser) t.a(cls).cast(gson.a(str, (Type) cls));
            this.totalDeviceCount = registryStatisticsParser.totalDeviceCount;
            this.enabledDeviceCount = registryStatisticsParser.enabledDeviceCount;
            this.disabledDeviceCount = registryStatisticsParser.disabledDeviceCount;
        } catch (s unused) {
            throw new IllegalArgumentException("The provided json could not be parsed");
        }
    }
}
