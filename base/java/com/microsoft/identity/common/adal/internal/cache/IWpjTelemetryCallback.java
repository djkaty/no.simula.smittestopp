package com.microsoft.identity.common.adal.internal.cache;

import android.content.Context;

public interface IWpjTelemetryCallback {
    void logEvent(Context context, String str, Boolean bool, String str2);
}
