package com.microsoft.azure.sdk.iot.deps.serializer;

import com.google.gson.Gson;
import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import e.a.a.a.a;
import e.c.c.e;
import e.c.c.g;
import e.c.c.j;
import e.c.c.l;
import e.c.c.m;
import e.c.c.p;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import java.util.regex.Pattern;

public class ParserUtility {
    public static final String DATEFORMAT = "yyyy-MM-dd'T'HH:mm:ss";
    public static final int DATE_AND_TIME_IN_DATE = 0;
    public static final int EXPECTED_PARTS_IN_DATE = 2;
    public static final String FROM = "from";
    public static final int MAX_MILLISECONDS_LENGTH_IN_DATE = 3;
    public static final int MILLISECONDS_IN_DATE = 1;
    public static final double MILLISECONDS_NUMERIC_BASE = 10.0d;
    public static final String MILLISECONDS_REGEX = "[.,Z]";
    public static final int NO_MILLISECONDS_IN_DATE = 0;
    public static final String OFFSETFORMAT = "yyyy-MM-dd'T'HH:mm:ssXXX";
    public static final String SELECT = "select";
    public static final String TIMEZONE = "UTC";

    public static String dateTimeUtcToString(Date date) {
        if (date != null) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(DATEFORMAT);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            StringBuilder sb = new StringBuilder();
            sb.append(simpleDateFormat.format(date));
            sb.append(CryptoConstants.ALIAS_SEPARATOR);
            int time = (int) (date.getTime() % 1000);
            if (time < 0) {
                time += 1000;
            }
            return a.a(sb, time, "Z");
        }
        throw new IllegalArgumentException("date cannot be null");
    }

    public static String getDateStringFromDate(Date date) {
        if (date != null) {
            return new SimpleDateFormat(DATEFORMAT).format(date);
        }
        throw new IllegalArgumentException("The provided date cannot be null");
    }

    public static Date getDateTimeUtc(String str) {
        int i2;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(DATEFORMAT);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("date is null, empty, or invalid");
        }
        try {
            String[] split = str.split(MILLISECONDS_REGEX);
            if (split.length <= 2) {
                if (split.length != 2 || split[1].isEmpty()) {
                    i2 = 0;
                } else {
                    int length = split[1].length();
                    if (length > 3) {
                        length = 3;
                    }
                    i2 = Integer.parseInt(split[1].substring(0, length)) * ((int) Math.pow(10.0d, (double) (3 - length)));
                }
                return new Date(simpleDateFormat.parse(split[0]).getTime() + ((long) i2));
            }
            throw new IllegalArgumentException("invalid time:" + str);
        } catch (ParseException unused) {
            throw new IllegalArgumentException(a.b("invalid time:", str));
        }
    }

    public static List<Object> getJsonArrayValue(g gVar) {
        ArrayList arrayList = new ArrayList();
        Iterator<j> it = gVar.b().iterator();
        while (it.hasNext()) {
            arrayList.add(resolveJsonElement(it.next()));
        }
        return arrayList;
    }

    public static Map<String, Object> getJsonObjectValue(m mVar) {
        HashMap hashMap = new HashMap();
        for (Map.Entry next : mVar.g()) {
            hashMap.put(next.getKey(), resolveJsonElement((j) next.getValue()));
        }
        return hashMap;
    }

    public static Object getJsonPrimitiveValue(p pVar) {
        Object obj = pVar.a;
        if (obj instanceof Number) {
            return pVar.h();
        }
        if (obj instanceof Boolean) {
            return Boolean.valueOf(pVar.g());
        }
        return pVar.f();
    }

    public static boolean mapOnlyContainsMetaData(Map<String, Object> map) {
        for (String next : map.keySet()) {
            if (!next.equals("$lastUpdated") && !next.equals("$lastUpdatedVersion")) {
                return false;
            }
        }
        return true;
    }

    public static j mapToJsonElement(Map<String, Object> map) {
        e eVar = new e();
        eVar.f1298g = true;
        Gson a = eVar.a();
        m mVar = new m();
        if (map != null) {
            for (Map.Entry next : map.entrySet()) {
                if (next.getValue() == null) {
                    mVar.a((String) next.getKey(), (String) null);
                } else if (next.getValue() instanceof Map) {
                    mVar.a((String) next.getKey(), mapToJsonElement((Map) next.getValue()));
                } else {
                    mVar.a((String) next.getKey(), a.b(next.getValue()));
                }
            }
            return mVar;
        }
        throw new IllegalArgumentException("null map to parse");
    }

    public static Object resolveJsonElement(j jVar) {
        if (jVar == null || (jVar instanceof l)) {
            return null;
        }
        if (jVar instanceof p) {
            return getJsonPrimitiveValue(jVar.d());
        }
        if (jVar instanceof m) {
            return getJsonObjectValue(jVar.c());
        }
        if (jVar instanceof g) {
            return getJsonArrayValue(jVar.b());
        }
        StringBuilder a = a.a("Invalid DeviceMethodResponse payload: unknown payload type: ");
        a.append(jVar.getClass());
        throw new IllegalArgumentException(a.toString());
    }

    public static Date stringToDateTimeOffset(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(OFFSETFORMAT);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("date is null or empty");
        }
        try {
            return simpleDateFormat.parse(str);
        } catch (ParseException e2) {
            StringBuilder a = a.a("invalid time:");
            a.append(e2.toString());
            throw new IllegalArgumentException(a.toString());
        }
    }

    public static void validateBlobName(String str) {
        try {
            validateStringUTF8(str);
            if (str.length() > 1024) {
                throw new IllegalArgumentException("The provided blob name exceed maximum size of 1024 characters");
            } else if (str.split("/").length > 254) {
                throw new IllegalArgumentException("The provided blob name exceed 254 path segments");
            }
        } catch (IllegalArgumentException unused) {
            throw new IllegalArgumentException("The provided blob name is not valid");
        }
    }

    public static void validateHostName(String str) {
        validateId(str);
        if (str.split(Pattern.quote(CryptoConstants.ALIAS_SEPARATOR)).length < 2) {
            throw new IllegalArgumentException("hostName is incomplete");
        }
    }

    public static void validateId(String str) {
        try {
            validateStringUTF8(str);
            if (str.length() <= 128) {
                for (byte b : str.getBytes()) {
                    if ((b < 65 || b > 90) && ((b < 97 || b > 122) && !((b >= 48 && b <= 57) || b == 45 || b == 58 || b == 46 || b == 43 || b == 37 || b == 95 || b == 35 || b == 42 || b == 63 || b == 33 || b == 40 || b == 41 || b == 44 || b == 61 || b == 64 || b == 59 || b == 36 || b == 39))) {
                        throw new IllegalArgumentException("The provided ID is not valid");
                    }
                }
                return;
            }
            throw new IllegalArgumentException("The provided ID is bigger than 128 characters");
        } catch (IllegalArgumentException unused) {
            throw new IllegalArgumentException("The provided ID is not valid");
        }
    }

    public static void validateMap(Map<String, Object> map) {
        if (map != null) {
            validateMapInternal(map);
        }
    }

    public static void validateMapInternal(Map<String, Object> map) {
        for (Map.Entry<String, Object> value : map.entrySet()) {
            Object value2 = value.getValue();
            if (value2 != null && (value2.getClass().isArray() || value2.getClass().isLocalClass())) {
                throw new IllegalArgumentException(a.a(value2, a.a("Map contains illegal value type ")));
            } else if (value2 != null && (value2 instanceof Map)) {
                validateMapInternal((Map) value2);
            }
        }
    }

    public static void validateObject(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("parameter is null");
        }
    }

    public static void validateQuery(String str) {
        try {
            validateStringUTF8(str);
            if (!str.toLowerCase().contains(SELECT) || !str.toLowerCase().contains(FROM)) {
                throw new IllegalArgumentException("Query must contain select and from");
            }
        } catch (IllegalArgumentException unused) {
            throw new IllegalArgumentException("The provided query is not valid");
        }
    }

    public static void validateStringUTF8(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("parameter is null or empty");
        }
        try {
            if (str.getBytes("UTF-8").length != str.length()) {
                throw new IllegalArgumentException("parameter contains non UTF-8 character");
            }
        } catch (UnsupportedEncodingException unused) {
            throw new IllegalArgumentException("parameter contains non UTF-8 character");
        }
    }
}
