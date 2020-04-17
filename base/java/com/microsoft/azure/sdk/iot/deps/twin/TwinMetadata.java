package com.microsoft.azure.sdk.iot.deps.twin;

import com.microsoft.azure.sdk.iot.deps.serializer.ParserUtility;
import com.microsoft.azure.sdk.iot.deps.util.Tools;
import e.c.c.j;
import e.c.c.m;
import java.util.Date;
import java.util.Map;

public class TwinMetadata {
    public static final String LAST_UPDATE_TAG = "$lastUpdated";
    public static final String LAST_UPDATE_VERSION_TAG = "$lastUpdatedVersion";
    public Date lastUpdated;
    public Integer lastUpdatedVersion;

    public TwinMetadata(String str, Integer num) {
        if (!Tools.isNullOrEmpty(str).booleanValue()) {
            this.lastUpdated = ParserUtility.getDateTimeUtc(str);
        }
        this.lastUpdatedVersion = num;
        if (num == null && this.lastUpdated == null) {
            throw new IllegalArgumentException("no valid data to create a TwinMetadata.");
        }
    }

    public static TwinMetadata tryExtractFromMap(Object obj) {
        if (!(obj instanceof Map)) {
            return null;
        }
        Integer num = null;
        String str = null;
        for (Map.Entry entry : ((Map) obj).entrySet()) {
            String str2 = (String) entry.getKey();
            if (str2.equals("$lastUpdated")) {
                str = (String) entry.getValue();
            } else if (!str2.equals("$lastUpdatedVersion")) {
                continue;
            } else if (entry.getValue() instanceof Number) {
                num = Integer.valueOf(((Number) entry.getValue()).intValue());
            } else {
                throw new IllegalArgumentException("Version in the metadata shall be a number");
            }
        }
        if (num != null || !Tools.isNullOrEmpty(str).booleanValue()) {
            return new TwinMetadata(str, num);
        }
        return null;
    }

    public Date getLastUpdated() {
        if (this.lastUpdated == null) {
            return null;
        }
        return new Date(this.lastUpdated.getTime());
    }

    public Integer getLastUpdatedVersion() {
        if (this.lastUpdatedVersion == null) {
            return null;
        }
        return new Integer(this.lastUpdatedVersion.intValue());
    }

    public j toJsonElement() {
        m mVar = new m();
        Date date = this.lastUpdated;
        if (date != null) {
            mVar.a("$lastUpdated", mVar.a((Object) ParserUtility.dateTimeUtcToString(date)));
        }
        Integer num = this.lastUpdatedVersion;
        if (num != null) {
            mVar.a("$lastUpdatedVersion", mVar.a((Object) num));
        }
        return mVar;
    }

    public String toString() {
        return toJsonElement().toString();
    }

    public TwinMetadata(TwinMetadata twinMetadata) {
        if (twinMetadata != null) {
            this.lastUpdated = twinMetadata.getLastUpdated();
            this.lastUpdatedVersion = twinMetadata.getLastUpdatedVersion();
            return;
        }
        throw new IllegalArgumentException("metadata to copy cannot be null");
    }
}
