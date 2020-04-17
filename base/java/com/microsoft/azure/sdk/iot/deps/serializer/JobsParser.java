package com.microsoft.azure.sdk.iot.deps.serializer;

import com.microsoft.azure.sdk.iot.deps.twin.TwinState;
import e.c.c.e;
import e.c.c.j;
import e.c.c.v.a;
import e.c.c.v.c;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

public class JobsParser {
    public static final String CLOUDTODEVICEMETHOD_TAG = "cloudToDeviceMethod";
    public static final transient String DATEFORMAT = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";
    public static final String JOBID_TAG = "jobId";
    public static final String MAXEXECUTIONTIMEINSECONDS_TAG = "maxExecutionTimeInSeconds";
    public static final String QUERYCONDITION_TAG = "queryCondition";
    public static final transient String SCHEDULE_DEVICE_METHOD = "scheduleDeviceMethod";
    public static final transient String SCHEDULE_UPDATE_TWIN = "scheduleUpdateTwin";
    public static final String STARTTIME_TAG = "startTime";
    public static final transient String TIMEZONE = "UTC";
    public static final String TYPE_TAG = "type";
    public static final String UPDATETWIN_TAG = "updateTwin";
    @a(deserialize = false, serialize = true)
    @c("cloudToDeviceMethod")
    public j cloudToDeviceMethod = null;
    @a(deserialize = false, serialize = true)
    @c("jobId")
    public String jobId;
    @a(deserialize = false, serialize = true)
    @c("type")
    public String jobType;
    @a(deserialize = false, serialize = true)
    @c("maxExecutionTimeInSeconds")
    public long maxExecutionTimeInSeconds;
    @a(deserialize = false, serialize = true)
    @c("queryCondition")
    public String queryCondition;
    @a(deserialize = false, serialize = true)
    @c("startTime")
    public String startTime;
    @a(deserialize = false, serialize = true)
    @c("updateTwin")
    public j updateTwin = null;

    public JobsParser(String str, MethodParser methodParser, String str2, Date date, long j2) {
        if (methodParser != null) {
            validateCommonFields(str, str2, date, j2);
            this.cloudToDeviceMethod = methodParser.toJsonElement();
            this.jobType = SCHEDULE_DEVICE_METHOD;
            this.updateTwin = null;
            return;
        }
        throw new IllegalArgumentException("Null cloudToDeviceMethod parameter");
    }

    private void validateCommonFields(String str, String str2, Date date, long j2) {
        ParserUtility.validateStringUTF8(str);
        if (date == null) {
            throw new IllegalArgumentException("Null start time");
        } else if (j2 >= 0) {
            this.jobId = str;
            this.queryCondition = str2;
            this.maxExecutionTimeInSeconds = j2;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            this.startTime = simpleDateFormat.format(date);
        } else {
            throw new IllegalArgumentException("Negative max execution time in seconds");
        }
    }

    public String toJson() {
        e eVar = new e();
        eVar.f1303l = false;
        eVar.f1298g = true;
        return eVar.a().a((Object) this);
    }

    @Deprecated
    public JobsParser(String str, TwinParser twinParser, String str2, Date date, long j2) {
        if (twinParser != null) {
            validateCommonFields(str, str2, date, j2);
            this.updateTwin = twinParser.toJsonElement();
            this.jobType = SCHEDULE_UPDATE_TWIN;
            this.cloudToDeviceMethod = null;
            return;
        }
        throw new IllegalArgumentException("Null TwinParser parameter");
    }

    public JobsParser(String str, TwinState twinState, String str2, Date date, long j2) {
        if (twinState != null) {
            validateCommonFields(str, str2, date, j2);
            this.updateTwin = twinState.toJsonElement();
            this.jobType = SCHEDULE_UPDATE_TWIN;
            this.cloudToDeviceMethod = null;
            return;
        }
        throw new IllegalArgumentException("Null twinState parameter");
    }

    public JobsParser() {
    }
}
