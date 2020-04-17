package com.microsoft.azure.storage;

import java.util.EnumSet;

public final class LoggingProperties {
    public EnumSet<LoggingOperations> logOperationTypes = EnumSet.noneOf(LoggingOperations.class);
    public Integer retentionIntervalInDays;
    public String version = "1.0";

    public EnumSet<LoggingOperations> getLogOperationTypes() {
        return this.logOperationTypes;
    }

    public Integer getRetentionIntervalInDays() {
        return this.retentionIntervalInDays;
    }

    public String getVersion() {
        return this.version;
    }

    public void setLogOperationTypes(EnumSet<LoggingOperations> enumSet) {
        this.logOperationTypes = enumSet;
    }

    public void setRetentionIntervalInDays(Integer num) {
        this.retentionIntervalInDays = num;
    }

    public void setVersion(String str) {
        this.version = str;
    }
}
