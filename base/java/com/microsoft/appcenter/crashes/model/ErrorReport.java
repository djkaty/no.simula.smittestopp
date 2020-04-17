package com.microsoft.appcenter.crashes.model;

import com.microsoft.appcenter.ingestion.models.Device;
import java.util.Date;

public class ErrorReport {
    public Date appErrorTime;
    public Date appStartTime;
    public Device device;
    public String id;
    public String stackTrace;
    public String threadName;

    public Date getAppErrorTime() {
        return this.appErrorTime;
    }

    public Date getAppStartTime() {
        return this.appStartTime;
    }

    public Device getDevice() {
        return this.device;
    }

    public String getId() {
        return this.id;
    }

    public String getStackTrace() {
        return this.stackTrace;
    }

    public String getThreadName() {
        return this.threadName;
    }

    @Deprecated
    public Throwable getThrowable() {
        return null;
    }

    public void setAppErrorTime(Date date) {
        this.appErrorTime = date;
    }

    public void setAppStartTime(Date date) {
        this.appStartTime = date;
    }

    public void setDevice(Device device2) {
        this.device = device2;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setStackTrace(String str) {
        this.stackTrace = str;
    }

    public void setThreadName(String str) {
        this.threadName = str;
    }
}
