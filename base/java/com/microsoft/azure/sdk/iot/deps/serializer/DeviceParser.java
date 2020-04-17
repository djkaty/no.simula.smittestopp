package com.microsoft.azure.sdk.iot.deps.serializer;

import com.google.gson.Gson;
import e.c.c.s;
import e.c.c.v.a;
import e.c.c.v.c;
import e.c.c.w.t;
import java.lang.reflect.Type;
import java.util.Date;

public class DeviceParser {
    public static final String AUTHENTICATION_NAME = "authentication";
    public static final String CAPABILITIES_NAME = "capabilities";
    public static final String CLOUD_TO_MESSAGE_COUNT_NAME = "cloudToDeviceMessageCount";
    public static final String CONNECTION_STATE_NAME = "connectionState";
    public static final String CONNECTION_STATE_UPDATED_TIME_NAME = "connectionStateUpdatedTime";
    public static final String DEVICE_ID_NAME = "deviceId";
    public static final String E_TAG_NAME = "etag";
    public static final String GENERATION_ID_NAME = "generationId";
    public static final String LAST_ACTIVITY_TIME_NAME = "lastActivityTime";
    public static final String MANAGED_BY = "managedBy";
    public static final String MODULE_ID_NAME = "moduleId";
    public static final String SCOPE_NAME = "deviceScope";
    public static final String STATUS_NAME = "status";
    public static final String STATUS_REASON = "statusReason";
    public static final String STATUS_UPDATED_TIME_NAME = "statusUpdatedTime";
    @a(deserialize = true, serialize = true)
    @c("authentication")
    public AuthenticationParser authenticationParser;
    @a(deserialize = true, serialize = true)
    @c("capabilities")
    public DeviceCapabilitiesParser capabilities;
    @a(deserialize = true, serialize = true)
    @c("cloudToDeviceMessageCount")
    public long cloudToDeviceMessageCount;
    @a(deserialize = true, serialize = true)
    @c("connectionState")
    public String connectionState;
    public transient Date connectionStateUpdatedTime;
    @a(deserialize = false, serialize = true)
    @c("connectionStateUpdatedTime")
    public String connectionStateUpdatedTimeString;
    @a(deserialize = true, serialize = true)
    @c("deviceId")
    public String deviceId;
    @a(deserialize = true, serialize = true)
    @c("etag")
    public String eTag;
    @a(deserialize = true, serialize = true)
    @c("generationId")
    public String generationId;
    public transient Gson gson = new Gson();
    public transient Date lastActivityTime;
    @a(deserialize = false, serialize = true)
    @c("lastActivityTime")
    public String lastActivityTimeString;
    @a(deserialize = true, serialize = true)
    @c("managedBy")
    public String managedBy;
    @a(deserialize = true, serialize = true)
    @c("moduleId")
    public String moduleId;
    @a(deserialize = true, serialize = true)
    @c("deviceScope")
    public String scope;
    @a(deserialize = true, serialize = true)
    @c("status")
    public String status;
    @a(deserialize = true, serialize = true)
    @c("statusReason")
    public String statusReason;
    public transient Date statusUpdatedTime;
    @a(deserialize = false, serialize = true)
    @c("statusUpdatedTime")
    public String statusUpdatedTimeString;

    public DeviceParser() {
    }

    public AuthenticationParser getAuthenticationParser() {
        return this.authenticationParser;
    }

    public DeviceCapabilitiesParser getCapabilities() {
        return this.capabilities;
    }

    public long getCloudToDeviceMessageCount() {
        return this.cloudToDeviceMessageCount;
    }

    public String getConnectionState() {
        return this.connectionState;
    }

    public Date getConnectionStateUpdatedTime() {
        return this.connectionStateUpdatedTime;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public String getGenerationId() {
        return this.generationId;
    }

    public Date getLastActivityTime() {
        return this.lastActivityTime;
    }

    public String getManagedBy() {
        return this.managedBy;
    }

    public String getModuleId() {
        return this.moduleId;
    }

    public String getScope() {
        return this.scope;
    }

    public String getStatus() {
        return this.status;
    }

    public String getStatusReason() {
        return this.statusReason;
    }

    public Date getStatusUpdatedTime() {
        return this.statusUpdatedTime;
    }

    public String geteTag() {
        return e.a.a.a.a.a(e.a.a.a.a.a("\""), this.eTag, "\"");
    }

    public void setAuthenticationParser(AuthenticationParser authenticationParser2) {
        if (authenticationParser2 != null) {
            this.authenticationParser = authenticationParser2;
            return;
        }
        throw new IllegalArgumentException("Authentication cannot not be null");
    }

    public void setCapabilities(DeviceCapabilitiesParser deviceCapabilitiesParser) {
        this.capabilities = deviceCapabilitiesParser;
    }

    public void setCloudToDeviceMessageCount(long j2) {
        this.cloudToDeviceMessageCount = j2;
    }

    public void setConnectionState(String str) {
        this.connectionState = str;
    }

    public void setConnectionStateUpdatedTime(Date date) {
        this.connectionStateUpdatedTime = date;
        if (date == null) {
            this.connectionStateUpdatedTimeString = null;
        } else {
            this.connectionStateUpdatedTimeString = ParserUtility.getDateStringFromDate(date);
        }
    }

    public void setDeviceId(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("DeviceId cannot not be null");
        }
        this.deviceId = str;
    }

