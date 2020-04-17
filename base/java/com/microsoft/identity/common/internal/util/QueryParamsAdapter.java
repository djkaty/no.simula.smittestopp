package com.microsoft.identity.common.internal.util;

import android.util.Pair;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import e.c.c.e;
import e.c.c.x.a;
import e.c.c.y.c;
import java.util.ArrayList;
import java.util.List;

public class QueryParamsAdapter extends TypeAdapter<List<Pair<String, String>>> {
    public static final Gson mGson;

    static {
        e eVar = new e();
        eVar.a(QueryParamsAdapter.class, new QueryParamsAdapter());
        mGson = eVar.a();
    }

    public static List<Pair<String, String>> _fromJson(String str) {
        return (List) mGson.a(str, new a<List<Pair<String, String>>>() {
        }.getType());
    }

    public static String _toJson(List<Pair<String, String>> list) {
        return mGson.a((Object) list, new a<List<Pair<String, String>>>() {
        }.getType());
    }

    public List<Pair<String, String>> read(e.c.c.y.a aVar) {
        aVar.b();
        ArrayList arrayList = new ArrayList();
        while (aVar.h()) {
            arrayList.add(new Pair(aVar.n(), aVar.p()));
        }
        aVar.f();
        return arrayList;
    }

    public void write(c cVar, List<Pair<String, String>> list) {
        cVar.c();
        for (Pair next : list) {
            cVar.a((String) next.first);
            cVar.c((String) next.second);
        }
        cVar.e();
    }
}
