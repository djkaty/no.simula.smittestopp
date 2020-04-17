package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import e.c.c.u;
import e.c.c.w.g;
import e.c.c.w.s;
import e.c.c.y.a;
import e.c.c.y.b;
import e.c.c.y.c;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Collection;

public final class CollectionTypeAdapterFactory implements u {
    public final g x;

    public static final class Adapter<E> extends TypeAdapter<Collection<E>> {
        public final TypeAdapter<E> a;
        public final s<? extends Collection<E>> b;

        public Adapter(Gson gson, Type type, TypeAdapter<E> typeAdapter, s<? extends Collection<E>> sVar) {
            this.a = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter, type);
            this.b = sVar;
        }

        public Object read(a aVar) {
            if (aVar.r() == b.NULL) {
                aVar.o();
                return null;
            }
            Collection collection = (Collection) this.b.a();
            aVar.a();
            while (aVar.h()) {
                collection.add(this.a.read(aVar));
            }
            aVar.e();
            return collection;
        }

        public void write(c cVar, Object obj) {
            Collection<Object> collection = (Collection) obj;
            if (collection == null) {
                cVar.g();
                return;
            }
            cVar.b();
            for (Object write : collection) {
                this.a.write(cVar, write);
            }
            cVar.d();
        }
    }

    public CollectionTypeAdapterFactory(g gVar) {
        this.x = gVar;
    }

    public <T> TypeAdapter<T> a(Gson gson, e.c.c.x.a<T> aVar) {
        Type type;
        Type type2 = aVar.getType();
        Class<? super T> rawType = aVar.getRawType();
        if (!Collection.class.isAssignableFrom(rawType)) {
            return null;
        }
        Type b = e.c.c.w.a.b(type2, rawType, Collection.class);
        if (b instanceof WildcardType) {
            b = ((WildcardType) b).getUpperBounds()[0];
        }
        if (b instanceof ParameterizedType) {
            type = ((ParameterizedType) b).getActualTypeArguments()[0];
        } else {
            type = Object.class;
        }
        return new Adapter(gson, type, gson.a(e.c.c.x.a.get(type)), this.x.a(aVar));
    }
}
