package com.microsoft.azure.sdk.iot.deps.serializer;

import com.google.gson.Gson;
import com.microsoft.azure.sdk.iot.deps.twin.TwinState;
import e.c.c.e;
import e.c.c.j;
import e.c.c.v.a;
import e.c.c.v.c;
import e.c.c.w.t;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Date;
import java.util.Map;

public class JobsResponseParser {
    public static final String CLOUDTODEVICEMETHOD_TAG = "cloudToDeviceMethod";
    public static final String CREATETIME_TAG = "createdTime";
    public static final String CREATE_TIME_UTC_TAG = "createdDateTimeUtc";
    @a(deserialize = false)
    public static final String DATEFORMAT = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";
    public static final String DEVICEID_TAG = "deviceId";
    public static final String DEVICEJOBSSTATISTICS_TAG = "deviceJobStatistics";
    public static final String DEVICE_METHOD_RESPONSE_TAG = "deviceMethodResponse";
    public static final String ENDTIME_TAG = "endTime";
    public static final String END_TIME_UTC_TAG = "endTimeUtc";
    public static final String ERROR_TAG = "error";
    public static final String FAILUREREASON_TAG = "failureReason";
    public static final String JOBID_TAG = "jobId";
    public static final String JOB_TYPE_TAG = "jobType";
    public static final String LAST_UPDATED_TIME_UTC_TAG = "lastUpdatedDateTimeUtc";
    public static final String MAXEXECUTIONTIMEINSECONDS_TAG = "maxExecutionTimeInSeconds";
    public static final String OUTCOME_TAG = "outcome";
    public static final String PARENTJOBID_TAG = "parentJobId";
    public static final String QUERYCONDITION_TAG = "queryCondition";
    public static final String STARTTIME_TAG = "startTime";
    public static final String START_TIME_UTC_TAG = "startTimeUtc";
    public static final String STATUSMESSAGE_TAG = "statusMessage";
    public static final String STATUS_TAG = "status";
    @a(deserialize = false)
    public static final String TIMEZONE = "UTC";
    public static final String TYPE_TAG = "type";
    public static final String UPDATETWIN_TAG = "updateTwin";
    @c("cloudToDeviceMethod")
    public MethodParser cloudToDeviceMethod = null;
    @c("createdTime")
    public String createdTime;
    @a(deserialize = false)
    public Date createdTimeDate;
    @c("createdDateTimeUtc")
    public String createdTimeUTC;
    @c("deviceId")
    public String deviceId = null;
    @c("deviceJobStatistics")
    public JobsStatisticsParser deviceJobStatistics = null;
    @c("endTime")
    public String endTime;
    @a(deserialize = false)
    public Date endTimeDate;
    @c("endTimeUtc")
    public String endTimeUTC;
    @c("error")
    public JobQueryResponseError error = null;
    @c("failureReason")
    public String failureReason = null;
    @c("jobId")
    public String jobId;
    @c("jobType")
    public String jobType;
    @c("status")
    public String jobsStatus;
    @c("lastUpdatedDateTimeUtc")
    public String lastUpdatedTime;
    @a(deserialize = true, serialize = false)
    public Date lastUpdatedTimeDate;
    @c("maxExecutionTimeInSeconds")
    public Long maxExecutionTimeInSeconds;
    public MethodParser methodResponse;
    @c("outcome")
    public j outcome = null;
    @c("parentJobId")
    public String parentJobId = null;
    @c("queryCondition")
    public String queryCondition;
    @c("startTime")
    public String startTime;
    @a(deserialize = false)
    public Date startTimeDate;
    @c("startTimeUtc")
    public String startTimeUTC;
    @c("statusMessage")
    public String statusMessage = null;
    @c("type")
    public String type;
    @c("updateTwin")
    public TwinState updateTwin = null;

