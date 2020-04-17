package com.microsoft.azure.sdk.iot.deps.serializer;

import com.google.gson.Gson;
import e.c.c.e;
import e.c.c.v.a;
import e.c.c.v.c;
import e.c.c.w.t;
import java.lang.reflect.Type;
import java.util.Date;

public class FileUploadNotificationParser {
    public static final String BLOB_NAME_TAG = "blobName";
    public static final String BLOB_SIZE_IN_BYTES_TAG = "blobSizeInBytes";
    public static final String BLOB_URI_TAG = "blobUri";
    public static final String DEVICE_ID_TAG = "deviceId";
    public static final String ENQUEUED_TIME_UTC_TAG = "enqueuedTimeUtc";
    public static final String LAST_UPDATED_TIME_TAG = "lastUpdatedTime";
    @a(deserialize = true, serialize = true)
    @c("blobName")
    public String blobName = null;
    @a(deserialize = true, serialize = true)
    @c("blobSizeInBytes")
    public Long blobSizeInBytes = null;
    @a(deserialize = true, serialize = true)
    @c("blobUri")
    public String blobUri = null;
    @a(deserialize = true, serialize = true)
    @c("deviceId")
    public String deviceId = null;
    @a(deserialize = true, serialize = true)
    @c("enqueuedTimeUtc")
    public String enqueuedTimeUtc = null;
    public transient Date enqueuedTimeUtcDate;
    @a(deserialize = true, serialize = true)
    @c("lastUpdatedTime")
    public String lastUpdatedTime = null;
    public transient Date lastUpdatedTimeDate;

    public FileUploadNotificationParser(String str) {
        e eVar = new e();
        eVar.f1303l = false;
        eVar.f1298g = true;
        Gson a = eVar.a();
        ParserUtility.validateStringUTF8(str);
        Class cls = FileUploadNotificationParser.class;
        try {
            FileUploadNotificationParser fileUploadNotificationParser = (FileUploadNotificationParser) t.a(cls).cast(a.a(str, (Type) cls));
            ParserUtility.validateStringUTF8(fileUploadNotificationParser.deviceId);
            ParserUtility.validateStringUTF8(fileUploadNotificationParser.blobUri);
            ParserUtility.validateBlobName(fileUploadNotificationParser.blobName);
            ParserUtility.validateStringUTF8(fileUploadNotificationParser.enqueuedTimeUtc);
            ParserUtility.validateStringUTF8(fileUploadNotificationParser.lastUpdatedTime);
            Long l2 = fileUploadNotificationParser.blobSizeInBytes;
            if (l2 == null) {
                fileUploadNotificationParser.blobSizeInBytes = 0L;
            } else if (l2.longValue() < 0) {
                throw new IllegalArgumentException("negative size");
            }
            this.deviceId = fileUploadNotificationParser.deviceId;
            this.blobUri = fileUploadNotificationParser.blobUri;
            this.blobName = fileUploadNotificationParser.blobName;
            this.lastUpdatedTime = fileUploadNotificationParser.lastUpdatedTime;
            String str2 = fileUploadNotificationParser.enqueuedTimeUtc;
            this.enqueuedTimeUtc = str2;
            this.blobSizeInBytes = fileUploadNotificationParser.blobSizeInBytes;
            this.enqueuedTimeUtcDate = ParserUtility.getDateTimeUtc(str2);
            this.lastUpdatedTimeDate = ParserUtility.stringToDateTimeOffset(this.lastUpdatedTime);
        } catch (Exception e2) {
            throw new IllegalArgumentException("Malformed json:" + e2);
        }
    }

    public String getBlobName() {
        return this.blobName;
    }

    public Long getBlobSizeInBytesTag() {
        return this.blobSizeInBytes;
    }

    public String getBlobUri() {
        return this.blobUri;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public Date getEnqueuedTimeUtc() {
        return this.enqueuedTimeUtcDate;
    }

    public Date getLastUpdatedTime() {
        return this.lastUpdatedTimeDate;
    }

    public FileUploadNotificationParser() {
    }
}
