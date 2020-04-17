package com.microsoft.identity.common.internal.ui.webview;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import com.microsoft.identity.client.PublicClientApplication;

public class ProcessUtil {
    public static final String AuthServiceProcess = "auth";

    public static boolean isRunningOnAuthService(Context context) {
        String str = context.getPackageName() + ":" + AuthServiceProcess;
        int myPid = Process.myPid();
        ActivityManager activityManager = (ActivityManager) context.getSystemService(PublicClientApplication.NONNULL_CONSTANTS.ACTIVITY);
        if (activityManager == null || activityManager.getRunningAppProcesses() == null) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo next : activityManager.getRunningAppProcesses()) {
            if (next.pid == myPid && next.processName.equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }
}
