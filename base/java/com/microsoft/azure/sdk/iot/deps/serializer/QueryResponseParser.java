package com.microsoft.azure.sdk.iot.deps.serializer;

import com.google.gson.Gson;
import e.c.c.e;
import e.c.c.j;
import e.c.c.m;
import e.c.c.s;
import e.c.c.w.t;
import java.lang.reflect.Type;
import java.util.LinkedList;
import java.util.List;

public class QueryResponseParser {
    public transient Gson gson;
    public m[] jsonItems = null;

    public QueryResponseParser(String str) {
        e eVar = new e();
        eVar.f1303l = false;
        this.gson = eVar.a();
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("parameter is null or empty");
        }
        try {
            Class cls = m[].class;
            this.jsonItems = (m[]) t.a(cls).cast(this.gson.a(str, (Type) cls));
        } catch (s e2) {
            throw new IllegalArgumentException("Malformed json:" + e2);
        }
    }

    public List<String> getJsonItems() {
        LinkedList linkedList = new LinkedList();
        for (m a : this.jsonItems) {
            linkedList.add(this.gson.a((j) a));
        }
        return linkedList;
    }

    public QueryResponseParser() {
    }
}
