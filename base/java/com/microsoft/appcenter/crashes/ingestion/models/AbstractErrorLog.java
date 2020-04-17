package com.microsoft.appcenter.crashes.ingestion.models;

import com.microsoft.appcenter.ingestion.models.AbstractLog;
import com.microsoft.appcenter.ingestion.models.json.JSONDateUtils;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import java.util.Date;
import java.util.UUID;
import org.json.JSONObject;
import org.json.JSONStringer;

public abstract class AbstractErrorLog extends AbstractLog {
    public static final String APP_LAUNCH_TIMESTAMP = "appLaunchTimestamp";
    public static final String ARCHITECTURE = "architecture";
    public static final String ERROR_THREAD_ID = "errorThreadId";
    public static final String ERROR_THREAD_NAME = "errorThreadName";
    public static final String FATAL = "fatal";
    public static final String PARENT_PROCESS_ID = "parentProcessId";
    public static final String PARENT_PROCESS_NAME = "parentProcessName";
    public static final String PROCESS_ID = "processId";
    public static final String PROCESS_NAME = "processName";
    public Date appLaunchTimestamp;
    public String architecture;
    public Long errorThreadId;
    public String errorThreadName;
    public Boolean fatal;
    public UUID id;
    public Integer parentProcessId;
    public String parentProcessName;
    public Integer processId;
    public String processName;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        AbstractErrorLog abstractErrorLog = (AbstractErrorLog) obj;
        UUID uuid = this.id;
        if (uuid == null ? abstractErrorLog.id != null : !uuid.equals(abstractErrorLog.id)) {
            return false;
        }
        Integer num = this.processId;
        if (num == null ? abstractErrorLog.processId != null : !num.equals(abstractErrorLog.processId)) {
            return false;
        }
        String str = this.processName;
        if (str == null ? abstractErrorLog.processName != null : !str.equals(abstractErrorLog.processName)) {
            return false;
        }
        Integer num2 = this.parentProcessId;
        if (num2 == null ? abstractErrorLog.parentProcessId != null : !num2.equals(abstractErrorLog.parentProcessId)) {
            return false;
        }
        String str2 = this.parentProcessName;
        if (str2 == null ? abstractErrorLog.parentProcessName != null : !str2.equals(abstractErrorLog.parentProcessName)) {
            return false;
        }
        Long l2 = this.errorThreadId;
        if (l2 == null ? abstractErrorLog.errorThreadId != null : !l2.equals(abstractErrorLog.errorThreadId)) {
            return false;
        }
        String str3 = this.errorThreadName;
        if (str3 == null ? abstractErrorLog.errorThreadName != null : !str3.equals(abstractErrorLog.errorThreadName)) {
            return false;
        }
        Boolean bool = this.fatal;
        if (bool == null ? abstractErrorLog.fatal != null : !bool.equals(abstractErrorLog.fatal)) {
            return false;
        }
        Date date = this.appLaunchTimestamp;
        if (date == null ? abstractErrorLog.appLaunchTimestamp != null : !date.equals(abstractErrorLog.appLaunchTimestamp)) {
            return false;
        }
        String str4 = this.architecture;
        String str5 = abstractErrorLog.architecture;
        if (str4 != null) {
            return str4.equals(str5);
        }
        if (str5 == null) {
            return true;
        }
        return false;
    }

    public Date getAppLaunchTimestamp() {
        return this.appLaunchTimestamp;
    }

    public String getArchitecture() {
        return this.architecture;
    }

    public Long getErrorThreadId() {
        return this.errorThreadId;
    }

    public String getErrorThreadName() {
        return this.errorThreadName;
    }

    public Boolean getFatal() {
        return this.fatal;
    }

    public UUID getId() {
        return this.id;
    }

    public Integer getParentProcessId() {
        return this.parentProcessId;
    }

    public String getParentProcessName() {
        return this.parentProcessName;
    }

    public Integer getProcessId() {
        return this.processId;
    }

    public String getProcessName() {
        return this.processName;
    }

    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        UUID uuid = this.id;
        int i2 = 0;
        int hashCode2 = (hashCode + (uuid != null ? uuid.hashCode() : 0)) * 31;
        Integer num = this.processId;
        int hashCode3 = (hashCode2 + (num != null ? num.hashCode() : 0)) * 31;
        String str = this.processName;
        int hashCode4 = (hashCode3 + (str != null ? str.hashCode() : 0)) * 31;
        Integer num2 = this.parentProcessId;
        int hashCode5 = (hashCode4 + (num2 != null ? num2.hashCode() : 0)) * 31;
        String str2 = this.parentProcessName;
        int hashCode6 = (hashCode5 + (str2 != null ? str2.hashCode() : 0)) * 31;
        Long l2 = this.errorThreadId;
        int hashCode7 = (hashCode6 + (l2 != null ? l2.hashCode() : 0)) * 31;
        String str3 = this.errorThreadName;
        int hashCode8 = (hashCode7 + (str3 != null ? str3.hashCode() : 0)) * 31;
        Boolean bool = this.fatal;
        int hashCode9 = (hashCode8 + (bool != null ? bool.hashCode() : 0)) * 31;
        Date date = this.appLaunchTimestamp;
        int hashCode10 = (hashCode9 + (date != null ? date.hashCode() : 0)) * 31;
        String str4 = this.architecture;
        if (str4 != null) {
            i2 = str4.hashCode();
        }
        return hashCode10 + i2;
    }

    public void read(JSONObject jSONObject) {
        super.read(jSONObject);
        setId(UUID.fromString(jSONObject.getString("id")));
        setProcessId(JSONUtils.readInteger(jSONObject, PROCESS_ID));
        setProcessName(jSONObject.optString(PROCESS_NAME, (String) null));
        setParentProcessId(JSONUtils.readInteger(jSONObject, PARENT_PROCESS_ID));
        setParentProcessName(jSONObject.optString(PARENT_PROCESS_NAME, (String) null));
        setErrorThreadId(JSONUtils.readLong(jSONObject, ERROR_THREAD_ID));
        setErrorThreadName(jSONObject.optString(ERROR_THREAD_NAME, (String) null));
        setFatal(JSONUtils.readBoolean(jSONObject, FATAL));
        setAppLaunchTimestamp(JSONDateUtils.toDate(jSONObject.getString(APP_LAUNCH_TIMESTAMP)));
        setArchitecture(jSONObject.optString(ARCHITECTURE, (String) null));
    }

    public void setAppLaunchTimestamp(Date date) {
        this.appLaunchTimestamp = date;
    }

    public void setArchitecture(String str) {
        this.architecture = str;
    }

    public void setErrorThreadId(Long l2) {
        this.errorThreadId = l2;
    }

    public void setErrorThreadName(String str) {
        this.errorThreadName = str;
    }

    public void setFatal(Boolean bool) {
        this.fatal = bool;
    }

    public void setId(UUID uuid) {
        this.id = uuid;
    }

    public void setParentProcessId(Integer num) {
        this.parentProcessId = num;
    }

    public void setParentProcessName(String str) {
        this.parentProcessName = str;
    }

    public void setProcessId(Integer num) {
        this.processId = num;
    }

    public void setProcessName(String str) {
        this.processName = str;
    }

    public void write(JSONStringer jSONStringer) {
        super.write(jSONStringer);
        JSONUtils.write(jSONStringer, "id", getId());
        JSONUtils.write(jSONStringer, PROCESS_ID, getProcessId());
        JSONUtils.write(jSONStringer, PROCESS_NAME, getProcessName());
        JSONUtils.write(jSONStringer, PARENT_PROCESS_ID, getParentProcessId());
        JSONUtils.write(jSONStringer, PARENT_PROCESS_NAME, getParentProcessName());
        JSONUtils.write(jSONStringer, ERROR_THREAD_ID, getErrorThreadId());
        JSONUtils.write(jSONStringer, ERROR_THREAD_NAME, getErrorThreadName());
        JSONUtils.write(jSONStringer, FATAL, getFatal());
        JSONUtils.write(jSONStringer, APP_LAUNCH_TIMESTAMP, JSONDateUtils.toString(getAppLaunchTimestamp()));
        JSONUtils.write(jSONStringer, ARCHITECTURE, getArchitecture());
    }
}
