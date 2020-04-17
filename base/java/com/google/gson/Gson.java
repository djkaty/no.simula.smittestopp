package com.google.gson;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.bind.ArrayTypeAdapter;
import com.google.gson.internal.bind.CollectionTypeAdapterFactory;
import com.google.gson.internal.bind.DateTypeAdapter;
import com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory;
import com.google.gson.internal.bind.MapTypeAdapterFactory;
import com.google.gson.internal.bind.ObjectTypeAdapter;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.internal.bind.SqlDateTypeAdapter;
import com.google.gson.internal.bind.TimeTypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import e.c.c.d;
import e.c.c.f;
import e.c.c.j;
import e.c.c.k;
import e.c.c.l;
import e.c.c.s;
import e.c.c.t;
import e.c.c.u;
import e.c.c.w.g;
import e.c.c.w.z.b;
import e.c.c.x.a;
import e.c.c.y.c;
import java.io.EOFException;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

public final class Gson {

    /* renamed from: k  reason: collision with root package name */
    public static final a<?> f151k = a.get(Object.class);
    public final ThreadLocal<Map<a<?>, FutureTypeAdapter<?>>> a;
    public final Map<a<?>, TypeAdapter<?>> b;

    /* renamed from: c  reason: collision with root package name */
    public final g f152c;

    /* renamed from: d  reason: collision with root package name */
    public final JsonAdapterAnnotationTypeAdapterFactory f153d;

    /* renamed from: e  reason: collision with root package name */
    public final List<u> f154e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f155f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f156g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f157h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f158i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f159j;

    public static class FutureTypeAdapter<T> extends TypeAdapter<T> {
        public TypeAdapter<T> a;

        public T read(e.c.c.y.a aVar) {
            TypeAdapter<T> typeAdapter = this.a;
            if (typeAdapter != null) {
                return typeAdapter.read(aVar);
            }
            throw new IllegalStateException();
        }

        public void write(c cVar, T t) {
            TypeAdapter<T> typeAdapter = this.a;
            if (typeAdapter != null) {
                typeAdapter.write(cVar, t);
                return;
            }
            throw new IllegalStateException();
        }
    }

    public Gson() {
        this(Excluder.D, e.c.c.c.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, false, t.DEFAULT, (String) null, 2, 2, Collections.emptyList(), Collections.emptyList(), Collections.emptyList());
    }

    public void a(j jVar, c cVar) {
        boolean z = cVar.C;
        cVar.C = true;
        boolean z2 = cVar.D;
        cVar.D = this.f157h;
        boolean z3 = cVar.F;
        cVar.F = this.f155f;
        try {
            TypeAdapters.X.write(cVar, jVar);
            cVar.C = z;
            cVar.D = z2;
            cVar.F = z3;
        } catch (IOException e2) {
            throw new k((Throwable) e2);
        } catch (AssertionError e3) {
            throw new AssertionError("AssertionError (GSON 2.8.5): " + e3.getMessage(), e3);
        } catch (Throwable th) {
            cVar.C = z;
            cVar.D = z2;
            cVar.F = z3;
            throw th;
        }
    }

    public j b(Object obj) {
        if (obj == null) {
            return l.a;
        }
        Class<?> cls = obj.getClass();
        b bVar = new b();
        a(obj, cls, bVar);
        return bVar.j();
    }

    public String toString() {
        return "{serializeNulls:" + this.f155f + ",factories:" + this.f154e + ",instanceCreators:" + this.f152c + "}";
    }

