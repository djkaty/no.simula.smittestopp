package com.microsoft.identity.common.adal.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.PowerManager;

public class PowerManagerWrapper {
    public static PowerManagerWrapper sInstance;

    public static synchronized PowerManagerWrapper getInstance() {
        PowerManagerWrapper powerManagerWrapper;
        synchronized (PowerManagerWrapper.class) {
            if (sInstance == null) {
                sInstance = new PowerManagerWrapper();
            }
            powerManagerWrapper = sInstance;
        }
        return powerManagerWrapper;
    }

    public static void setInstance(PowerManagerWrapper powerManagerWrapper) {
        sInstance = powerManagerWrapper;
    }

    @TargetApi(23)
    public boolean isDeviceIdleMode(Context context) {
        return ((PowerManager) context.getSystemService("power")).isDeviceIdleMode();
    }

    @TargetApi(23)
    public boolean isIgnoringBatteryOptimizations(Context context) {
        return ((PowerManager) context.getSystemService("power")).isIgnoringBatteryOptimizations(context.getPackageName());
    }
}
