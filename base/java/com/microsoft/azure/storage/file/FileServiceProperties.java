package com.microsoft.azure.storage.file;

import com.microsoft.azure.storage.CorsProperties;
import com.microsoft.azure.storage.LoggingProperties;
import com.microsoft.azure.storage.MetricsProperties;
import com.microsoft.azure.storage.ServiceProperties;

public class FileServiceProperties {
    public ServiceProperties serviceProperties;

    public FileServiceProperties() {
        this(new ServiceProperties());
    }

    public CorsProperties getCors() {
        return this.serviceProperties.getCors();
    }

    public MetricsProperties getHourMetrics() {
        return this.serviceProperties.getHourMetrics();
    }

    public MetricsProperties getMinuteMetrics() {
        return this.serviceProperties.getMinuteMetrics();
    }

    public ServiceProperties getServiceProperties() {
        return this.serviceProperties;
    }

    public void setCors(CorsProperties corsProperties) {
        this.serviceProperties.setCors(corsProperties);
    }

    public void setHourMetrics(MetricsProperties metricsProperties) {
        this.serviceProperties.setHourMetrics(metricsProperties);
    }

    public void setMinuteMetrics(MetricsProperties metricsProperties) {
        this.serviceProperties.setMinuteMetrics(metricsProperties);
    }

    public FileServiceProperties(ServiceProperties serviceProperties2) {
        this.serviceProperties = serviceProperties2;
        serviceProperties2.setLogging((LoggingProperties) null);
        this.serviceProperties.setDefaultServiceVersion((String) null);
    }
}
