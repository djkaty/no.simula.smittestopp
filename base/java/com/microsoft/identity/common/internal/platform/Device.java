package com.microsoft.identity.common.internal.platform;

import android.os.Build;
import com.microsoft.identity.common.exception.ClientException;
import java.io.IOException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class Device {
    public static IDevicePopManager sDevicePoPManager;

    public static final class PlatformIdParameters {
        public static final String BROKER_VERSION = "x-client-brkrver";
        public static final String CPU_PLATFORM = "x-client-CPU";
        public static final String DEVICE_MODEL = "x-client-DM";
        public static final String OS = "x-client-OS";
        public static final String PRODUCT = "x-client-SKU";
        public static final String PRODUCT_NAME = "MSAL.Android";
        public static final String PRODUCT_VERSION = "1.4.0";
        public static final String VERSION = "x-client-Ver";
    }

    public static int getApiLevel() {
        return Build.VERSION.SDK_INT;
    }

    public static synchronized IDevicePopManager getDevicePoPManagerInstance() {
        IDevicePopManager iDevicePopManager;
        synchronized (Device.class) {
            try {
                if (sDevicePoPManager == null) {
                    sDevicePoPManager = new DevicePopManager();
                }
                iDevicePopManager = sDevicePoPManager;
            } catch (IOException | KeyStoreException | NoSuchAlgorithmException | CertificateException e2) {
                throw new ClientException(ClientException.KEYSTORE_NOT_INITIALIZED, "Failed to initialize DevicePoPManager = " + e2.getMessage(), e2);
            }
        }
        return iDevicePopManager;
    }

    public static String getManufacturer() {
        return Build.MANUFACTURER;
    }

    public static String getModel() {
        return Build.MODEL;
    }

    public static Map<String, String> getPlatformIdParameters() {
        HashMap hashMap = new HashMap();
        hashMap.put("x-client-SKU", PlatformIdParameters.PRODUCT_NAME);
        hashMap.put("x-client-Ver", "1.4.0");
        String[] strArr = Build.SUPPORTED_ABIS;
        if (strArr != null && strArr.length > 0) {
            hashMap.put("x-client-CPU", strArr[0]);
        }
        hashMap.put("x-client-OS", String.valueOf(Build.VERSION.SDK_INT));
        hashMap.put("x-client-DM", Build.MODEL);
        return Collections.unmodifiableMap(hashMap);
    }
}
