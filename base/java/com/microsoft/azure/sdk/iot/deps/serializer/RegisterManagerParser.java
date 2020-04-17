package com.microsoft.azure.sdk.iot.deps.serializer;

import e.c.c.v.a;
import e.c.c.v.c;

@Deprecated
public class RegisterManagerParser {
    public static final String CONNECTION_STATE_TAG = "connectionState";
    public static final String CONNECTION_STATE_UPDATED_TIME_TAG = "connectionStateUpdatedTime";
    public static final String DEVICE_ID_TAG = "deviceId";
    public static final String ETAG_TAG = "etag";
    public static final String GENERATION_ID_TAG = "generationId";
    public static final String LAST_ACTIVITY_TIME_TAG = "lastActivityTime";
    public static final String STATUS_REASON_TAG = "statusReason";
    public static final String STATUS_TAG = "status";
    public static final String STATUS_UPDATED_TIME_TAG = "statusUpdatedTime";
    public static final String VERSION_TAG = "version";
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

    public boolean setDeviceId(String str) {
        validateDeviceManager(str, (TwinStatus) null, (String) null);
        String str2 = this.deviceId;
        if (str2 != null && str != null && str2.equals(str)) {
            return false;
        }
        this.deviceId = str;
        return str != null;
    }

    public boolean setStatus(TwinStatus twinStatus, String str) {
        validateDeviceManager((String) null, twinStatus, str);
        if (twinStatus == null) {
            if (this.status != null) {
                return true;
            }
            this.status = null;
            this.statusReason = null;
            this.statusUpdatedTime = null;
            return false;
        } else if (str != null) {
            TwinStatus twinStatus2 = this.status;
            if (twinStatus2 != null && twinStatus2.equals(twinStatus)) {
                return false;
            }
            this.status = twinStatus;
            this.statusReason = str;
            return true;
        } else {
            throw new IllegalArgumentException("Change status without statusReason");
        }
    }

    public void validateDeviceManager(String str, TwinStatus twinStatus, String str2) {
        if (str != null && str.length() > 128) {
            throw new IllegalArgumentException("DeviceId bigger than 128 chars");
        } else if (twinStatus != null && str2 == null) {
            throw new IllegalArgumentException("Change status without statusReason");
        } else if (str2 != null && str2.length() > 128) {
            throw new IllegalArgumentException("StatusReason bigger than 128 chars");
        }
    }
}
