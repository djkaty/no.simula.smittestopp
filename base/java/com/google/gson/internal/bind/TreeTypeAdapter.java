package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import e.c.a.a.b.l.c;
import e.c.c.h;
import e.c.c.i;
import e.c.c.j;
import e.c.c.l;
import e.c.c.q;
import e.c.c.r;
import e.c.c.u;
import java.lang.reflect.Type;

public final class TreeTypeAdapter<T> extends TypeAdapter<T> {
    public final r<T> a;
    public final i<T> b;

    /* renamed from: c  reason: collision with root package name */
    public final Gson f168c;

    /* renamed from: d  reason: collision with root package name */
    public final e.c.c.x.a<T> f169d;

    /* renamed from: e  reason: collision with root package name */
    public final u f170e;

    /* renamed from: f  reason: collision with root package name */
    public final TreeTypeAdapter<T>.defpackage.b f171f = new b((a) null);

    /* renamed from: g  reason: collision with root package name */
    public TypeAdapter<T> f172g;

    public static final class SingleTypeFactory implements u {
        public final r<?> A;
        public final i<?> B;
        public final e.c.c.x.a<?> x;
        public final boolean y;
        public final Class<?> z;

        public SingleTypeFactory(Object obj, e.c.c.x.a<?> aVar, boolean z2, Class<?> cls) {
            i<?> iVar = null;
            this.A = obj instanceof r ? (r) obj : null;
            iVar = obj instanceof i ? (i) obj : iVar;
            this.B = iVar;
            c.a((this.A == null && iVar == null) ? false : true);
            this.x = aVar;
            this.y = z2;
            this.z = cls;
        }

        public <T> TypeAdapter<T> a(Gson gson, e.c.c.x.a<T> aVar) {
            boolean z2;
            e.c.c.x.a<?> aVar2 = this.x;
            if (aVar2 != null) {
                z2 = aVar2.equals(aVar) || (this.y && this.x.getType() == aVar.getRawType());
            } else {
                z2 = this.z.isAssignableFrom(aVar.getRawType());
            }
            if (z2) {
                return new TreeTypeAdapter(this.A, this.B, gson, aVar, this);
            }
            return null;
        }
    }

    public TreeTypeAdapter(r<T> rVar, i<T> iVar, Gson gson, e.c.c.x.a<T> aVar, u uVar) {
        this.a = rVar;
        this.b = iVar;
        this.f168c = gson;
        this.f169d = aVar;
        this.f170e = uVar;
    }

    public T read(e.c.c.y.a aVar) {
        if (this.b == null) {
            TypeAdapter<T> typeAdapter = this.f172g;
            if (typeAdapter == null) {
                typeAdapter = this.f168c.a(this.f170e, this.f169d);
                this.f172g = typeAdapter;
            }
            return typeAdapter.read(aVar);
        }
        j a2 = c.a(aVar);
        if (a2 == null) {
            throw null;
        } else if (a2 instanceof l) {
            return null;
        } else {
            return this.b.deserialize(a2, this.f169d.getType(), this.f171f);
        }
    }

    public void write(e.c.c.y.c cVar, T t) {
        r<T> rVar = this.a;
        if (rVar == null) {
            TypeAdapter<T> typeAdapter = this.f172g;
            if (typeAdapter == null) {
                typeAdapter = this.f168c.a(this.f170e, this.f169d);
                this.f172g = typeAdapter;
            }
            typeAdapter.write(cVar, t);
        } else if (t == null) {
            cVar.g();
        } else {
            TypeAdapters.X.write(cVar, rVar.serialize(t, this.f169d.getType(), this.f171f));
        }
    }

    public final class b implements q, h {
        public /* synthetic */ b(a aVar) {
        }

        public j a(Object obj, Type type) {
            Gson gson = TreeTypeAdapter.this.f168c;
            if (gson != null) {
                e.c.c.w.z.b bVar = new e.c.c.w.z.b();
                gson.a(obj, type, bVar);
                return bVar.j();
            }
            throw null;
        }

        public <R> R a(j jVar, Type type) {
            Gson gson = TreeTypeAdapter.this.f168c;
            if (gson == null) {
                throw null;
            } else if (jVar == null) {
                return null;
            } else {
                return gson.a((e.c.c.y.a) new e.c.c.w.z.a(jVar), type);
            }
        }
    }
}
