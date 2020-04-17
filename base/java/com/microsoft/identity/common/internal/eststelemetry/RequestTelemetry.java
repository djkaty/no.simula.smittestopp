package com.microsoft.identity.common.internal.eststelemetry;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.internal.util.StringUtil;
import e.a.a.a.a;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class RequestTelemetry {
    public static final String TAG = "RequestTelemetry";
    public ConcurrentMap<String, String> mCommonTelemetry;
    public boolean mIsCurrentRequest;
    public ConcurrentMap<String, String> mPlatformTelemetry;
    public String mSchemaVersion;

    public RequestTelemetry(boolean z) {
        this("1", z);
    }

    private String getCommonTelemetryHeaderString() {
        return getTelemetryHeaderStringFromFields(Schema.getCommonFields(this.mIsCurrentRequest), this.mCommonTelemetry);
    }

    private String getPlatformTelemetryHeaderString() {
        return getTelemetryHeaderStringFromFields(Schema.getPlatformFields(this.mIsCurrentRequest), this.mPlatformTelemetry);
    }

    private String getTelemetryHeaderStringFromFields(String[] strArr, Map<String, String> map) {
        if (strArr == null || map == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            sb.append(Schema.getSchemaCompliantString(map.get(strArr[i2])));
            if (i2 != strArr.length - 1) {
                sb.append(WWWAuthenticateHeader.COMMA);
            }
        }
        return sb.toString();
    }

    private void putInCommonTelemetry(String str, String str2) {
        this.mCommonTelemetry.putIfAbsent(str, str2);
    }

    private void putInPlatformTelemetry(String str, String str2) {
        this.mPlatformTelemetry.putIfAbsent(str, str2);
    }

    public void clearTelemetry() {
        this.mCommonTelemetry.clear();
        this.mPlatformTelemetry.clear();
    }

    public Map<String, String> getCommonTelemetry() {
        return this.mCommonTelemetry;
    }

    public String getCompleteTelemetryHeaderString() {
        if (StringUtil.isEmpty(this.mSchemaVersion)) {
            a.b(new StringBuilder(), TAG, ":getCompleteTelemetryHeaderString", "SCHEMA_VERSION is null or empty. Telemetry Header String cannot be formed.");
            return null;
        }
        String schemaCompliantString = Schema.getSchemaCompliantString(this.mSchemaVersion);
        String commonTelemetryHeaderString = getCommonTelemetryHeaderString();
        String platformTelemetryHeaderString = getPlatformTelemetryHeaderString();
        return schemaCompliantString + AuthenticationConstants.Broker.CALLER_CACHEKEY_PREFIX + commonTelemetryHeaderString + AuthenticationConstants.Broker.CALLER_CACHEKEY_PREFIX + platformTelemetryHeaderString;
    }

    public Map<String, String> getPlatformTelemetry() {
        return this.mPlatformTelemetry;
    }

    public String getSchemaVersion() {
        return this.mSchemaVersion;
    }

    public void putTelemetry(String str, String str2) {
        if (str != null) {
            String schemaCompliantString = Schema.getSchemaCompliantString(str2);
            if (Schema.isCommonField(str, this.mIsCurrentRequest)) {
                putInCommonTelemetry(str, schemaCompliantString);
            } else if (Schema.isPlatformField(str, this.mIsCurrentRequest)) {
                putInPlatformTelemetry(str, schemaCompliantString);
            } else {
                a.b(new StringBuilder(), TAG, ":putTelemetry", "Supplied key not added to Server telemetry map as it is not part of either common or platform schema.");
            }
        }
    }

    public RequestTelemetry(String str, boolean z) {
        this.mIsCurrentRequest = z;
        this.mSchemaVersion = str;
        this.mCommonTelemetry = new ConcurrentHashMap();
        this.mPlatformTelemetry = new ConcurrentHashMap();
    }
}
