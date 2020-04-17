package com.microsoft.azure.sdk.iot.deps.serializer;

import com.google.gson.Gson;
import e.c.c.e;
import e.c.c.m;
import e.c.c.s;
import e.c.c.v.a;
import e.c.c.v.c;
import e.c.c.w.t;
import java.lang.reflect.Type;
import java.util.Date;
import java.util.HashMap;

public class ConfigurationParser {
    public static final String CONFIGURATION_ID_NAME = "id";
    public static final String CONTENT_NAME = "content";
    public static final String CONTENT_TYPE_NAME = "contentType";
    public static final String CREATED_TIME_UTC_NAME = "createdTimeUtc";
    public static final String E_TAG_NAME = "etag";
    public static final String LABELS_NAME = "labels";
    public static final String LAST_UPDATED_TIME_UTC_NAME = "lastUpdatedTimeUtc";
    public static final String METRICS_NAME = "metrics";
    public static final String PRIORITY_NAME = "priority";
    public static final String SCHEMA_VERSION_NAME = "schemaVersion";
    public static final String SYSTEM_METRICS_NAME = "systemMetrics";
    public static final String TARGET_CONDITION_NAME = "targetCondition";
    public static transient Gson gson;
    @a(deserialize = true, serialize = false)
    @c("content")
    public ConfigurationContentParser content;
    @a(deserialize = true, serialize = true)
    @c("contentType")
    public String contentType;
    public transient Date createdTimeUtc;
    @a(deserialize = false, serialize = true)
    @c("createdTimeUtc")
    public String createdTimeUtcString;
    @a(deserialize = true, serialize = true)
    @c("etag")
    public String eTag;
    @a(deserialize = true, serialize = true)
    @c("id")
    public String id;
    @a(deserialize = true, serialize = true)
    @c("labels")
    public HashMap<String, String> labels;
    public transient Date lastUpdatedTimeUtc;
    @a(deserialize = false, serialize = true)
    @c("lastUpdatedTimeUtc")
    public String lastUpdatedTimeUtcString;
    @a(deserialize = true, serialize = true)
    @c("metrics")
    public ConfigurationMetricsParser metrics;
    @a(deserialize = true, serialize = true)
    @c("priority")
    public Integer priority;
    @a(deserialize = true, serialize = true)
    @c("schemaVersion")
    public String schemaVersion;
    @a(deserialize = true, serialize = true)
    @c("systemMetrics")
    public ConfigurationMetricsParser systemMetrics;
    @a(deserialize = true, serialize = true)
    @c("targetCondition")
    public String targetCondition;

    static {
        e eVar = new e();
        eVar.f1301j = true;
        eVar.f1298g = true;
        gson = eVar.a();
    }

    public ConfigurationParser() {
    }

    public ConfigurationContentParser getContent() {
        return this.content;
    }

    public String getContentType() {
        return this.contentType;
    }

    public Date getCreatedTimeUtc() {
        return this.createdTimeUtc;
    }

    public String getETag() {
        return this.eTag;
    }

    public String getId() {
        return this.id;
    }

    public HashMap<String, String> getLabels() {
        return this.labels;
    }

    public Date getLastUpdatedTimeUtc() {
        return this.lastUpdatedTimeUtc;
    }

    public ConfigurationMetricsParser getMetrics() {
        return this.metrics;
    }

    public Integer getPriority() {
        return this.priority;
    }

    public String getSchemaVersion() {
        return this.schemaVersion;
    }

    public ConfigurationMetricsParser getSystemMetrics() {
        return this.systemMetrics;
    }

    public String getTargetCondition() {
        return this.targetCondition;
    }

    public void setContent(ConfigurationContentParser configurationContentParser) {
        this.content = configurationContentParser;
    }

    public void setContentType(String str) {
        this.contentType = str;
    }

    public void setCreatedTimeUtc(Date date) {
        this.createdTimeUtc = date;
        if (date == null) {
            this.createdTimeUtcString = null;
        } else {
            this.createdTimeUtcString = ParserUtility.getDateStringFromDate(date);
        }
    }

    public void setETag(String str) {
        this.eTag = str;
    }

    public void setId(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Configuration Id cannot not be null");
        }
        this.id = str;
    }

    public void setLabels(HashMap<String, String> hashMap) {
        this.labels = hashMap;
    }

    public void setLastUpdatedTimeUtc(Date date) {
        this.lastUpdatedTimeUtc = date;
        if (date == null) {
            this.lastUpdatedTimeUtcString = null;
        } else {
            this.lastUpdatedTimeUtcString = ParserUtility.getDateStringFromDate(date);
        }
    }

    public void setMetrics(ConfigurationMetricsParser configurationMetricsParser) {
        this.metrics = configurationMetricsParser;
    }

    public void setPriority(Integer num) {
        this.priority = num;
    }

    public void setSchemaVersion(String str) {
        this.schemaVersion = str;
    }

    public void setSystemMetrics(ConfigurationMetricsParser configurationMetricsParser) {
        this.systemMetrics = configurationMetricsParser;
    }

    public void setTargetCondition(String str) {
        this.targetCondition = str;
    }

    public String toJson() {
        Date date = this.createdTimeUtc;
        if (date != null) {
            this.createdTimeUtcString = ParserUtility.getDateStringFromDate(date);
        }
        Date date2 = this.lastUpdatedTimeUtc;
        if (date2 != null) {
            this.lastUpdatedTimeUtcString = ParserUtility.getDateStringFromDate(date2);
        }
        e eVar = new e();
        eVar.b();
        m c2 = eVar.a().b(this).c();
        ConfigurationContentParser configurationContentParser = this.content;
        if (configurationContentParser != null) {
            c2.a(CONTENT_NAME, configurationContentParser.toJsonElement());
        }
        return c2.toString();
    }

    public ConfigurationParser(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("The provided json cannot be null or empty");
        }
        try {
            Class cls = ConfigurationParser.class;
            ConfigurationParser configurationParser = (ConfigurationParser) t.a(cls).cast(gson.a(str, (Type) cls));
            String str2 = configurationParser.id;
            if (str2 == null || str2.isEmpty()) {
                throw new IllegalArgumentException("The provided json must contain the field for configurationId and its value may not be empty");
            }
            this.id = configurationParser.id;
            this.schemaVersion = configurationParser.schemaVersion;
            this.labels = configurationParser.labels;
            this.content = configurationParser.content;
            this.contentType = configurationParser.contentType;
            this.targetCondition = configurationParser.targetCondition;
            this.priority = configurationParser.priority;
            this.systemMetrics = configurationParser.systemMetrics;
            this.metrics = configurationParser.metrics;
            this.eTag = configurationParser.eTag;
            String str3 = configurationParser.createdTimeUtcString;
            if (str3 != null) {
                this.createdTimeUtcString = str3;
                this.createdTimeUtc = ParserUtility.getDateTimeUtc(configurationParser.createdTimeUtcString);
            }
            String str4 = configurationParser.lastUpdatedTimeUtcString;
            if (str4 != null) {
                this.lastUpdatedTimeUtcString = str4;
                this.lastUpdatedTimeUtc = ParserUtility.getDateTimeUtc(configurationParser.lastUpdatedTimeUtcString);
            }
        } catch (s unused) {
            throw new IllegalArgumentException("The provided json could not be parsed");
        }
    }
}
