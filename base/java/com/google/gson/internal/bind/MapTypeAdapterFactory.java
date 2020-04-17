package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import e.c.c.j;
import e.c.c.l;
import e.c.c.m;
import e.c.c.u;
import e.c.c.w.g;
import e.c.c.w.p;
import e.c.c.w.s;
import e.c.c.y.a;
import e.c.c.y.b;
import e.c.c.y.c;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

public final class MapTypeAdapterFactory implements u {
    public final g x;
    public final boolean y;

    public final class Adapter<K, V> extends TypeAdapter<Map<K, V>> {
        public final TypeAdapter<K> a;
        public final TypeAdapter<V> b;

        /* renamed from: c  reason: collision with root package name */
        public final s<? extends Map<K, V>> f165c;

        public Adapter(Gson gson, Type type, TypeAdapter<K> typeAdapter, Type type2, TypeAdapter<V> typeAdapter2, s<? extends Map<K, V>> sVar) {
            this.a = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter, type);
            this.b = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter2, type2);
            this.f165c = sVar;
        }

        public Object read(a aVar) {
            b r = aVar.r();
            if (r == b.NULL) {
                aVar.o();
                return null;
            }
            Map map = (Map) this.f165c.a();
            if (r == b.BEGIN_ARRAY) {
                aVar.a();
                while (aVar.h()) {
                    aVar.a();
                    K read = this.a.read(aVar);
                    if (map.put(read, this.b.read(aVar)) == null) {
                        aVar.e();
                    } else {
                        throw new e.c.c.s("duplicate key: " + read);
                    }
                }
                aVar.e();
            } else {
                aVar.b();
                while (aVar.h()) {
                    if (((a.C0076a) p.a) != null) {
                        if (aVar instanceof e.c.c.w.z.a) {
                            e.c.c.w.z.a aVar2 = (e.c.c.w.z.a) aVar;
                            aVar2.a(b.NAME);
                            Map.Entry entry = (Map.Entry) ((Iterator) aVar2.v()).next();
                            aVar2.a(entry.getValue());
                            aVar2.a((Object) new e.c.c.p((String) entry.getKey()));
                        } else {
                            int i2 = aVar.E;
                            if (i2 == 0) {
                                i2 = aVar.d();
                            }
                            if (i2 == 13) {
                                aVar.E = 9;
                            } else if (i2 == 12) {
                                aVar.E = 8;
                            } else if (i2 == 14) {
                                aVar.E = 10;
                            } else {
                                StringBuilder a2 = e.a.a.a.a.a("Expected a name but was ");
                                a2.append(aVar.r());
                                a2.append(aVar.i());
                                throw new IllegalStateException(a2.toString());
                            }
                        }
                        K read2 = this.a.read(aVar);
                        if (map.put(read2, this.b.read(aVar)) != null) {
                            throw new e.c.c.s("duplicate key: " + read2);
                        }
                    } else {
                        throw null;
                    }
                }
                aVar.f();
            }
            return map;
        }

        public void write(c cVar, Object obj) {
            String str;
            Map map = (Map) obj;
            if (map == null) {
                cVar.g();
            } else if (!MapTypeAdapterFactory.this.y) {
                cVar.c();
                for (Map.Entry entry : map.entrySet()) {
                    cVar.a(String.valueOf(entry.getKey()));
                    this.b.write(cVar, entry.getValue());
                }
                cVar.e();
            } else {
                ArrayList arrayList = new ArrayList(map.size());
                ArrayList arrayList2 = new ArrayList(map.size());
                int i2 = 0;
                boolean z = false;
                for (Map.Entry entry2 : map.entrySet()) {
                    j jsonTree = this.a.toJsonTree(entry2.getKey());
                    arrayList.add(jsonTree);
                    arrayList2.add(entry2.getValue());
                    if (jsonTree != null) {
                        z |= (jsonTree instanceof e.c.c.g) || (jsonTree instanceof m);
                    } else {
                        throw null;
                    }
                }
                if (z) {
                    cVar.b();
                    int size = arrayList.size();
                    while (i2 < size) {
                        cVar.b();
                        TypeAdapters.X.write(cVar, (j) arrayList.get(i2));
                        this.b.write(cVar, arrayList2.get(i2));
                        cVar.d();
                        i2++;
                    }
                    cVar.d();
                    return;
                }
                cVar.c();
                int size2 = arrayList.size();
                while (i2 < size2) {
                    j jVar = (j) arrayList.get(i2);
                    if (jVar != null) {
                        if (jVar instanceof e.c.c.p) {
                            e.c.c.p d2 = jVar.d();
                            Object obj2 = d2.a;
                            if (obj2 instanceof Number) {
                                str = String.valueOf(d2.h());
                            } else if (obj2 instanceof Boolean) {
                                str = Boolean.toString(d2.g());
                            } else if (obj2 instanceof String) {
                                str = d2.f();
                            } else {
                                throw new AssertionError();
                            }
                        } else if (jVar instanceof l) {
                            str = "null";
                        } else {
                            throw new AssertionError();
                        }
                        cVar.a(str);
                        this.b.write(cVar, arrayList2.get(i2));
                        i2++;
                    } else {
                        throw null;
                    }
                }
                cVar.e();
            }
        }
    }

    public MapTypeAdapterFactory(g gVar, boolean z) {
        this.x = gVar;
        this.y = z;
    }

    public <T> TypeAdapter<T> a(Gson gson, e.c.c.x.a<T> aVar) {
        Type[] typeArr;
        TypeAdapter<Boolean> typeAdapter;
        Type type = aVar.getType();
        if (!Map.class.isAssignableFrom(aVar.getRawType())) {
            return null;
        }
        Class<?> c2 = e.c.c.w.a.c(type);
        Class<Object> cls = Object.class;
        Class<String> cls2 = String.class;
        if (type == Properties.class) {
            typeArr = new Type[]{cls2, cls2};
        } else {
            Type b = e.c.c.w.a.b(type, c2, Map.class);
            typeArr = b instanceof ParameterizedType ? ((ParameterizedType) b).getActualTypeArguments() : new Type[]{cls, cls};
        }
        Type type2 = typeArr[0];
        if (type2 == Boolean.TYPE || type2 == Boolean.class) {
            typeAdapter = TypeAdapters.f177f;
        } else {
            typeAdapter = gson.a(e.c.c.x.a.get(type2));
        }
        return new Adapter(gson, typeArr[0], typeAdapter, typeArr[1], gson.a(e.c.c.x.a.get(typeArr[1])), this.x.a(aVar));
    }
}
