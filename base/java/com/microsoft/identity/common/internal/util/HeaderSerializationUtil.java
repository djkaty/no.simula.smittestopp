package com.microsoft.identity.common.internal.util;

import com.google.gson.Gson;
import e.c.c.x.a;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class HeaderSerializationUtil {
    public static HashMap<String, List<String>> fromJson(String str) {
        return (HashMap) new Gson().a(str, new a<HashMap<String, List<String>>>() {
        }.getType());
    }

    public static String toJson(Map<String, List<String>> map) {
        return new Gson().a((Object) map);
    }
}
