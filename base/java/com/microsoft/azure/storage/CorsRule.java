package com.microsoft.azure.storage;

import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;

public class CorsRule {
    public List<String> allowedHeaders = new ArrayList();
    public EnumSet<CorsHttpMethods> allowedMethods = EnumSet.noneOf(CorsHttpMethods.class);
    public List<String> allowedOrigins = new ArrayList();
    public List<String> exposedHeaders = new ArrayList();
    public int maxAgeInSeconds = 0;

    public List<String> getAllowedHeaders() {
        return this.allowedHeaders;
    }

    public EnumSet<CorsHttpMethods> getAllowedMethods() {
        return this.allowedMethods;
    }

    public List<String> getAllowedOrigins() {
        return this.allowedOrigins;
    }

    public List<String> getExposedHeaders() {
        return this.exposedHeaders;
    }

    public int getMaxAgeInSeconds() {
        return this.maxAgeInSeconds;
    }

    public void setAllowedHeaders(List<String> list) {
        this.allowedHeaders = list;
    }

    public void setAllowedMethods(EnumSet<CorsHttpMethods> enumSet) {
        this.allowedMethods = enumSet;
    }

    public void setAllowedOrigins(List<String> list) {
        this.allowedOrigins = list;
    }

    public void setExposedHeaders(List<String> list) {
        this.exposedHeaders = list;
    }

    public void setMaxAgeInSeconds(int i2) {
        this.maxAgeInSeconds = i2;
    }
}
