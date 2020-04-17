package com.microsoft.azure.storage;

public final class MetricsProperties {
    public MetricsLevel metricsLevel = MetricsLevel.DISABLED;
    public Integer retentionIntervalInDays;
    public String version = "1.0";

    public MetricsLevel getMetricsLevel() {
        return this.metricsLevel;
    }

    public Integer getRetentionIntervalInDays() {
        return this.retentionIntervalInDays;
    }

    public String getVersion() {
        return this.version;
    }

    public void setMetricsLevel(MetricsLevel metricsLevel2) {
        this.metricsLevel = metricsLevel2;
    }

    public void setRetentionIntervalInDays(Integer num) {
        this.retentionIntervalInDays = num;
    }

    public void setVersion(String str) {
        this.version = str;
    }
}
