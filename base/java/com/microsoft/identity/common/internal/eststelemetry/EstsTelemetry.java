package com.microsoft.identity.common.internal.eststelemetry;

import android.content.Context;
import android.text.TextUtils;
import com.microsoft.identity.common.exception.BaseException;
import com.microsoft.identity.common.internal.cache.SharedPreferencesFileManager;
import com.microsoft.identity.common.internal.logging.DiagnosticContext;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.result.AcquireTokenResult;
import e.a.a.a.a;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class EstsTelemetry {
    public static final String LAST_REQUEST_TELEMETRY_SHARED_PREFERENCES = "com.microsoft.identity.client.last_request_telemetry";
    public static final String TAG = "EstsTelemetry";
    public static volatile EstsTelemetry sEstsTelemetryInstance;
    public IRequestTelemetryCache mLastRequestTelemetryCache;
    public Map<String, RequestTelemetry> mTelemetryMap = new ConcurrentHashMap();

    private IRequestTelemetryCache createLastRequestTelemetryCache(Context context) {
        if (context == null) {
            a.b(new StringBuilder(), TAG, ":createLastRequestTelemetryCache", "Context is NULL. Unable to create last request telemetry cache.");
            return null;
        }
        Logger.verbose(TAG + ":createLastRequestTelemetryCache", "Creating Last Request Telemetry Cache");
        return new SharedPreferencesLastRequestTelemetryCache(new SharedPreferencesFileManager(context, LAST_REQUEST_TELEMETRY_SHARED_PREFERENCES));
    }

    private boolean eligibleToCache(RequestTelemetry requestTelemetry) {
        return !TextUtils.isEmpty(requestTelemetry.getSchemaVersion()) && !TextUtils.isEmpty(requestTelemetry.getCommonTelemetry().get("Microsoft.MSAL.api_id"));
    }

    private RequestTelemetry getCurrentTelemetryInstance(String str) {
        if (this.mTelemetryMap == null || str == null || str.equals("UNSET")) {
            return null;
        }
        RequestTelemetry requestTelemetry = this.mTelemetryMap.get(str);
        if (requestTelemetry != null) {
            return requestTelemetry;
        }
        RequestTelemetry requestTelemetry2 = new RequestTelemetry(true);
        this.mTelemetryMap.put(str, requestTelemetry2);
        return requestTelemetry2;
    }

    public static synchronized EstsTelemetry getInstance() {
        EstsTelemetry estsTelemetry;
        synchronized (EstsTelemetry.class) {
            if (sEstsTelemetryInstance == null) {
                sEstsTelemetryInstance = new EstsTelemetry();
            }
            estsTelemetry = sEstsTelemetryInstance;
        }
        return estsTelemetry;
    }

    private RequestTelemetry loadLastRequestTelemetryFromCache() {
        IRequestTelemetryCache iRequestTelemetryCache = this.mLastRequestTelemetryCache;
        if (iRequestTelemetryCache != null) {
            return iRequestTelemetryCache.getRequestTelemetryFromCache();
        }
        a.b(new StringBuilder(), TAG, ":loadLastRequestTelemetry", "Last Request Telemetry Cache has not been initialized. Cannot load Last Request Telemetry data from cache.");
        return null;
    }

    private RequestTelemetry setupLastFromCurrent(RequestTelemetry requestTelemetry) {
        if (requestTelemetry == null) {
            return new RequestTelemetry("1", false);
        }
        RequestTelemetry requestTelemetry2 = new RequestTelemetry(requestTelemetry.getSchemaVersion(), false);
        for (Map.Entry next : requestTelemetry.getCommonTelemetry().entrySet()) {
            requestTelemetry2.putTelemetry((String) next.getKey(), (String) next.getValue());
        }
        for (Map.Entry next2 : requestTelemetry.getPlatformTelemetry().entrySet()) {
            requestTelemetry2.putTelemetry((String) next2.getKey(), (String) next2.getValue());
        }
        return requestTelemetry2;
    }

    public void emit(Map<String, String> map) {
        if (map != null) {
            for (Map.Entry next : map.entrySet()) {
                emit((String) next.getKey(), (String) next.getValue());
            }
        }
    }

    public void emitApiId(String str) {
        emit("Microsoft.MSAL.api_id", str);
    }

    public void emitForceRefresh(boolean z) {
        emit("Microsoft.MSAL.force_refresh", Schema.getSchemaCompliantStringFromBoolean(z));
    }

    public void flush() {
        flush((String) DiagnosticContext.getRequestContext().get("correlation_id"));
    }

    public String getCurrentTelemetryHeaderString() {
        RequestTelemetry requestTelemetry;
        String str = (String) DiagnosticContext.getRequestContext().get("correlation_id");
        Map<String, RequestTelemetry> map = this.mTelemetryMap;
        if (map == null || str == null || (requestTelemetry = map.get(str)) == null) {
            return null;
        }
        return requestTelemetry.getCompleteTelemetryHeaderString();
    }

    public String getLastTelemetryHeaderString() {
        RequestTelemetry loadLastRequestTelemetryFromCache = loadLastRequestTelemetryFromCache();
        if (loadLastRequestTelemetryFromCache == null) {
            return null;
        }
        return loadLastRequestTelemetryFromCache.getCompleteTelemetryHeaderString();
    }

    public Map<String, String> getTelemetryHeaders() {
        HashMap hashMap = new HashMap();
        String currentTelemetryHeaderString = getCurrentTelemetryHeaderString();
        String lastTelemetryHeaderString = getLastTelemetryHeaderString();
        if (currentTelemetryHeaderString != null) {
            hashMap.put(Schema.CURRENT_REQUEST_HEADER_NAME, currentTelemetryHeaderString);
        } else {
            a.b(new StringBuilder(), TAG, ":getTelemetryHeaders", "Current Request Telemetry Header is null");
        }
        if (lastTelemetryHeaderString != null) {
            hashMap.put(Schema.LAST_REQUEST_HEADER_NAME, lastTelemetryHeaderString);
        } else {
            a.b(new StringBuilder(), TAG, ":getTelemetryHeaders", "Last Request Telemetry Header is null");
        }
        return hashMap;
    }

    public void setupLastRequestTelemetryCache(Context context) {
        IRequestTelemetryCache createLastRequestTelemetryCache = createLastRequestTelemetryCache(context);
        this.mLastRequestTelemetryCache = createLastRequestTelemetryCache;
        if (createLastRequestTelemetryCache != null) {
            Logger.verbose(TAG, "Ests Telemetry cache has been initialized properly.");
        }
    }

    public void emit(String str, String str2) {
        emit((String) DiagnosticContext.getRequestContext().get("correlation_id"), str, str2);
    }

    public void flush(String str) {
        flush(str, (String) null);
    }

    public void flush(String str, BaseException baseException) {
        flush(str, baseException == null ? null : baseException.getErrorCode());
    }

    private void emit(String str, String str2, String str3) {
        RequestTelemetry currentTelemetryInstance = getCurrentTelemetryInstance(str);
        if (currentTelemetryInstance != null) {
            currentTelemetryInstance.putTelemetry(str2, str3);
        }
    }

    public void flush(String str, AcquireTokenResult acquireTokenResult) {
        flush(str, TelemetryUtils.errorFromAcquireTokenResult(acquireTokenResult));
    }

    public void flush(String str, String str2) {
        RequestTelemetry requestTelemetry;
        Map<String, RequestTelemetry> map = this.mTelemetryMap;
        if (map != null && str != null && (requestTelemetry = map.get(str)) != null) {
            RequestTelemetry requestTelemetry2 = setupLastFromCurrent(requestTelemetry);
            requestTelemetry2.putTelemetry("Microsoft.MSAL.correlation_id", str);
            requestTelemetry2.putTelemetry("Microsoft.MSAL.api_error_code", str2);
            requestTelemetry.clearTelemetry();
            this.mTelemetryMap.remove(str);
            if (this.mLastRequestTelemetryCache == null) {
                a.c(new StringBuilder(), TAG, ":flush", "Last Request Telemetry Cache object was null. Unable to save request telemetry to cache.");
            } else if (eligibleToCache(requestTelemetry2)) {
                this.mLastRequestTelemetryCache.clearAll();
                this.mLastRequestTelemetryCache.saveRequestTelemetryToCache(requestTelemetry2);
            }
        }
    }
}
