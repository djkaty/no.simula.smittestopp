package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import e.c.c.u;
import e.c.c.v.b;
import e.c.c.w.g;
import e.c.c.x.a;

public final class JsonAdapterAnnotationTypeAdapterFactory implements u {
    public final g x;

    public JsonAdapterAnnotationTypeAdapterFactory(g gVar) {
        this.x = gVar;
    }

    public <T> TypeAdapter<T> a(Gson gson, a<T> aVar) {
        b bVar = (b) aVar.getRawType().getAnnotation(b.class);
        if (bVar == null) {
            return null;
        }
        return a(this.x, gson, aVar, bVar);
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v13, resolved type: com.google.gson.TypeAdapter<?>} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v14, resolved type: com.google.gson.TypeAdapter} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v1, resolved type: com.google.gson.internal.bind.TreeTypeAdapter} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v15, resolved type: com.google.gson.internal.bind.TreeTypeAdapter} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v16, resolved type: com.google.gson.internal.bind.TreeTypeAdapter} */
    /* JADX WARNING: type inference failed for: r9v3, types: [com.google.gson.TypeAdapter<?>, com.google.gson.TypeAdapter] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.google.gson.TypeAdapter<?> a(e.c.c.w.g r9, com.google.gson.Gson r10, e.c.c.x.a<?> r11, e.c.c.v.b r12) {
        /*
            r8 = this;
            java.lang.Class r0 = r12.value()
            e.c.c.x.a r0 = e.c.c.x.a.get(r0)
            e.c.c.w.s r9 = r9.a(r0)
            java.lang.Object r9 = r9.a()
            boolean r0 = r9 instanceof com.google.gson.TypeAdapter
            if (r0 == 0) goto L_0x0017
            com.google.gson.TypeAdapter r9 = (com.google.gson.TypeAdapter) r9
            goto L_0x0071
        L_0x0017:
            boolean r0 = r9 instanceof e.c.c.u
            if (r0 == 0) goto L_0x0022
            e.c.c.u r9 = (e.c.c.u) r9
            com.google.gson.TypeAdapter r9 = r9.a(r10, r11)
            goto L_0x0071
        L_0x0022:
            boolean r0 = r9 instanceof e.c.c.r
            if (r0 != 0) goto L_0x0057
            boolean r1 = r9 instanceof e.c.c.i
            if (r1 == 0) goto L_0x002b
            goto L_0x0057
        L_0x002b:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r12 = "Invalid attempt to bind an instance of "
            java.lang.StringBuilder r12 = e.a.a.a.a.a(r12)
            java.lang.Class r9 = r9.getClass()
            java.lang.String r9 = r9.getName()
            r12.append(r9)
            java.lang.String r9 = " as a @JsonAdapter for "
            r12.append(r9)
            java.lang.String r9 = r11.toString()
            r12.append(r9)
            java.lang.String r9 = ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."
            r12.append(r9)
            java.lang.String r9 = r12.toString()
            r10.<init>(r9)
            throw r10
        L_0x0057:
            r1 = 0
            if (r0 == 0) goto L_0x005f
            r0 = r9
            e.c.c.r r0 = (e.c.c.r) r0
            r3 = r0
            goto L_0x0060
        L_0x005f:
            r3 = r1
        L_0x0060:
            boolean r0 = r9 instanceof e.c.c.i
            if (r0 == 0) goto L_0x0067
            r1 = r9
            e.c.c.i r1 = (e.c.c.i) r1
        L_0x0067:
            r4 = r1
            com.google.gson.internal.bind.TreeTypeAdapter r9 = new com.google.gson.internal.bind.TreeTypeAdapter
            r7 = 0
            r2 = r9
            r5 = r10
            r6 = r11
            r2.<init>(r3, r4, r5, r6, r7)
        L_0x0071:
            if (r9 == 0) goto L_0x007d
            boolean r10 = r12.nullSafe()
            if (r10 == 0) goto L_0x007d
            com.google.gson.TypeAdapter r9 = r9.nullSafe()
        L_0x007d:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory.a(e.c.c.w.g, com.google.gson.Gson, e.c.c.x.a, e.c.c.v.b):com.google.gson.TypeAdapter");
    }
}