    public void setGenerationId(String str) {
        this.generationId = str;
    }

    public void setLastActivityTime(Date date) {
        this.lastActivityTime = date;
        if (date == null) {
            this.lastActivityTimeString = null;
        } else {
            this.lastActivityTimeString = ParserUtility.getDateStringFromDate(date);
        }
    }

    public void setManagedBy(String str) {
        this.managedBy = str;
    }

    public void setModuleId(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("DeviceId cannot not be null");
        }
        this.moduleId = str;
    }

    public void setScope(String str) {
        this.scope = str;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public void setStatusReason(String str) {
        this.statusReason = str;
    }

    public void setStatusUpdatedTime(Date date) {
        this.statusUpdatedTime = date;
        if (date == null) {
            this.statusUpdatedTimeString = null;
        } else {
            this.statusUpdatedTimeString = ParserUtility.getDateStringFromDate(date);
        }
    }

    public void seteTag(String str) {
        this.eTag = str;
    }

    public String toJson() {
        Date date = this.statusUpdatedTime;
        if (date != null) {
            this.statusUpdatedTimeString = ParserUtility.getDateStringFromDate(date);
        }
        Date date2 = this.connectionStateUpdatedTime;
        if (date2 != null) {
            this.connectionStateUpdatedTimeString = ParserUtility.getDateStringFromDate(date2);
        }
        Date date3 = this.lastActivityTime;
        if (date3 != null) {
            this.lastActivityTimeString = ParserUtility.getDateStringFromDate(date3);
        }
        return this.gson.a((Object) this);
    }

    public DeviceParser(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("The provided json cannot be null or empty");
        }
        try {
            Class cls = DeviceParser.class;
            DeviceParser deviceParser = (DeviceParser) t.a(cls).cast(this.gson.a(str, (Type) cls));
            String str2 = deviceParser.deviceId;
            if (str2 == null || str2.isEmpty()) {
                throw new IllegalArgumentException("The provided json must contain the field for deviceId and its value may not be empty");
            }
            AuthenticationParser authenticationParser2 = deviceParser.authenticationParser;
            if (authenticationParser2 != null) {
                this.authenticationParser = authenticationParser2;
                this.connectionState = deviceParser.connectionState;
                this.deviceId = deviceParser.deviceId;
                this.moduleId = deviceParser.moduleId;
                this.statusReason = deviceParser.statusReason;
                this.cloudToDeviceMessageCount = deviceParser.cloudToDeviceMessageCount;
                this.connectionState = deviceParser.connectionState;
                this.generationId = deviceParser.generationId;
                this.eTag = deviceParser.eTag;
                this.status = deviceParser.status;
                this.managedBy = deviceParser.managedBy;
                this.capabilities = deviceParser.capabilities;
                this.scope = deviceParser.scope;
                String str3 = deviceParser.lastActivityTimeString;
                if (str3 != null) {
                    this.lastActivityTimeString = str3;
                    this.lastActivityTime = ParserUtility.getDateTimeUtc(deviceParser.lastActivityTimeString);
                }
                String str4 = deviceParser.connectionStateUpdatedTimeString;
                if (str4 != null) {
                    this.connectionStateUpdatedTimeString = str4;
                    this.connectionStateUpdatedTime = ParserUtility.getDateTimeUtc(deviceParser.connectionStateUpdatedTimeString);
                }
                String str5 = deviceParser.statusUpdatedTimeString;
                if (str5 != null) {
                    this.statusUpdatedTimeString = str5;
                    this.statusUpdatedTime = ParserUtility.getDateTimeUtc(deviceParser.statusUpdatedTimeString);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("The provided json must contain the field for authentication and its value may not be empty");
        } catch (s unused) {
            throw new IllegalArgumentException("The provided json could not be parsed");
        }
    }
}
