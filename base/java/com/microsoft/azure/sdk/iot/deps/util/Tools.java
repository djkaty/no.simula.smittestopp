package com.microsoft.azure.sdk.iot.deps.util;

import f.a.a;
import f.a.b;
import f.a.c;
import f.a.e;
import java.util.Map;

public class Tools {
    public static void appendJsonAttribute(StringBuilder sb, String str, String str2, Boolean bool, Boolean bool2) {
        if (sb != null) {
            sb.append("\"");
            if (isNullOrEmpty(str).booleanValue()) {
                sb.append("");
            } else {
                sb.append(str);
            }
            sb.append("\"");
            sb.append(":");
            if (isNullOrEmpty(str2).booleanValue()) {
                sb.append("null");
            } else {
                if (bool.booleanValue()) {
                    sb.append("\"");
                }
                sb.append(str2);
                if (bool.booleanValue()) {
                    sb.append("\"");
                }
            }
            if (!bool2.booleanValue()) {
                sb.append(",");
            }
        }
    }

    public static boolean areEqual(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    public static long getNumberValueFromJsonObject(b bVar, String str) {
        a b;
        if (bVar == null || bVar == e.b || str == null || str.length() == 0 || ((e) bVar.get(str)) == e.b || (b = bVar.b(str)) == null) {
            return 0;
        }
        return b.longValue();
    }

    public static String getValueFromJsonObject(b bVar, String str) {
        if (bVar == null || bVar == e.b || str == null || str.length() == 0 || ((e) bVar.get(str)) == e.b) {
            return "";
        }
        return getValueFromJsonString(bVar.a(str));
    }

    public static String getValueFromJsonString(c cVar) {
        if (cVar == null) {
            return "";
        }
        String obj = cVar.toString();
        if (obj.startsWith("\"")) {
            obj = obj.replaceFirst("\"", "");
        }
        String str = obj;
        return str.endsWith("\"") ? str.substring(0, str.length() - 1) : str;
    }

    public static String getValueStringByKey(Map map, String str) {
        Object obj;
        if (map == null || str == null || (obj = map.get(str)) == null) {
            return "";
        }
        return obj.toString().trim();
    }

    public static Boolean isNullOrEmpty(String str) {
        boolean z = true;
        if (str == null) {
            return true;
        }
        if (str.length() != 0) {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    public static Boolean isNullOrWhiteSpace(String str) {
        if (str == null) {
            return true;
        }
        return isNullOrEmpty(str.trim());
    }
}
