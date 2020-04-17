package com.google.gson.internal;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import e.c.c.a;
import e.c.c.u;
import e.c.c.v.d;
import e.c.c.v.e;
import e.c.c.y.c;
import java.util.Collections;
import java.util.List;

public final class Excluder implements u, Cloneable {
    public static final Excluder D = new Excluder();
    public boolean A;
    public List<a> B = Collections.emptyList();
    public List<a> C = Collections.emptyList();
    public double x = -1.0d;
    public int y = 136;
    public boolean z = true;

    public <T> TypeAdapter<T> a(Gson gson, e.c.c.x.a<T> aVar) {
        Class<? super T> rawType = aVar.getRawType();
        boolean a = a(rawType);
        final boolean z2 = a || a((Class<?>) rawType, true);
        final boolean z3 = a || a((Class<?>) rawType, false);
        if (!z2 && !z3) {
            return null;
        }
        final Gson gson2 = gson;
        final e.c.c.x.a<T> aVar2 = aVar;
        return new TypeAdapter<T>() {
            public TypeAdapter<T> a;

            public T read(e.c.c.y.a aVar) {
                if (z3) {
                    aVar.u();
                    return null;
                }
                TypeAdapter<T> typeAdapter = this.a;
                if (typeAdapter == null) {
                    typeAdapter = gson2.a((u) Excluder.this, aVar2);
                    this.a = typeAdapter;
                }
                return typeAdapter.read(aVar);
            }

            public void write(c cVar, T t) {
                if (z2) {
                    cVar.g();
                    return;
                }
                TypeAdapter<T> typeAdapter = this.a;
                if (typeAdapter == null) {
                    typeAdapter = gson2.a((u) Excluder.this, aVar2);
                    this.a = typeAdapter;
                }
                typeAdapter.write(cVar, t);
            }
        };
    }

    public final boolean b(Class<?> cls) {
        return !Enum.class.isAssignableFrom(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    public final boolean c(Class<?> cls) {
        if (cls.isMemberClass()) {
            if (!((cls.getModifiers() & 8) != 0)) {
                return true;
            }
        }
        return false;
    }

    public Excluder clone() {
        try {
            return (Excluder) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public final boolean a(Class<?> cls) {
        if (this.x != -1.0d && !a((d) cls.getAnnotation(d.class), (e) cls.getAnnotation(e.class))) {
            return true;
        }
        if ((this.z || !c(cls)) && !b(cls)) {
            return false;
        }
        return true;
    }

    public final boolean a(Class<?> cls, boolean z2) {
        for (a a : z2 ? this.B : this.C) {
            if (a.a(cls)) {
                return true;
            }
        }
        return false;
    }

    public final boolean a(d dVar, e eVar) {
        if (!(dVar == null || dVar.value() <= this.x)) {
            return false;
        }
        if (eVar == null || eVar.value() > this.x) {
            return true;
        }
        return false;
    }
}
