package com.microsoft.azure.storage.core;

public class ListingContext {
    public String marker;
    public Integer maxResults;
    public String prefix;

    public ListingContext(String str, Integer num) {
        setPrefix(str);
        setMaxResults(num);
        setMarker((String) null);
    }

    public final String getMarker() {
        return this.marker;
    }

    public final Integer getMaxResults() {
        return this.maxResults;
    }

    public final String getPrefix() {
        return this.prefix;
    }

    public final void setMarker(String str) {
        this.marker = str;
    }

    public final void setMaxResults(Integer num) {
        if (num != null) {
            Utility.assertGreaterThanOrEqual("maxResults", (long) num.intValue(), 1);
        }
        this.maxResults = num;
    }

    public final void setPrefix(String str) {
        this.prefix = str;
    }
}
