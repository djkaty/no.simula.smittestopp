package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import e.c.c.u;
import e.c.c.x.a;
import e.c.c.y.b;
import e.c.c.y.c;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;

public final class ArrayTypeAdapter<E> extends TypeAdapter<Object> {

    /* renamed from: c  reason: collision with root package name */
    public static final u f164c = new u() {
        public <T> TypeAdapter<T> a(Gson gson, a<T> aVar) {
            Type type;
            Type type2 = aVar.getType();
            boolean z = type2 instanceof GenericArrayType;
            if (!z && (!(type2 instanceof Class) || !((Class) type2).isArray())) {
                return null;
            }
            if (z) {
                type = ((GenericArrayType) type2).getGenericComponentType();
            } else {
                type = ((Class) type2).getComponentType();
            }
            return new ArrayTypeAdapter(gson, gson.a(a.get(type)), e.c.c.w.a.c(type));
        }
    };
    public final Class<E> a;
    public final TypeAdapter<E> b;

    public ArrayTypeAdapter(Gson gson, TypeAdapter<E> typeAdapter, Class<E> cls) {
        this.b = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter, cls);
        this.a = cls;
    }

    public Object read(e.c.c.y.a aVar) {
        if (aVar.r() == b.NULL) {
            aVar.o();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        aVar.a();
        while (aVar.h()) {
            arrayList.add(this.b.read(aVar));
        }
        aVar.e();
        int size = arrayList.size();
        Object newInstance = Array.newInstance(this.a, size);
        for (int i2 = 0; i2 < size; i2++) {
            Array.set(newInstance, i2, arrayList.get(i2));
        }
        return newInstance;
    }

    public void write(c cVar, Object obj) {
        if (obj == null) {
            cVar.g();
            return;
        }
        cVar.b();
        int length = Array.getLength(obj);
        for (int i2 = 0; i2 < length; i2++) {
            this.b.write(cVar, Array.get(obj, i2));
        }
        cVar.d();
    }
}
