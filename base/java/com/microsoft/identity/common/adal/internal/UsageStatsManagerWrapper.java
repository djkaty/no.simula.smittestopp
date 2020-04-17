package com.microsoft.identity.common.adal.internal;

import android.annotation.TargetApi;
import android.app.usage.UsageStatsManager;
import android.content.Context;

public class UsageStatsManagerWrapper {
    public static UsageStatsManagerWrapper sInstance;

    public static synchronized UsageStatsManagerWrapper getInstance() {
        UsageStatsManagerWrapper usageStatsManagerWrapper;
        synchronized (UsageStatsManagerWrapper.class) {
            if (sInstance == null) {
                sInstance = new UsageStatsManagerWrapper();
            }
            usageStatsManagerWrapper = sInstance;
        }
        return usageStatsManagerWrapper;
    }

    public static synchronized void setInstance(UsageStatsManagerWrapper usageStatsManagerWrapper) {
        synchronized (UsageStatsManagerWrapper.class) {
            sInstance = usageStatsManagerWrapper;
        }
    }

    @TargetApi(23)
    public boolean isAppInactive(Context context) {
        return ((UsageStatsManager) context.getSystemService("usagestats")).isAppInactive(context.getPackageName());
    }
}
