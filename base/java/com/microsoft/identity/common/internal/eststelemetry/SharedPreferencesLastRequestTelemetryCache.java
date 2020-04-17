package com.microsoft.identity.common.internal.eststelemetry;

import android.text.TextUtils;
import com.microsoft.identity.common.internal.cache.ISharedPreferencesFileManager;
import com.microsoft.identity.common.internal.logging.Logger;
import e.a.a.a.a;
import java.util.Map;

public class SharedPreferencesLastRequestTelemetryCache implements IRequestTelemetryCache {
    public static final String TAG = "SharedPreferencesLastRequestTelemetryCache";
    public final ISharedPreferencesFileManager mSharedPreferencesFileManager;

    public SharedPreferencesLastRequestTelemetryCache(ISharedPreferencesFileManager iSharedPreferencesFileManager) {
        String str = TAG;
        StringBuilder a = a.a("Init: ");
        a.append(TAG);
        Logger.verbose(str, a.toString());
        this.mSharedPreferencesFileManager = iSharedPreferencesFileManager;
    }

    private synchronized void saveTelemetryDataToCache(Map<String, String> map) {
        for (Map.Entry next : map.entrySet()) {
            String str = (String) next.getKey();
            String str2 = (String) next.getValue();
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                this.mSharedPreferencesFileManager.putString(str, str2);
            }
        }
    }

    public synchronized void clearAll() {
        Logger.info(TAG, "Clearing all SharedPreferences entries...");
        this.mSharedPreferencesFileManager.clear();
        Logger.info(TAG, "SharedPreferences cleared.");
    }

    public synchronized RequestTelemetry getRequestTelemetryFromCache() {
        Map<String, String> all = this.mSharedPreferencesFileManager.getAll();
        if (all != null) {
            if (!all.isEmpty()) {
                RequestTelemetry requestTelemetry = new RequestTelemetry(all.get(Schema.SCHEMA_VERSION_KEY), false);
                String[] commonFields = Schema.getCommonFields(false);
                String[] platformFields = Schema.getPlatformFields(false);
                for (String str : commonFields) {
                    requestTelemetry.putTelemetry(str, all.get(str));
                }
                for (String str2 : platformFields) {
                    requestTelemetry.putTelemetry(str2, all.get(str2));
                }
                return requestTelemetry;
            }
        }
        Logger.verbose(TAG + ":getRequestTelemetryFromCache", "Last Request telemetry not found in cache. ");
        return null;
    }

    public ISharedPreferencesFileManager getSharedPreferencesFileManager() {
        return this.mSharedPreferencesFileManager;
    }

    public synchronized void saveRequestTelemetryToCache(RequestTelemetry requestTelemetry) {
        Logger.verbose(TAG, "Saving Request Telemetry to cache...");
        this.mSharedPreferencesFileManager.putString(Schema.SCHEMA_VERSION_KEY, "1");
        saveTelemetryDataToCache(requestTelemetry.getCommonTelemetry());
        saveTelemetryDataToCache(requestTelemetry.getPlatformTelemetry());
    }
}
