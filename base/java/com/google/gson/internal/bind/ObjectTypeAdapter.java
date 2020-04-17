package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import e.c.c.u;
import e.c.c.w.r;
import e.c.c.x.a;
import e.c.c.y.c;
import java.util.ArrayList;

public final class ObjectTypeAdapter extends TypeAdapter<Object> {
    public static final u b = new u() {
        public <T> TypeAdapter<T> a(Gson gson, a<T> aVar) {
            if (aVar.getRawType() == Object.class) {
                return new ObjectTypeAdapter(gson);
            }
            return null;
        }
    };
    public final Gson a;

    public ObjectTypeAdapter(Gson gson) {
        this.a = gson;
    }

    public Object read(e.c.c.y.a aVar) {
        int ordinal = aVar.r().ordinal();
        if (ordinal == 0) {
            ArrayList arrayList = new ArrayList();
            aVar.a();
            while (aVar.h()) {
                arrayList.add(read(aVar));
            }
            aVar.e();
            return arrayList;
        } else if (ordinal == 2) {
            r rVar = new r();
            aVar.b();
            while (aVar.h()) {
                rVar.put(aVar.n(), read(aVar));
            }
            aVar.f();
            return rVar;
        } else if (ordinal == 5) {
            return aVar.p();
        } else {
            if (ordinal == 6) {
                return Double.valueOf(aVar.k());
            }
            if (ordinal == 7) {
                return Boolean.valueOf(aVar.j());
            }
            if (ordinal == 8) {
                aVar.o();
                return null;
            }
            throw new IllegalStateException();
        }
    }

    public void write(c cVar, Object obj) {
        if (obj == null) {
            cVar.g();
            return;
        }
        Gson gson = this.a;
        Class<?> cls = obj.getClass();
        if (gson != null) {
            TypeAdapter<?> a2 = gson.a(a.get(cls));
            if (a2 instanceof ObjectTypeAdapter) {
                cVar.c();
                cVar.e();
                return;
            }
            a2.write(cVar, obj);
            return;
        }
        throw null;
    }
}
