package com.microsoft.azure.storage;

public final class ServiceProperties {
    public CorsProperties cors;
    public String defaultServiceVersion;
    public DeleteRetentionPolicy deleteRetentionPolicy;
    public MetricsProperties hourMetrics;
    public LoggingProperties logging;
    public MetricsProperties minuteMetrics;
    public StaticWebsiteProperties staticWebsiteProperties;

    public ServiceProperties() {
        setLogging(new LoggingProperties());
        setHourMetrics(new MetricsProperties());
        setMinuteMetrics(new MetricsProperties());
        setCors(new CorsProperties());
    }

    public CorsProperties getCors() {
        return this.cors;
    }

    public String getDefaultServiceVersion() {
        return this.defaultServiceVersion;
    }

    public DeleteRetentionPolicy getDeleteRetentionPolicy() {
        return this.deleteRetentionPolicy;
    }

    public MetricsProperties getHourMetrics() {
        return this.hourMetrics;
    }

    public LoggingProperties getLogging() {
        return this.logging;
    }

    public MetricsProperties getMinuteMetrics() {
        return this.minuteMetrics;
    }

    public StaticWebsiteProperties getStaticWebsiteProperties() {
        return this.staticWebsiteProperties;
    }

    public void setCors(CorsProperties corsProperties) {
        this.cors = corsProperties;
    }

    public void setDefaultServiceVersion(String str) {
        this.defaultServiceVersion = str;
    }

    public void setDeleteRetentionPolicy(DeleteRetentionPolicy deleteRetentionPolicy2) {
        this.deleteRetentionPolicy = deleteRetentionPolicy2;
    }

    public void setHourMetrics(MetricsProperties metricsProperties) {
        this.hourMetrics = metricsProperties;
    }

    public void setLogging(LoggingProperties loggingProperties) {
        this.logging = loggingProperties;
    }

    public void setMinuteMetrics(MetricsProperties metricsProperties) {
        this.minuteMetrics = metricsProperties;
    }

    public void setStaticWebsiteProperties(StaticWebsiteProperties staticWebsiteProperties2) {
        this.staticWebsiteProperties = staticWebsiteProperties2;
    }
}
