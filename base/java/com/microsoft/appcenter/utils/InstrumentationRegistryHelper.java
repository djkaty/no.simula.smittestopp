package com.microsoft.appcenter.utils;

import android.os.Bundle;

public class InstrumentationRegistryHelper {
    public static final String[] LOCATIONS = {"androidx.test.platform.app.InstrumentationRegistry", "androidx.test.InstrumentationRegistry", "androidx.test.InstrumentationRegistry"};

    public static Bundle getArguments() {
        String[] strArr = LOCATIONS;
        Exception e2 = null;
        int i2 = 0;
        while (i2 < strArr.length) {
            try {
                return (Bundle) getClass(strArr[i2]).getMethod("getArguments", new Class[0]).invoke((Object) null, new Object[0]);
            } catch (Exception e3) {
                e2 = e3;
                i2++;
            }
        }
        throw new IllegalStateException(e2);
    }

    public static Class<?> getClass(String str) {
        return Class.forName(str);
    }
}
