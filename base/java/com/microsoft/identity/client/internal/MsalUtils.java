package com.microsoft.identity.client.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Base64;
import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import com.microsoft.identity.client.BrowserTabActivity;
import com.microsoft.identity.client.PublicClientApplication;
import com.microsoft.identity.client.exception.MsalArgumentException;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.util.StringUtil;
import e.a.a.a.a;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

public final class MsalUtils {
    public static final String CHROME_PACKAGE = "com.android.chrome";
    public static final int DEFAULT_EXPIRATION_TIME_SEC = 3600;
    public static final String ENCODING_UTF8 = "UTF-8";
    public static final String QUERY_STRING_DELIMITER = "&";
    public static final String QUERY_STRING_SYMBOL = "?";
    public static final String TAG = "MsalUtils";
    public static final String TOKEN_HASH_ALGORITHM = "SHA256";

    public static String appendQueryParameterToUrl(String str, Map<String, String> map) {
        if (isEmpty(str)) {
            throw new IllegalArgumentException("Empty authority string");
        } else if (map.isEmpty()) {
            return str;
        } else {
            HashSet hashSet = new HashSet();
            for (Map.Entry next : map.entrySet()) {
                hashSet.add(((String) next.getKey()) + "=" + urlFormEncode((String) next.getValue()));
            }
            return String.format(str.contains(QUERY_STRING_SYMBOL) ? str.endsWith("&") ? "%s%s" : "%s&%s" : "%s?%s", new Object[]{str, StringUtil.convertSetToString(hashSet, "&")});
        }
    }

    public static String base64UrlEncodeToString(String str) {
        return Base64.encodeToString(str.getBytes(Charset.forName("UTF-8")), 10);
    }

