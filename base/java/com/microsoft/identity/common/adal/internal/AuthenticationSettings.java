package com.microsoft.identity.common.adal.internal;

import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

public enum AuthenticationSettings {
    INSTANCE;
    
    public static final int DEFAULT_EXPIRATION_BUFFER = 300;
    public static final int DEFAULT_READ_CONNECT_TIMEOUT = 30000;
    public static final int SECRET_RAW_KEY_LENGTH = 32;
    public String mActivityPackageName;
    public String mBrokerPackageName;
    public final Map<String, byte[]> mBrokerSecretKeys;
    public String mBrokerSignature;
    public Class<?> mClazzDeviceCertProxy;
    public int mConnectTimeOut;
    public boolean mEnableHardwareAcceleration;
    public int mExpirationBuffer;
    public int mReadTimeOut;
    public AtomicReference<byte[]> mSecretKeyData;
    public String mSharedPrefPackageName;
    public boolean mUseBroker;

    public void clearBrokerSecretKeys() {
        this.mBrokerSecretKeys.clear();
    }

    public void clearSecretKeysForTestCases() {
        this.mBrokerSecretKeys.clear();
        this.mSecretKeyData.set((Object) null);
    }

    public String getActivityPackageName() {
        return this.mActivityPackageName;
    }

    public String getBrokerPackageName() {
        return this.mBrokerPackageName;
    }

    public Map<String, byte[]> getBrokerSecretKeys() {
        return Collections.unmodifiableMap(this.mBrokerSecretKeys);
    }

    public String getBrokerSignature() {
        return this.mBrokerSignature;
    }

    public int getConnectTimeOut() {
        return this.mConnectTimeOut;
    }

    public Class<?> getDeviceCertificateProxy() {
        return this.mClazzDeviceCertProxy;
    }

    public boolean getDisableWebViewHardwareAcceleration() {
        return this.mEnableHardwareAcceleration;
    }

    public int getExpirationBuffer() {
        return this.mExpirationBuffer;
    }

    public int getReadTimeOut() {
        return this.mReadTimeOut;
    }

    public byte[] getSecretKeyData() {
        return this.mSecretKeyData.get();
    }

    public String getSharedPrefPackageName() {
        return this.mSharedPrefPackageName;
    }

    @Deprecated
    public boolean getSkipBroker() {
        return !this.mUseBroker;
    }

    public boolean getUseBroker() {
        return this.mUseBroker;
    }

    public void setActivityPackageName(String str) {
        if (!StringExtensions.isNullOrBlank(str)) {
            this.mActivityPackageName = str;
            return;
        }
        throw new IllegalArgumentException("activityPackageName cannot be empty or null");
    }

    public void setBrokerPackageName(String str) {
        if (!StringExtensions.isNullOrBlank(str)) {
            this.mBrokerPackageName = str;
            return;
        }
        throw new IllegalArgumentException("packageName cannot be empty or null");
    }

    public void setBrokerSecretKeys(Map<String, byte[]> map) {
        if (map == null) {
            throw new IllegalArgumentException("The passed in secret key map is null.");
        } else if (map.size() == 2) {
            for (Map.Entry next : map.entrySet()) {
                if (next.getValue() == null || ((byte[]) next.getValue()).length != 32) {
                    throw new IllegalArgumentException("Passed in raw key is null or length is not as expected. ");
                }
                this.mBrokerSecretKeys.put(next.getKey(), next.getValue());
            }
        } else {
            throw new IllegalArgumentException("Expect two keys are passed in.");
        }
    }

    public void setBrokerSignature(String str) {
        if (!StringExtensions.isNullOrBlank(str)) {
            this.mBrokerSignature = str;
            return;
        }
        throw new IllegalArgumentException("brokerSignature cannot be empty or null");
    }

    public void setConnectTimeOut(int i2) {
        if (i2 >= 0) {
            this.mConnectTimeOut = i2;
            return;
        }
        throw new IllegalArgumentException("Invalid timeOutMillis");
    }

    public void setDeviceCertificateProxyClass(Class cls) {
        if (IDeviceCertificate.class.isAssignableFrom(cls)) {
            this.mClazzDeviceCertProxy = cls;
            return;
        }
        throw new IllegalArgumentException("clazz");
    }

    public void setDisableWebViewHardwareAcceleration(boolean z) {
        this.mEnableHardwareAcceleration = z;
    }

    public void setExpirationBuffer(int i2) {
        this.mExpirationBuffer = i2;
    }

    public void setReadTimeOut(int i2) {
        if (i2 >= 0) {
            this.mReadTimeOut = i2;
            return;
        }
        throw new IllegalArgumentException("Invalid timeOutMillis");
    }

    public void setSecretKey(byte[] bArr) {
        if (bArr == null || bArr.length != 32) {
            throw new IllegalArgumentException("rawKey");
        }
        this.mSecretKeyData.set(bArr);
    }

    public void setSharedPrefPackageName(String str) {
        this.mSharedPrefPackageName = str;
    }

    @Deprecated
    public void setSkipBroker(boolean z) {
        this.mUseBroker = !z;
    }

    public void setUseBroker(boolean z) {
        this.mUseBroker = z;
    }
}
