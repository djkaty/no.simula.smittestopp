package com.microsoft.azure.sdk.iot.deps.serializer;

import e.c.c.v.c;

public class JobsStatisticsParser {
    public static final String DEVICECOUNT_TAG = "deviceCount";
    public static final String FAILEDCOUNT_TAG = "failedCount";
    public static final String PENDINGCOUNT_TAG = "pendingCount";
    public static final String RUNNINGCOUNT_TAG = "runningCount";
    public static final String SUCCEEDEDCOUNT_TAG = "succeededCount";
    @c("deviceCount")
    public int deviceCount;
    @c("failedCount")
    public int failedCount;
    @c("pendingCount")
    public int pendingCount;
    @c("runningCount")
    public int runningCount;
    @c("succeededCount")
    public int succeededCount;

    public int getDeviceCount() {
        return this.deviceCount;
    }

    public int getFailedCount() {
        return this.failedCount;
    }

    public int getPendingCount() {
        return this.pendingCount;
    }

    public int getRunningCount() {
        return this.runningCount;
    }

    public int getSucceededCount() {
        return this.succeededCount;
    }
}
