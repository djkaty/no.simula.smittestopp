package com.microsoft.azure.storage.core;

import java.util.ArrayList;

public class ListResponse<T> {
    public static final String ENUMERATION_RESULTS = "EnumerationResults";
    public String marker;
    public Integer maxResults;
    public String nextMarker;
    public String prefix;
    public ArrayList<T> results = new ArrayList<>();

    public String getMarker() {
        return this.marker;
    }

    public Integer getMaxResults() {
        return this.maxResults;
    }

    public String getNextMarker() {
        return this.nextMarker;
    }

    public String getPrefix() {
        return this.prefix;
    }

    public ArrayList<T> getResults() {
        return this.results;
    }

    public void setMarker(String str) {
        this.marker = str;
    }

    public void setMaxResults(Integer num) {
        this.maxResults = num;
    }

    public void setNextMarker(String str) {
        this.nextMarker = str;
    }

    public void setPrefix(String str) {
        this.prefix = str;
    }

    public void setResults(ArrayList<T> arrayList) {
        this.results = arrayList;
    }
}
