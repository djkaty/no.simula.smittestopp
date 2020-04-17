package com.microsoft.identity.common.internal.cache;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.microsoft.identity.common.adal.internal.cache.IStorageHelper;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.internal.logging.Logger;
import e.a.a.a.a;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.Map;

public class SharedPreferencesFileManager implements ISharedPreferencesFileManager {
    public static final String TAG = "SharedPreferencesFileManager";
    public final SharedPreferences mSharedPreferences;
    public final String mSharedPreferencesFileName;
    public final IStorageHelper mStorageHelper;

    public SharedPreferencesFileManager(Context context, String str) {
        String str2 = TAG;
        StringBuilder a = a.a("Init: ");
        a.append(TAG);
        Logger.verbose(str2, a.toString());
        this.mSharedPreferencesFileName = str;
        this.mSharedPreferences = context.getSharedPreferences(str, 0);
        this.mStorageHelper = null;
    }

    private String decrypt(String str) {
        return encryptDecryptInternal(str, false);
    }

    private String encrypt(String str) {
        return encryptDecryptInternal(str, true);
    }

    private String encryptDecryptInternal(String str, boolean z) {
        String str2;
        if (z) {
            try {
                str2 = this.mStorageHelper.encrypt(str);
            } catch (IOException | GeneralSecurityException e2) {
                e = e2;
                String a = a.a(new StringBuilder(), TAG, ":", "encryptDecryptInternal");
                String a2 = a.a(a.a("Failed to "), z ? "encrypt" : "decrypt", " value");
                if (z) {
                    e = null;
                }
                Logger.error(a, a2, e);
                return null;
            }
        } else {
            str2 = this.mStorageHelper.decrypt(str);
        }
        return str2;
    }

    private void logWarningAndRemoveKey(String str) {
        Logger.warn(TAG, "Failed to decrypt value! This usually signals an issue with KeyStore or the provided SecretKeys.");
        remove(str);
    }

    @SuppressLint({"ApplySharedPref"})
    public final void clear() {
        SharedPreferences.Editor edit = this.mSharedPreferences.edit();
        edit.clear();
        edit.commit();
    }

    public final boolean contains(String str) {
        return !TextUtils.isEmpty(getString(str));
    }

    public final Map<String, String> getAll() {
        Map<String, ?> all = this.mSharedPreferences.getAll();
        if (this.mStorageHelper != null) {
            Iterator<Map.Entry<String, ?>> it = all.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry next = it.next();
                String decrypt = decrypt((String) next.getValue());
                if (TextUtils.isEmpty(decrypt)) {
                    logWarningAndRemoveKey((String) next.getKey());
                    it.remove();
                } else {
                    next.setValue(decrypt);
                }
            }
        }
        return all;
    }

    public final String getSharedPreferencesFileName() {
        return this.mSharedPreferencesFileName;
    }

    public final String getString(String str) {
        String string = this.mSharedPreferences.getString(str, (String) null);
        if (this.mStorageHelper != null && !StringExtensions.isNullOrBlank(string)) {
            string = decrypt(string);
            if (StringExtensions.isNullOrBlank(string)) {
                logWarningAndRemoveKey(str);
            }
        }
        return string;
    }

    @SuppressLint({"ApplySharedPref"})
    public final void putString(String str, String str2) {
        SharedPreferences.Editor edit = this.mSharedPreferences.edit();
        if (this.mStorageHelper == null) {
            edit.putString(str, str2);
        } else {
            edit.putString(str, encrypt(str2));
        }
        edit.commit();
    }

    @SuppressLint({"ApplySharedPref"})
    public void remove(String str) {
        Logger.info(TAG, "Removing cache key");
        SharedPreferences.Editor edit = this.mSharedPreferences.edit();
        edit.remove(str);
        edit.commit();
        String str2 = TAG;
        Logger.infoPII(str2, "Removed cache key [" + str + "]");
    }

    public SharedPreferencesFileManager(Context context, String str, int i2) {
        String str2 = TAG;
        StringBuilder a = a.a("Init with operating mode: ");
        a.append(TAG);
        Logger.verbose(str2, a.toString());
        this.mSharedPreferencesFileName = str;
        this.mSharedPreferences = context.getSharedPreferences(str, i2);
        this.mStorageHelper = null;
    }

    public SharedPreferencesFileManager(Context context, String str, IStorageHelper iStorageHelper) {
        String str2 = TAG;
        StringBuilder a = a.a("Init with storage helper:  ");
        a.append(TAG);
        Logger.verbose(str2, a.toString());
        this.mSharedPreferencesFileName = str;
        this.mSharedPreferences = context.getSharedPreferences(str, 0);
        this.mStorageHelper = iStorageHelper;
    }

    public SharedPreferencesFileManager(Context context, String str, int i2, IStorageHelper iStorageHelper) {
        String str2 = TAG;
        StringBuilder a = a.a("Init with operating mode and storage helper ");
        a.append(TAG);
        Logger.verbose(str2, a.toString());
        this.mSharedPreferencesFileName = str;
        this.mSharedPreferences = context.getSharedPreferences(str, i2);
        this.mStorageHelper = iStorageHelper;
    }
}
