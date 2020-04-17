package com.microsoft.identity.common.internal.broker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Base64;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.internal.logging.Logger;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class PackageHelper {
    public static final String TAG = "CallerInfo";
    public PackageManager mPackageManager;

    public PackageHelper(PackageManager packageManager) {
        this.mPackageManager = packageManager;
    }

    public static String getBrokerRedirectUrl(String str, String str2) {
        if (!StringExtensions.isNullOrBlank(str) && !StringExtensions.isNullOrBlank(str2)) {
            if (str.equals(AuthenticationConstants.Broker.AZURE_AUTHENTICATOR_APP_PACKAGE_NAME) && str2.equals("ho040S3ffZkmxqtQrSwpTVOn9r0=")) {
                return AuthenticationConstants.Broker.BROKER_REDIRECT_URI;
            }
            try {
                return String.format("%s://%s/%s", new Object[]{AuthenticationConstants.Broker.REDIRECT_PREFIX, URLEncoder.encode(str, "UTF-8"), URLEncoder.encode(str2, "UTF-8")});
            } catch (UnsupportedEncodingException e2) {
                Logger.error(TAG, "", "Encoding is not supported", e2);
            }
        }
        return "";
    }

    @SuppressLint({"PackageManagerGetSignatures"})
    public String getCurrentSignatureForPackage(String str) {
        try {
            PackageInfo packageInfo = this.mPackageManager.getPackageInfo(str, 64);
            if (packageInfo == null || packageInfo.signatures == null || packageInfo.signatures.length <= 0) {
                return null;
            }
            Signature signature = packageInfo.signatures[0];
            MessageDigest instance = MessageDigest.getInstance("SHA");
            instance.update(signature.toByteArray());
            return Base64.encodeToString(instance.digest(), 2);
        } catch (PackageManager.NameNotFoundException e2) {
            Logger.error(TAG, "Calling App's package does not exist in PackageManager. ", "", e2);
            return null;
        } catch (NoSuchAlgorithmException e3) {
            Logger.error(TAG, "Digest SHA algorithm does not exists. ", "", e3);
            return null;
        }
    }

    public int getUIDForPackage(String str) {
        try {
            ApplicationInfo applicationInfo = this.mPackageManager.getApplicationInfo(str, 0);
            if (applicationInfo != null) {
                return applicationInfo.uid;
            }
            return 0;
        } catch (PackageManager.NameNotFoundException e2) {
            Logger.error(TAG, "Package is not found. ", "Package name: " + str, e2);
            return 0;
        }
    }

    public boolean isPackageInstalledAndEnabled(Context context, String str) {
        boolean z = false;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 0);
            if (applicationInfo != null) {
                z = applicationInfo.enabled;
            }
        } catch (PackageManager.NameNotFoundException e2) {
            Logger.error("CallerInfo#isPackageInstalledAndEnabled", "Package is not found. Package name: " + str, e2);
        }
        Logger.info("CallerInfo#isPackageInstalledAndEnabled", " Is package installed and enabled? [" + z + "]");
        return z;
    }
}
