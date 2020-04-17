package com.microsoft.azure.sdk.iot.deps.twin;

import com.microsoft.azure.sdk.iot.deps.serializer.ParserUtility;
import e.c.c.v.a;
import e.c.c.v.c;

public class RegisterManager {
    public static final String CAPABILITIES_TAG = "capabilities";
    public static final String CONNECTION_STATE_TAG = "connectionState";
    public static final String CONNECTION_STATE_UPDATED_TIME_TAG = "connectionStateUpdatedTime";
    public static final String DEVICE_ID_TAG = "deviceId";
    public static final String ETAG_TAG = "etag";
    public static final String GENERATION_ID_TAG = "generationId";
    public static final String LAST_ACTIVITY_TIME_TAG = "lastActivityTime";
    public static final String MODULE_ID_TAG = "moduleId";
    public static final String STATUS_REASON_TAG = "statusReason";
    public static final String STATUS_TAG = "status";
    public static final String STATUS_UPDATED_TIME_TAG = "statusUpdatedTime";
    public static final String VERSION_TAG = "version";
    @a(deserialize = true, serialize = true)
    @c("capabilities")
    public DeviceCapabilities capabilities = null;
    @a(deserialize = true, serialize = true)
    @c("connectionState")
    public TwinConnectionState connectionState = null;
    @a(deserialize = true, serialize = true)
    @c("connectionStateUpdatedTime")
    public String connectionStateUpdatedTime = null;
    @a(deserialize = true, serialize = true)
    @c("deviceId")
    public String deviceId = null;
    @a(deserialize = true, serialize = true)
    @c("etag")
    public String eTag = null;
    @a(deserialize = true, serialize = true)
    @c("generationId")
    public String generationId = null;
    @a(deserialize = true, serialize = true)
    @c("lastActivityTime")
    public String lastActivityTime = null;
    @a(deserialize = true, serialize = true)
    @c("moduleId")
    public String moduleId = null;
    @a(deserialize = true, serialize = true)
    @c("status")
    public TwinStatus status = null;
    @a(deserialize = true, serialize = true)
    @c("statusReason")
    public String statusReason = null;
    @a(deserialize = true, serialize = true)
    @c("statusUpdatedTime")
    public String statusUpdatedTime = null;
    @a(deserialize = true, serialize = true)
    @c("version")
    public Integer version = null;

    public DeviceCapabilities getCapabilities() {
        return this.capabilities;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public String getETag() {
        return this.eTag;
    }

    public String getModuleId() {
        return this.moduleId;
    }

    public Integer getVersion() {
        return this.version;
    }

    public void setCapabilities(DeviceCapabilities deviceCapabilities) {
        this.capabilities = deviceCapabilities;
    }

    public void setDeviceId(String str) {
        ParserUtility.validateId(str);
        this.deviceId = str;
    }

    public void setETag(String str) {
        this.eTag = str;
    }

    public void setModuleId(String str) {
        ParserUtility.validateId(str);
        this.moduleId = str;
    }
}
