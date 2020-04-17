package com.microsoft.appcenter.utils;

import android.os.Process;

public class ShutdownHelper {
    public static void shutdown(int i2) {
        Process.killProcess(Process.myPid());
        System.exit(i2);
    }
}
