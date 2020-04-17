package com.microsoft.appcenter;

import com.microsoft.appcenter.utils.AppCenterLog;

public final class Flags {
    public static final int CRITICAL = 2;
    public static final int DEFAULTS = 1;
    public static final int NORMAL = 1;
    @Deprecated
    public static final int PERSISTENCE_CRITICAL = 2;
    public static final int PERSISTENCE_MASK = 255;
    @Deprecated
    public static final int PERSISTENCE_NORMAL = 1;

    public static int getPersistenceFlag(int i2, boolean z) {
        int i3 = i2 & 255;
        if (i3 == 1 || i3 == 2) {
            return i3;
        }
        if (i3 != 0 && z) {
            AppCenterLog.warn("AppCenter", "Invalid value=" + i3 + " for persistence flag, using NORMAL as a default.");
        }
        return 1;
    }
}
