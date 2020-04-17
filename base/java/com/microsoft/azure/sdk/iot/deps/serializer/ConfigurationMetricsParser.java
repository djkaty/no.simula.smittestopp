package com.microsoft.azure.sdk.iot.deps.serializer;

import com.google.gson.Gson;
import e.c.c.s;
import e.c.c.v.a;
import e.c.c.v.c;
import e.c.c.w.t;
import java.lang.reflect.Type;
import java.util.Map;

public class ConfigurationMetricsParser {
    public static final String QUERIES_NAME = "queries";
    public static final String RESULTS_NAME = "results";
    public static transient Gson gson = new Gson();
    @a(deserialize = true, serialize = true)
    @c("queries")
    public Map<String, String> queries;
    @a(deserialize = true, serialize = true)
    @c("results")
    public Map<String, Long> results;

    public ConfigurationMetricsParser() {
    }

    public Map<String, String> getQueries() {
        return this.queries;
    }

    public Map<String, Long> getResults() {
        return this.results;
    }

    public void setQueries(Map<String, String> map) {
        this.queries = map;
    }

    public void setResults(Map<String, Long> map) {
        this.results = map;
    }

    public String toJson() {
        return gson.a((Object) this);
    }

    public ConfigurationMetricsParser(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("The provided json cannot be null or empty");
        }
        try {
            Class cls = ConfigurationMetricsParser.class;
            ConfigurationMetricsParser configurationMetricsParser = (ConfigurationMetricsParser) t.a(cls).cast(gson.a(str, (Type) cls));
            this.results = configurationMetricsParser.results;
            this.queries = configurationMetricsParser.queries;
        } catch (s unused) {
            throw new IllegalArgumentException("The provided json could not be parsed");
        }
    }
}
