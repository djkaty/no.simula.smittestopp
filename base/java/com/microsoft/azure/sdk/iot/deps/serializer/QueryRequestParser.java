package com.microsoft.azure.sdk.iot.deps.serializer;

import e.c.c.e;
import e.c.c.v.a;
import e.c.c.v.c;

public class QueryRequestParser {
    public static final String QUERY_TAG = "query";
    @a(deserialize = false, serialize = true)
    @c("query")
    public String query = null;

    public QueryRequestParser(String str) {
        ParserUtility.validateQuery(str);
        this.query = str;
    }

    public String toJson() {
        e eVar = new e();
        eVar.f1303l = false;
        return eVar.a().a((Object) this);
    }

    public QueryRequestParser() {
    }
}
