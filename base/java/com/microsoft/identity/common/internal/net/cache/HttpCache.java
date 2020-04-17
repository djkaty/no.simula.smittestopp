package com.microsoft.identity.common.internal.net.cache;

import android.net.http.HttpResponseCache;
import com.microsoft.identity.common.internal.logging.Logger;
import e.a.a.a.a;
import java.io.File;
import java.io.IOException;

public class HttpCache {
    public static final long DEFAULT_HTTP_CACHE_CAPACITY_BYTES = 10485760;
    public static final String DEFAULT_HTTP_CACHE_NAME = "com.microsoft.identity.http-cache";
    public static final String TAG = "HttpCache";

    public static void flush() {
        HttpResponseCache installed = getInstalled();
        if (installed != null) {
            installed.flush();
        } else {
            a.c(new StringBuilder(), TAG, ":flush", "Unable to flush cache because none is installed.");
        }
    }

    public static HttpResponseCache getInstalled() {
        return HttpResponseCache.getInstalled();
    }

    public static boolean initialize(File file, String str, long j2) {
        try {
            HttpResponseCache.install(new File(file, str), j2);
            return true;
        } catch (IOException e2) {
            Logger.error(TAG + ":initialize (File, Filename, Capacity)", "HTTP Response cache installation failed.", e2);
            return false;
        }
    }

    public static boolean initialize(File file) {
        return initialize(file, DEFAULT_HTTP_CACHE_NAME, 10485760);
    }
}
