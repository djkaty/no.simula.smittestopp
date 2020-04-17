package com.microsoft.appcenter.utils;

import android.os.Handler;
import android.os.Looper;

public class HandlerUtils {
    public static final Handler sMainHandler = new Handler(Looper.getMainLooper());

    public static Handler getMainHandler() {
        return sMainHandler;
    }

    public static void runOnUiThread(Runnable runnable) {
        if (Thread.currentThread() == sMainHandler.getLooper().getThread()) {
            runnable.run();
        } else {
            sMainHandler.post(runnable);
        }
    }
}
