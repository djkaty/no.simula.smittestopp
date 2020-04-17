package com.microsoft.identity.common.adal.internal.util;

import android.net.Uri;
import android.util.Base64;
import android.util.Log;
import com.microsoft.identity.common.exception.ErrorStrings;
import com.microsoft.identity.common.internal.logging.Logger;
import e.a.a.a.a;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

public final class StringExtensions {
    public static final String ENCODING_UTF8 = "UTF-8";
    public static final String TAG = "StringExtensions";
    public static final String TOKEN_HASH_ALGORITHM = "SHA256";

    public static String appendQueryParameterToUrl(String str, Map<String, String> map) {
        if (isNullOrBlank(str)) {
            throw new IllegalArgumentException("Empty authority endpoint parameter.");
        } else if (map.isEmpty()) {
            return str;
        } else {
            Uri.Builder buildUpon = Uri.parse(str).buildUpon();
            for (Map.Entry next : map.entrySet()) {
                buildUpon.appendQueryParameter((String) next.getKey(), (String) next.getValue());
            }
            return buildUpon.build().toString();
        }
    }

    public static String base64UrlEncodeToString(String str) {
        return Base64.encodeToString(str.getBytes(Charset.forName("UTF-8")), 10);
    }

    public static String createHash(String str) {
        return !isNullOrBlank(str) ? new String(Base64.encode(MessageDigest.getInstance("SHA256").digest(str.getBytes("UTF-8")), 2), "UTF-8") : str;
    }

    public static String encodeBase64URLSafeString(byte[] bArr) {
        return new String(Base64.encode(bArr, 11), "UTF-8");
    }

    public static List<String> getStringTokens(String str, String str2) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, str2);
        ArrayList arrayList = new ArrayList();
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            if (!isNullOrBlank(nextToken)) {
                arrayList.add(nextToken);
            }
        }
        return arrayList;
    }

    public static URL getUrl(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException unused) {
            Log.e(TAG, ErrorStrings.AUTHORITY_URL_NOT_VALID);
            return null;
        }
    }

    public static HashMap<String, String> getUrlParameters(String str) {
        Uri parse = Uri.parse(str);
        if (!HashMapExtensions.urlFormDecode(parse.getFragment()).isEmpty()) {
            Logger.warn(TAG, "Received url contains unexpected fragment parameters.");
            String str2 = TAG;
            StringBuilder a = a.a("Unexpected fragment: ");
            a.append(parse.getFragment());
            Logger.warnPII(str2, a.toString());
        }
        return HashMapExtensions.urlFormDecode(parse.getEncodedQuery());
    }

    public static boolean hasPrefixInHeader(String str, String str2) {
        return str.startsWith(str2) && str.length() > str2.length() + 2 && Character.isWhitespace(str.charAt(str2.length()));
    }

    public static boolean isNullOrBlank(String str) {
        return str == null || str.trim().length() == 0;
    }

    public static String removeQueryParameterFromUrl(String str) {
        URI uri = new URI(str);
        return new URI(uri.getScheme(), uri.getAuthority(), uri.getPath(), (String) null, uri.getFragment()).toString();
    }

    public static String removeQuoteInHeaderValue(String str) {
        if (!isNullOrBlank(str)) {
            return str.replace("\"", "");
        }
        return null;
    }

    public static ArrayList<String> splitWithQuotes(String str, char c2) {
        ArrayList<String> arrayList = new ArrayList<>();
        int i2 = 0;
        boolean z = false;
        for (int i3 = 0; i3 < str.length(); i3++) {
            if (str.charAt(i3) == c2 && !z) {
                String substring = str.substring(i2, i3);
                if (!isNullOrBlank(substring.trim())) {
                    arrayList.add(substring);
                }
                i2 = i3 + 1;
            } else if (str.charAt(i3) == '\"') {
                z = !z;
            }
        }
        String substring2 = str.substring(i2);
        if (!isNullOrBlank(substring2.trim())) {
            arrayList.add(substring2);
        }
        return arrayList;
    }

    public static String urlFormDecode(String str) {
        return URLDecoder.decode(str, "UTF-8");
    }

    public static String urlFormEncode(String str) {
        return URLEncoder.encode(str, "UTF-8");
    }
}