    public Gson(Excluder excluder, d dVar, Map<Type, f<?>> map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, t tVar, String str, int i2, int i3, List<u> list, List<u> list2, List<u> list3) {
        final TypeAdapter typeAdapter;
        TypeAdapter typeAdapter2;
        TypeAdapter typeAdapter3;
        Excluder excluder2 = excluder;
        this.a = new ThreadLocal<>();
        this.b = new ConcurrentHashMap();
        Map<Type, f<?>> map2 = map;
        this.f152c = new g(map);
        this.f155f = z;
        this.f156g = z3;
        this.f157h = z4;
        this.f158i = z5;
        this.f159j = z6;
        ArrayList arrayList = new ArrayList();
        arrayList.add(TypeAdapters.Y);
        arrayList.add(ObjectTypeAdapter.b);
        arrayList.add(excluder);
        arrayList.addAll(list3);
        arrayList.add(TypeAdapters.D);
        arrayList.add(TypeAdapters.m);
        arrayList.add(TypeAdapters.f178g);
        arrayList.add(TypeAdapters.f180i);
        arrayList.add(TypeAdapters.f182k);
        if (tVar == t.DEFAULT) {
            typeAdapter = TypeAdapters.t;
        } else {
            typeAdapter = new TypeAdapter<Number>() {
                public Object read(e.c.c.y.a aVar) {
                    if (aVar.r() != e.c.c.y.b.NULL) {
                        return Long.valueOf(aVar.m());
                    }
                    aVar.o();
                    return null;
                }

                public void write(c cVar, Object obj) {
                    Number number = (Number) obj;
                    if (number == null) {
                        cVar.g();
                    } else {
                        cVar.c(number.toString());
                    }
                }
            };
        }
        arrayList.add(new u(Long.TYPE, Long.class, typeAdapter) {
            public <T> TypeAdapter<T> a(Gson gson, a<T> aVar) {
                Class<? super T> rawType = aVar.getRawType();
                if (rawType == r0 || rawType == r1) {
                    return r2;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(r1.getName());
                a.append("+");
                a.append(r0.getName());
                a.append(",adapter=");
                a.append(r2);
                a.append("]");
                return a.toString();
            }
        });
        Class cls = Double.TYPE;
        Class<Double> cls2 = Double.class;
        if (z7) {
            typeAdapter2 = TypeAdapters.v;
        } else {
            typeAdapter2 = new TypeAdapter<Number>(this) {
                public Object read(e.c.c.y.a aVar) {
                    if (aVar.r() != e.c.c.y.b.NULL) {
                        return Double.valueOf(aVar.k());
                    }
                    aVar.o();
                    return null;
                }

                public void write(c cVar, Object obj) {
                    Number number = (Number) obj;
                    if (number == null) {
                        cVar.g();
                        return;
                    }
                    Gson.a(number.doubleValue());
                    cVar.a(number);
                }
            };
        }
        arrayList.add(new u(cls, cls2, typeAdapter2) {
            public <T> TypeAdapter<T> a(Gson gson, a<T> aVar) {
                Class<? super T> rawType = aVar.getRawType();
                if (rawType == r0 || rawType == r1) {
                    return r2;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(r1.getName());
                a.append("+");
                a.append(r0.getName());
                a.append(",adapter=");
                a.append(r2);
                a.append("]");
                return a.toString();
            }
        });
        Class cls3 = Float.TYPE;
        Class<Float> cls4 = Float.class;
        if (z7) {
            typeAdapter3 = TypeAdapters.u;
        } else {
            typeAdapter3 = new TypeAdapter<Number>(this) {
                public Object read(e.c.c.y.a aVar) {
                    if (aVar.r() != e.c.c.y.b.NULL) {
                        return Float.valueOf((float) aVar.k());
                    }
                    aVar.o();
                    return null;
                }

                public void write(c cVar, Object obj) {
                    Number number = (Number) obj;
                    if (number == null) {
                        cVar.g();
                        return;
                    }
                    Gson.a((double) number.floatValue());
                    cVar.a(number);
                }
            };
        }
        arrayList.add(new u(cls3, cls4, typeAdapter3) {
            public <T> TypeAdapter<T> a(Gson gson, a<T> aVar) {
                Class<? super T> rawType = aVar.getRawType();
                if (rawType == r0 || rawType == r1) {
                    return r2;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(r1.getName());
                a.append("+");
                a.append(r0.getName());
                a.append(",adapter=");
                a.append(r2);
                a.append("]");
                return a.toString();
            }
        });
        arrayList.add(TypeAdapters.x);
        arrayList.add(TypeAdapters.o);
        arrayList.add(TypeAdapters.q);
        arrayList.add(new u(AtomicLong.class, new TypeAdapter<AtomicLong>() {
            public Object read(e.c.c.y.a aVar) {
                return new AtomicLong(((Number) TypeAdapter.this.read(aVar)).longValue());
            }

            public void write(c cVar, Object obj) {
                TypeAdapter.this.write(cVar, Long.valueOf(((AtomicLong) obj).get()));
            }
        }.nullSafe()) {
            public <T> TypeAdapter<T> a(Gson gson, a<T> aVar) {
                if (aVar.getRawType() == r1) {
                    return r2;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(r1.getName());
                a.append(",adapter=");
                a.append(r2);
                a.append("]");
                return a.toString();
            }
        });
        arrayList.add(new u(AtomicLongArray.class, new TypeAdapter<AtomicLongArray>() {
            public Object read(e.c.c.y.a aVar) {
                ArrayList arrayList = new ArrayList();
                aVar.a();
                while (aVar.h()) {
                    arrayList.add(Long.valueOf(((Number) TypeAdapter.this.read(aVar)).longValue()));
                }
                aVar.e();
                int size = arrayList.size();
                AtomicLongArray atomicLongArray = new AtomicLongArray(size);
                for (int i2 = 0; i2 < size; i2++) {
                    atomicLongArray.set(i2, ((Long) arrayList.get(i2)).longValue());
                }
                return atomicLongArray;
            }

            public void write(c cVar, Object obj) {
                AtomicLongArray atomicLongArray = (AtomicLongArray) obj;
                cVar.b();
                int length = atomicLongArray.length();
                for (int i2 = 0; i2 < length; i2++) {
                    TypeAdapter.this.write(cVar, Long.valueOf(atomicLongArray.get(i2)));
                }
                cVar.d();
            }
        }.nullSafe()) {
            public <T> TypeAdapter<T> a(Gson gson, a<T> aVar) {
                if (aVar.getRawType() == r1) {
                    return r2;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(r1.getName());
                a.append(",adapter=");
                a.append(r2);
                a.append("]");
                return a.toString();
            }
        });
        arrayList.add(TypeAdapters.s);
        arrayList.add(TypeAdapters.z);
        arrayList.add(TypeAdapters.F);
        arrayList.add(TypeAdapters.H);
        arrayList.add(new u(BigDecimal.class, TypeAdapters.B) {
            public <T> TypeAdapter<T> a(Gson gson, a<T> aVar) {
                if (aVar.getRawType() == r1) {
                    return r2;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(r1.getName());
                a.append(",adapter=");
                a.append(r2);
                a.append("]");
                return a.toString();
            }
        });
        arrayList.add(new u(BigInteger.class, TypeAdapters.C) {
            public <T> TypeAdapter<T> a(Gson gson, a<T> aVar) {
                if (aVar.getRawType() == r1) {
                    return r2;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(r1.getName());
                a.append(",adapter=");
                a.append(r2);
                a.append("]");
                return a.toString();
            }
        });
        arrayList.add(TypeAdapters.J);
        arrayList.add(TypeAdapters.L);
        arrayList.add(TypeAdapters.P);
        arrayList.add(TypeAdapters.R);
        arrayList.add(TypeAdapters.W);
        arrayList.add(TypeAdapters.N);
        arrayList.add(TypeAdapters.f175d);
        arrayList.add(DateTypeAdapter.b);
        arrayList.add(TypeAdapters.U);
        arrayList.add(TimeTypeAdapter.b);
        arrayList.add(SqlDateTypeAdapter.b);
        arrayList.add(TypeAdapters.S);
        arrayList.add(ArrayTypeAdapter.f164c);
        arrayList.add(TypeAdapters.b);
        arrayList.add(new CollectionTypeAdapterFactory(this.f152c));
        boolean z8 = z2;
        arrayList.add(new MapTypeAdapterFactory(this.f152c, z2));
        JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory = new JsonAdapterAnnotationTypeAdapterFactory(this.f152c);
        this.f153d = jsonAdapterAnnotationTypeAdapterFactory;
        arrayList.add(jsonAdapterAnnotationTypeAdapterFactory);
        arrayList.add(TypeAdapters.Z);
        d dVar2 = dVar;
        arrayList.add(new ReflectiveTypeAdapterFactory(this.f152c, dVar, excluder, this.f153d));
        this.f154e = Collections.unmodifiableList(arrayList);
    }

    public <T> T a(e.c.c.y.a aVar, Type type) {
        boolean z = aVar.y;
        aVar.y = true;
        try {
            aVar.r();
            T read = a(a.get(type)).read(aVar);
            aVar.y = z;
            return read;
        } catch (EOFException e2) {
            if (1 != 0) {
                aVar.y = z;
                return null;
            }
            throw new s((Throwable) e2);
        } catch (IllegalStateException e3) {
            throw new s((Throwable) e3);
        } catch (IOException e4) {
            throw new s((Throwable) e4);
        } catch (AssertionError e5) {
            throw new AssertionError("AssertionError (GSON 2.8.5): " + e5.getMessage(), e5);
        } catch (Throwable th) {
            aVar.y = z;
            throw th;
        }
    }

    public static void a(double d2) {
        if (Double.isNaN(d2) || Double.isInfinite(d2)) {
            throw new IllegalArgumentException(d2 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    public <T> TypeAdapter<T> a(a<T> aVar) {
        TypeAdapter<T> typeAdapter = this.b.get(aVar == null ? f151k : aVar);
        if (typeAdapter != null) {
            return typeAdapter;
        }
        Map map = this.a.get();
        boolean z = false;
        if (map == null) {
            map = new HashMap();
            this.a.set(map);
            z = true;
        }
        FutureTypeAdapter futureTypeAdapter = (FutureTypeAdapter) map.get(aVar);
        if (futureTypeAdapter != null) {
            return futureTypeAdapter;
        }
        try {
            FutureTypeAdapter futureTypeAdapter2 = new FutureTypeAdapter();
            map.put(aVar, futureTypeAdapter2);
            for (u a2 : this.f154e) {
                TypeAdapter<T> a3 = a2.a(this, aVar);
                if (a3 != null) {
                    if (futureTypeAdapter2.a == null) {
                        futureTypeAdapter2.a = a3;
                        this.b.put(aVar, a3);
                        return a3;
                    }
                    throw new AssertionError();
                }
            }
            throw new IllegalArgumentException("GSON (2.8.5) cannot handle " + aVar);
        } finally {
            map.remove(aVar);
            if (z) {
                this.a.remove();
            }
        }
    }

    public <T> TypeAdapter<T> a(u uVar, a<T> aVar) {
        if (!this.f154e.contains(uVar)) {
            uVar = this.f153d;
        }
        boolean z = false;
        for (u next : this.f154e) {
            if (z) {
                TypeAdapter<T> a2 = next.a(this, aVar);
                if (a2 != null) {
                    return a2;
                }
            } else if (next == uVar) {
                z = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize " + aVar);
    }

    public String a(Object obj) {
        if (obj == null) {
            return a((j) l.a);
        }
        return a(obj, (Type) obj.getClass());
    }

    public String a(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        try {
            a(obj, type, a((Writer) stringWriter));
            return stringWriter.toString();
        } catch (IOException e2) {
            throw new k((Throwable) e2);
        }
    }

    public void a(Object obj, Type type, c cVar) {
        TypeAdapter<?> a2 = a(a.get(type));
        boolean z = cVar.C;
        cVar.C = true;
        boolean z2 = cVar.D;
        cVar.D = this.f157h;
        boolean z3 = cVar.F;
        cVar.F = this.f155f;
        try {
            a2.write(cVar, obj);
            cVar.C = z;
            cVar.D = z2;
            cVar.F = z3;
        } catch (IOException e2) {
            throw new k((Throwable) e2);
        } catch (AssertionError e3) {
            throw new AssertionError("AssertionError (GSON 2.8.5): " + e3.getMessage(), e3);
        } catch (Throwable th) {
            cVar.C = z;
            cVar.D = z2;
            cVar.F = z3;
            throw th;
        }
    }

    public String a(j jVar) {
        StringWriter stringWriter = new StringWriter();
        try {
            a(jVar, a((Writer) stringWriter));
            return stringWriter.toString();
        } catch (IOException e2) {
            throw new k((Throwable) e2);
        }
    }

    public c a(Writer writer) {
        if (this.f156g) {
            writer.write(")]}'\n");
        }
        c cVar = new c(writer);
        if (this.f158i) {
            cVar.A = "  ";
            cVar.B = ": ";
        }
        cVar.F = this.f155f;
        return cVar;
    }

    public <T> T a(String str, Class<T> cls) {
        return e.c.c.w.t.a(cls).cast(a(str, (Type) cls));
    }

    public <T> T a(String str, Type type) {
        if (str == null) {
            return null;
        }
        e.c.c.y.a aVar = new e.c.c.y.a(new StringReader(str));
        aVar.y = this.f159j;
        T a2 = a(aVar, type);
        if (a2 != null) {
            try {
                if (aVar.r() != e.c.c.y.b.END_DOCUMENT) {
                    throw new k("JSON document was not fully consumed.");
                }
            } catch (e.c.c.y.d e2) {
                throw new s((Throwable) e2);
            } catch (IOException e3) {
                throw new k((Throwable) e3);
            }
        }
        return a2;
    }
}
