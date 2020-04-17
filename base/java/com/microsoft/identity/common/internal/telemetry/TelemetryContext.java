package com.microsoft.identity.common.internal.telemetry;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.provider.Settings;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;

public class TelemetryContext extends Properties {
    public static final String TAG = "TelemetryContext";

    public TelemetryContext(ConcurrentHashMap<String, String> concurrentHashMap) {
        super(concurrentHashMap);
    }

    public static synchronized TelemetryContext create(Context context) {
        TelemetryContext telemetryContext;
        synchronized (TelemetryContext.class) {
            telemetryContext = new TelemetryContext(new ConcurrentHashMap());
            telemetryContext.addApplicationInfo(context);
            telemetryContext.addDeviceInfo(context);
            telemetryContext.addOsInfo();
            telemetryContext.put(TelemetryEventStrings.Device.TIMEZONE, TimeZone.getDefault().getID());
        }
        return telemetryContext;
    }

    public void addApplicationInfo(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            put(TelemetryEventStrings.App.NAME, packageInfo.applicationInfo.packageName);
            put(TelemetryEventStrings.App.VERSION, packageInfo.versionName);
            put(TelemetryEventStrings.App.BUILD, String.valueOf(packageInfo.versionCode));
        } catch (PackageManager.NameNotFoundException unused) {
            Logger.warn(TAG, "Unable to find the app's package name from PackageManager.");
        }
    }

    public void addDeviceInfo(Context context) {
        put(TelemetryEventStrings.Device.MANUFACTURER, Build.MANUFACTURER);
        put(TelemetryEventStrings.Device.MODEL, Build.MODEL);
        put(TelemetryEventStrings.Device.NAME, Build.DEVICE);
        try {
            put(TelemetryEventStrings.Device.ID, StringExtensions.createHash(Settings.Secure.getString(context.getContentResolver(), "android_id")));
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException unused) {
            Logger.warn(TAG, "Unable to get the device id.");
        }
    }

    public void addOsInfo() {
        put(TelemetryEventStrings.Os.NAME, TelemetryEventStrings.Os.OS_NAME);
        put(TelemetryEventStrings.Os.VERSION, Build.VERSION.RELEASE);
        if (Build.VERSION.SDK_INT >= 23) {
            put(TelemetryEventStrings.Os.SECURITY_PATCH, Build.VERSION.SECURITY_PATCH);
        }
    }

    public void isNetworkConnected(boolean z) {
        put(TelemetryEventStrings.Key.NETWORK_CONNECTION, String.valueOf(z));
    }

    public void isNetworkDisabledFromOptimizations(boolean z) {
        put(TelemetryEventStrings.Key.POWER_OPTIMIZATION, String.valueOf(z));
    }
}
