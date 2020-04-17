package com.microsoft.azure.sdk.iot.deps.serializer;

import com.google.gson.Gson;
import e.c.c.s;
import e.c.c.v.a;
import e.c.c.v.c;
import e.c.c.w.t;
import java.lang.reflect.Type;
import java.util.Date;

public class JobPropertiesParser {
    public static final String END_TIME_UTC_NAME = "endTimeUtc";
    public static final String EXCLUDE_KEYS_IN_EXPORT_NAME = "excludeKeysInExport";
    public static final String FAILURE_REASON_NAME = "failureReason";
    public static final String INPUT_BLOB_CONTAINER_URI_NAME = "inputBlobContainerUri";
    public static final String JOB_ID_NAME = "jobId";
    public static final String OUTPUT_BLOB_CONTAINER_URI_NAME = "outputBlobContainerUri";
    public static final String PROGRESS_NAME = "progress";
    public static final String START_TIME_UTC_NAME = "startTimeUtc";
    public static final String STATUS_NAME = "status";
    public static final String STORAGE_AUTHENTICATION_TYPE = "storageAuthenticationType";
    public static final String TYPE_NAME = "type";
    public static transient Gson gson = new Gson();
    public transient Date endTimeUtc;
    @a(deserialize = true, serialize = true)
    @c("endTimeUtc")
    public String endTimeUtcString;
    @a(deserialize = true, serialize = true)
    @c("excludeKeysInExport")
    public boolean excludeKeysInExport;
    @a(deserialize = true, serialize = true)
    @c("failureReason")
    public String failureReason;
    @a(deserialize = true, serialize = true)
    @c("inputBlobContainerUri")
    public String inputBlobContainerUri;
    @a(deserialize = true, serialize = true)
    @c("jobId")
    public String jobId;
    @a(deserialize = true, serialize = true)
    @c("outputBlobContainerUri")
    public String outputBlobContainerUri;
    @a(deserialize = true, serialize = true)
    @c("progress")
    public int progress;
    public transient Date startTimeUtc;
    @a(deserialize = true, serialize = true)
    @c("startTimeUtc")
    public String startTimeUtcString;
    @a(deserialize = true, serialize = true)
    @c("status")
    public String status;
    @a(deserialize = true, serialize = true)
    @c("storageAuthenticationType")
    public StorageAuthenticationType storageAuthenticationType;
    @a(deserialize = true, serialize = true)
    @c("type")
    public String type;

    public JobPropertiesParser() {
    }

    public Date getEndTimeUtc() {
        return this.endTimeUtc;
    }

    public String getFailureReason() {
        return this.failureReason;
    }

    public String getInputBlobContainerUri() {
        return this.inputBlobContainerUri;
    }

    @Deprecated
    public String getJobId() {
        return this.jobId;
    }

    public final String getJobIdFinal() {
        return this.jobId;
    }

    public String getOutputBlobContainerUri() {
        return this.outputBlobContainerUri;
    }

    public int getProgress() {
        return this.progress;
    }

    public Date getStartTimeUtc() {
        return this.startTimeUtc;
    }

    public String getStatus() {
        return this.status;
    }

    public StorageAuthenticationType getStorageAuthenticationType() {
        return this.storageAuthenticationType;
    }

    public String getType() {
        return this.type;
    }

    public boolean isExcludeKeysInExport() {
        return this.excludeKeysInExport;
    }

    public void setEndTimeUtc(Date date) {
        this.endTimeUtc = date;
        if (date == null) {
            this.endTimeUtcString = null;
        } else {
            this.endTimeUtcString = ParserUtility.getDateStringFromDate(date);
        }
    }

    public void setExcludeKeysInExport(boolean z) {
        this.excludeKeysInExport = z;
    }

    public void setFailureReason(String str) {
        this.failureReason = str;
    }

    public void setInputBlobContainerUri(String str) {
        this.inputBlobContainerUri = str;
    }

    public void setJobId(String str) {
        if (str != null) {
            this.jobId = str;
            return;
        }
        throw new IllegalArgumentException("jobId cannot be null");
    }

    public void setOutputBlobContainerUri(String str) {
        this.outputBlobContainerUri = str;
    }

    public void setProgress(int i2) {
        this.progress = i2;
    }

    public void setStartTimeUtc(Date date) {
        this.startTimeUtc = date;
        if (date == null) {
            this.startTimeUtcString = null;
        } else {
            this.startTimeUtcString = ParserUtility.getDateStringFromDate(date);
        }
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public void setStorageAuthenticationType(StorageAuthenticationType storageAuthenticationType2) {
        this.storageAuthenticationType = storageAuthenticationType2;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String toJson() {
        Date date = this.startTimeUtc;
        if (date != null) {
            this.startTimeUtcString = ParserUtility.getDateStringFromDate(date);
        }
        Date date2 = this.endTimeUtc;
        if (date2 != null) {
            this.endTimeUtcString = ParserUtility.getDateStringFromDate(date2);
        }
        return gson.a((Object) this);
    }

    public JobPropertiesParser(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("The provided json cannot be null or empty");
        }
        try {
            Class cls = JobPropertiesParser.class;
            JobPropertiesParser jobPropertiesParser = (JobPropertiesParser) t.a(cls).cast(gson.a(str, (Type) cls));
            if (jobPropertiesParser.getJobIdFinal() == null || jobPropertiesParser.getJobIdFinal().isEmpty()) {
                throw new IllegalArgumentException("The provided json is missing the jobId field");
            }
            this.inputBlobContainerUri = jobPropertiesParser.inputBlobContainerUri;
            this.type = jobPropertiesParser.type;
            this.status = jobPropertiesParser.status;
            this.jobId = jobPropertiesParser.jobId;
            this.excludeKeysInExport = jobPropertiesParser.excludeKeysInExport;
            this.progress = jobPropertiesParser.progress;
            this.outputBlobContainerUri = jobPropertiesParser.outputBlobContainerUri;
            this.failureReason = jobPropertiesParser.failureReason;
            this.storageAuthenticationType = jobPropertiesParser.storageAuthenticationType;
            String str2 = jobPropertiesParser.endTimeUtcString;
            if (str2 != null) {
                this.endTimeUtcString = str2;
                this.endTimeUtc = ParserUtility.getDateTimeUtc(jobPropertiesParser.endTimeUtcString);
            }
            String str3 = jobPropertiesParser.startTimeUtcString;
            if (str3 != null) {
                this.startTimeUtcString = str3;
                this.startTimeUtc = ParserUtility.getDateTimeUtc(jobPropertiesParser.startTimeUtcString);
            }
        } catch (s unused) {
            throw new IllegalArgumentException("The provided json could not be parsed");
        }
    }
}
