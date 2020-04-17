package com.microsoft.azure.storage.blob;

import com.microsoft.appcenter.crashes.utils.ErrorLogHelper;
import com.microsoft.azure.storage.core.Utility;
import com.microsoft.identity.common.internal.broker.BrokerResult;
import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;
import java.util.Locale;

public enum CopyStatus {
    UNSPECIFIED,
    INVALID,
    PENDING,
    SUCCESS,
    ABORTED,
    FAILED;

    public static CopyStatus parse(String str) {
        if (Utility.isNullOrEmpty(str)) {
            return UNSPECIFIED;
        }
        if ("invalid".equals(str.toLowerCase(Locale.US))) {
            return INVALID;
        }
        if (ErrorLogHelper.PENDING_MINIDUMP_DIRECTORY.equals(str.toLowerCase(Locale.US))) {
            return PENDING;
        }
        if (BrokerResult.SerializedNames.SUCCESS.equals(str.toLowerCase(Locale.US))) {
            return SUCCESS;
        }
        if ("aborted".equals(str.toLowerCase(Locale.US))) {
            return ABORTED;
        }
        if (TelemetryEventStrings.Value.FAILED.equals(str.toLowerCase(Locale.US))) {
            return FAILED;
        }
        return UNSPECIFIED;
    }
}