    public static JobsResponseParser createFromJson(String str) {
        Object obj;
        String str2;
        e eVar = new e();
        eVar.f1303l = false;
        Gson a = eVar.a();
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Json is null or empty");
        }
        Class cls = JobsResponseParser.class;
        JobsResponseParser jobsResponseParser = (JobsResponseParser) t.a(cls).cast(a.a(str, (Type) cls));
        String str3 = jobsResponseParser.jobId;
        if (str3 == null || str3.isEmpty()) {
            throw new IllegalArgumentException("Json do not contains jobId");
        }
        String str4 = jobsResponseParser.type;
        if ((str4 == null || str4.isEmpty()) && ((str2 = jobsResponseParser.jobType) == null || str2.isEmpty())) {
            throw new IllegalArgumentException("Json do not contains type");
        } else if (jobsResponseParser.type == null || jobsResponseParser.jobType == null) {
            String str5 = jobsResponseParser.jobsStatus;
            if (str5 == null || str5.isEmpty()) {
                throw new IllegalArgumentException("Json do not contains status");
            }
            if (jobsResponseParser.type == null) {
                jobsResponseParser.type = jobsResponseParser.jobType;
            }
            Class cls2 = Map.class;
            Map map = (Map) t.a(cls2).cast(a.a(str, (Type) cls2));
            if (map.containsKey("updateTwin")) {
                jobsResponseParser.updateTwin = TwinState.createFromTwinJson(a.a(map.get("updateTwin")));
            }
            if (map.containsKey("cloudToDeviceMethod")) {
                jobsResponseParser.cloudToDeviceMethod.fromJson(a.a(map.get("cloudToDeviceMethod")));
            }
            if (map.containsKey(OUTCOME_TAG)) {
                j jVar = jobsResponseParser.outcome;
                Class cls3 = Map.class;
                if (jVar == null) {
                    obj = null;
                } else {
                    obj = a.a((e.c.c.y.a) new e.c.c.w.z.a(jVar), (Type) cls3);
                }
                Map map2 = (Map) t.a(cls3).cast(obj);
                if (map2.containsKey(DEVICE_METHOD_RESPONSE_TAG)) {
                    MethodParser methodParser = new MethodParser();
                    methodParser.fromJson(a.a(map2.get(DEVICE_METHOD_RESPONSE_TAG)));
                    jobsResponseParser.methodResponse = methodParser;
                } else {
                    MethodParser methodParser2 = new MethodParser();
                    methodParser2.fromJson(a.a(map.get(OUTCOME_TAG)));
                    jobsResponseParser.methodResponse = methodParser2;
                }
            }
            if (jobsResponseParser.createdTime == null || jobsResponseParser.createdTimeUTC == null) {
                String str6 = jobsResponseParser.createdTime;
                if (str6 != null) {
                    try {
                        jobsResponseParser.createdTimeDate = ParserUtility.getDateTimeUtc(str6);
                    } catch (IllegalArgumentException unused) {
                        jobsResponseParser.createdTimeDate = null;
                    }
                } else {
                    String str7 = jobsResponseParser.createdTimeUTC;
                    if (str7 != null) {
                        try {
                            jobsResponseParser.createdTimeDate = ParserUtility.getDateTimeUtc(str7);
                        } catch (IllegalArgumentException unused2) {
                            jobsResponseParser.createdTimeDate = null;
                        }
                    }
                }
                if (jobsResponseParser.startTime == null || jobsResponseParser.startTimeUTC == null) {
                    String str8 = jobsResponseParser.startTime;
                    if (str8 != null) {
                        try {
                            jobsResponseParser.startTimeDate = ParserUtility.getDateTimeUtc(str8);
                        } catch (IllegalArgumentException unused3) {
                            jobsResponseParser.startTimeDate = null;
                        }
                    } else {
                        String str9 = jobsResponseParser.startTimeUTC;
                        if (str9 != null) {
                            try {
                                jobsResponseParser.startTimeDate = ParserUtility.getDateTimeUtc(str9);
                            } catch (IllegalArgumentException unused4) {
                                jobsResponseParser.startTimeDate = null;
                            }
                        }
                    }
                    if (jobsResponseParser.endTime == null || jobsResponseParser.endTimeUTC == null) {
                        String str10 = jobsResponseParser.endTime;
                        if (str10 != null) {
                            try {
                                jobsResponseParser.endTimeDate = ParserUtility.getDateTimeUtc(str10);
                            } catch (IllegalArgumentException unused5) {
                                jobsResponseParser.endTimeDate = null;
                            }
                        } else {
                            String str11 = jobsResponseParser.endTimeUTC;
                            if (str11 != null) {
                                try {
                                    jobsResponseParser.endTimeDate = ParserUtility.getDateTimeUtc(str11);
                                } catch (IllegalArgumentException unused6) {
                                    jobsResponseParser.endTimeDate = null;
                                }
                            }
                        }
                        String str12 = jobsResponseParser.lastUpdatedTime;
                        if (str12 != null) {
                            try {
                                jobsResponseParser.lastUpdatedTimeDate = ParserUtility.getDateTimeUtc(str12);
                            } catch (IllegalArgumentException unused7) {
                                jobsResponseParser.lastUpdatedTimeDate = null;
                            }
                        }
                        return jobsResponseParser;
                    }
                    throw new IllegalArgumentException("Both endTime and endTimeUTC cannot be sent at the same time");
                }
                throw new IllegalArgumentException("Both startTime and startTimeUTC cannot be sent at the same time");
            }
            throw new IllegalArgumentException("Both createdTime and createdTimeUTC cannot be sent at the same time");
        } else {
            throw new IllegalArgumentException("Json contains both type and jobType");
        }
    }

    public MethodParser getCloudToDeviceMethod() {
        return this.cloudToDeviceMethod;
    }

    public Date getCreatedTime() {
        return this.createdTimeDate;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public Date getEndTime() {
        return this.endTimeDate;
    }

    public JobQueryResponseError getError() {
        return this.error;
    }

    public String getFailureReason() {
        return this.failureReason;
    }

    public String getJobId() {
        return this.jobId;
    }

    public JobsStatisticsParser getJobStatistics() {
        return this.deviceJobStatistics;
    }

    public String getJobsStatus() {
        return this.jobsStatus;
    }

    public Date getLastUpdatedTimeDate() {
        return this.lastUpdatedTimeDate;
    }

    public Long getMaxExecutionTimeInSeconds() {
        return this.maxExecutionTimeInSeconds;
    }

    public MethodParser getOutcome() {
        return this.methodResponse;
    }

    public String getParentJobId() {
        return this.parentJobId;
    }

    public String getQueryCondition() {
        return this.queryCondition;
    }

    public Date getStartTime() {
        return this.startTimeDate;
    }

    public String getStatusMessage() {
        return this.statusMessage;
    }

    public String getType() {
        return this.type;
    }

    @Deprecated
    public TwinParser getUpdateTwin() {
        TwinParser twinParser = new TwinParser();
        try {
            twinParser.updateTwin(this.updateTwin.getDesiredProperty(), this.updateTwin.getReportedProperty(), this.updateTwin.getTags());
            return twinParser;
        } catch (IOException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public TwinState getUpdateTwinState() {
        return this.updateTwin;
    }
}