    public static Date calculateExpiresOn(String str) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.add(13, getExpiryOrDefault(str));
        return gregorianCalendar.getTime();
    }

    public static Set<String> convertArrayToSet(String[] strArr) {
        HashSet hashSet = new HashSet();
        if (strArr == null) {
            return hashSet;
        }
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (!isEmpty(strArr[i2])) {
                hashSet.add(strArr[i2]);
            }
        }
        return hashSet;
    }

    public static String createHash(String str) {
        return !isEmpty(str) ? new String(Base64.encode(MessageDigest.getInstance("SHA256").digest(str.getBytes("UTF-8")), 2), "UTF-8") : str;
    }

    public static Map<String, String> decodeUrlToMap(String str, String str2) {
        HashMap hashMap = new HashMap();
        if (!isEmpty(str) && str2 != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, str2);
            while (stringTokenizer.hasMoreTokens()) {
                String[] split = stringTokenizer.nextToken().split("=");
                if (split.length == 2) {
                    try {
                        String urlFormDecode = urlFormDecode(split[0]);
                        String urlFormDecode2 = urlFormDecode(split[1]);
                        if (!isEmpty(urlFormDecode) && !isEmpty(urlFormDecode2)) {
                            hashMap.put(urlFormDecode, urlFormDecode2);
                        }
                    } catch (UnsupportedEncodingException e2) {
                        Logger.errorPII(TAG, "URL form decode failed.", e2);
                    }
                }
            }
        }
        return hashMap;
    }

    public static Map<String, String> extractJsonObjectIntoMap(String str) {
        JSONObject jSONObject = new JSONObject(str);
        Iterator<String> keys = jSONObject.keys();
        HashMap hashMap = new HashMap();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, jSONObject.getString(next));
        }
        return Collections.unmodifiableMap(hashMap);
    }

    public static ApplicationInfo getApplicationInfo(Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException unused) {
            throw new IllegalStateException("Unable to find the package info, unable to proceed");
        }
    }

    public static String getChromePackage(Context context) {
        String str = CHROME_PACKAGE;
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return null;
        }
        try {
            ApplicationInfo applicationInfo = packageManager.getPackageInfo(str, 1).applicationInfo;
            if (applicationInfo == null || !applicationInfo.enabled) {
                str = null;
            }
            return str;
        } catch (PackageManager.NameNotFoundException e2) {
            Logger.error(TAG, "Failed to retrieve chrome package info.", e2);
            return null;
        }
    }

    public static String getChromePackageWithCustomTabSupport(Context context) {
        if (context.getPackageManager() == null) {
            Logger.warn(TAG, "getPackageManager() returned null.");
            return null;
        }
        List<ResolveInfo> queryIntentServices = context.getPackageManager().queryIntentServices(new Intent("android.support.customtabs.action.CustomTabsService"), 0);
        if (queryIntentServices == null || queryIntentServices.isEmpty()) {
            Logger.warn(TAG, "No Service responded to Intent: android.support.customtabs.action.CustomTabsService");
            return null;
        }
        for (ResolveInfo resolveInfo : queryIntentServices) {
            ServiceInfo serviceInfo = resolveInfo.serviceInfo;
            if (serviceInfo != null && CHROME_PACKAGE.equals(serviceInfo.packageName)) {
                return serviceInfo.packageName;
            }
        }
        Logger.warn(TAG, "No pkg with CustomTab support found.");
        return null;
    }

    public static long getExpiresOn(long j2) {
        return TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis()) + j2;
    }

    public static int getExpiryOrDefault(String str) {
        if (isEmpty(str)) {
            return 3600;
        }
        return Integer.parseInt(str);
    }

    public static Set<String> getScopesAsSet(String str) {
        if (isEmpty(str)) {
            return new HashSet();
        }
        String[] split = str.toLowerCase(Locale.US).split(" ");
        HashSet hashSet = new HashSet();
        for (int i2 = 0; i2 < split.length; i2++) {
            if (!isEmpty(split[i2])) {
                hashSet.add(split[i2]);
            }
        }
        return hashSet;
    }

    public static String getUniqueUserIdentifier(String str, String str2) {
        return base64UrlEncodeToString(str) + CryptoConstants.ALIAS_SEPARATOR + base64UrlEncodeToString(str2);
    }

    public static URL getUrl(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e2) {
            Logger.errorPII(TAG, "Url is invalid", e2);
            return null;
        }
    }

    public static boolean hasCustomTabRedirectActivity(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addCategory("android.intent.category.BROWSABLE");
        intent.setDataAndNormalize(Uri.parse(str));
        boolean z = false;
        for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 64)) {
            if (!resolveInfo.activityInfo.name.equals(BrowserTabActivity.class.getName())) {
                return false;
            }
            z = true;
        }
        return z;
    }

    public static boolean isEmpty(String str) {
        return str == null || str.trim().length() == 0;
    }

    public static boolean isScopeIntersects(Set<String> set, Set<String> set2) {
        for (String contains : set2) {
            if (set.contains(contains)) {
                return true;
            }
        }
        return false;
    }

    public static void throwOnMainThread(String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException(a.a("method: ", str, " may not be called from main thread."));
        }
    }

    public static String urlFormDecode(String str) {
        if (isEmpty(str)) {
            return "";
        }
        return URLDecoder.decode(str, "UTF-8");
    }

    public static String urlFormEncode(String str) {
        if (isEmpty(str)) {
            return "";
        }
        return URLEncoder.encode(str, "UTF-8");
    }

    public static void validateNonNullArg(Object obj, String str) {
        if (obj == null || (((obj instanceof CharSequence) && TextUtils.isEmpty((CharSequence) obj)) || ((obj instanceof List) && ((List) obj).isEmpty()))) {
            throw new MsalArgumentException(str, a.b(str, PublicClientApplication.NONNULL_CONSTANTS.NULL_ERROR_SUFFIX));
        }
    }

    public static void validateNonNullArgument(Object obj, String str) {
        if (obj == null || ((obj instanceof CharSequence) && TextUtils.isEmpty((CharSequence) obj))) {
            throw new IllegalArgumentException(a.b(str, PublicClientApplication.NONNULL_CONSTANTS.NULL_ERROR_SUFFIX));
        }
    }
}
