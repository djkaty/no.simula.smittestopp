package com.microsoft.appcenter.utils.storage;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import java.util.Set;

public class SharedPreferencesManager {
    public static final String PREFERENCES_NAME = "AppCenter";
    @SuppressLint({"StaticFieldLeak"})
    public static Context sContext;
    public static SharedPreferences sSharedPreferences;

    public static void clear() {
        SharedPreferences.Editor edit = sSharedPreferences.edit();
        edit.clear();
        edit.apply();
    }

    public static boolean getBoolean(String str) {
        return getBoolean(str, false);
    }

    public static float getFloat(String str) {
        return getFloat(str, 0.0f);
    }

    public static int getInt(String str) {
        return getInt(str, 0);
    }

    public static long getLong(String str) {
        return getLong(str, 0);
    }

    public static String getString(String str) {
        return getString(str, (String) null);
    }

    public static Set<String> getStringSet(String str) {
        return getStringSet(str, (Set<String>) null);
    }

    public static synchronized void initialize(Context context) {
        synchronized (SharedPreferencesManager.class) {
            if (sContext == null) {
                sContext = context;
                sSharedPreferences = context.getSharedPreferences("AppCenter", 0);
            }
        }
    }

    public static void putBoolean(String str, boolean z) {
        SharedPreferences.Editor edit = sSharedPreferences.edit();
        edit.putBoolean(str, z);
        edit.apply();
    }

    public static void putFloat(String str, float f2) {
        SharedPreferences.Editor edit = sSharedPreferences.edit();
        edit.putFloat(str, f2);
        edit.apply();
    }

    public static void putInt(String str, int i2) {
        SharedPreferences.Editor edit = sSharedPreferences.edit();
        edit.putInt(str, i2);
        edit.apply();
    }

    public static void putLong(String str, long j2) {
        SharedPreferences.Editor edit = sSharedPreferences.edit();
        edit.putLong(str, j2);
        edit.apply();
    }

    public static void putString(String str, String str2) {
        SharedPreferences.Editor edit = sSharedPreferences.edit();
        edit.putString(str, str2);
        edit.apply();
    }

    public static void putStringSet(String str, Set<String> set) {
        SharedPreferences.Editor edit = sSharedPreferences.edit();
        edit.putStringSet(str, set);
        edit.apply();
    }

    public static void remove(String str) {
        SharedPreferences.Editor edit = sSharedPreferences.edit();
        edit.remove(str);
        edit.apply();
    }

    public static boolean getBoolean(String str, boolean z) {
        return sSharedPreferences.getBoolean(str, z);
    }

    public static float getFloat(String str, float f2) {
        return sSharedPreferences.getFloat(str, f2);
    }

    public static int getInt(String str, int i2) {
        return sSharedPreferences.getInt(str, i2);
    }

    public static long getLong(String str, long j2) {
        return sSharedPreferences.getLong(str, j2);
    }

    public static String getString(String str, String str2) {
        return sSharedPreferences.getString(str, str2);
    }

    public static Set<String> getStringSet(String str, Set<String> set) {
        return sSharedPreferences.getStringSet(str, set);
    }
}
