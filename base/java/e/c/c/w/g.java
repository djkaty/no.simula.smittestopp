package e.c.c.w;

import e.c.c.f;
import java.lang.reflect.Constructor;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;

public final class g {
    public final Map<Type, f<?>> a;
    public final e.c.c.w.a0.b b = e.c.c.w.a0.b.a;

    public class a implements s<T> {
        public final /* synthetic */ f a;
        public final /* synthetic */ Type b;

        public a(g gVar, f fVar, Type type) {
            this.a = fVar;
            this.b = type;
        }

        public T a() {
            return this.a.a(this.b);
        }
    }

    public class b implements s<T> {
        public final /* synthetic */ f a;
        public final /* synthetic */ Type b;

        public b(g gVar, f fVar, Type type) {
            this.a = fVar;
            this.b = type;
        }

        public T a() {
            return this.a.a(this.b);
        }
    }

    public g(Map<Type, f<?>> map) {
        this.a = map;
    }

    public <T> s<T> a(e.c.c.x.a<T> aVar) {
        h hVar;
        Type type = aVar.getType();
        Class<? super T> rawType = aVar.getRawType();
        f fVar = this.a.get(type);
        if (fVar != null) {
            return new a(this, fVar, type);
        }
        f fVar2 = this.a.get(rawType);
        if (fVar2 != null) {
            return new b(this, fVar2, type);
        }
        s<T> sVar = null;
        try {
            Constructor<? super T> declaredConstructor = rawType.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                this.b.a(declaredConstructor);
            }
            hVar = new h(this, declaredConstructor);
        } catch (NoSuchMethodException unused) {
            hVar = null;
        }
        if (hVar != null) {
            return hVar;
        }
        if (Collection.class.isAssignableFrom(rawType)) {
            if (SortedSet.class.isAssignableFrom(rawType)) {
                sVar = new i(this);
            } else if (EnumSet.class.isAssignableFrom(rawType)) {
                sVar = new j(this, type);
            } else if (Set.class.isAssignableFrom(rawType)) {
                sVar = new k(this);
            } else if (Queue.class.isAssignableFrom(rawType)) {
                sVar = new l(this);
            } else {
                sVar = new m(this);
            }
        } else if (Map.class.isAssignableFrom(rawType)) {
            if (ConcurrentNavigableMap.class.isAssignableFrom(rawType)) {
                sVar = new n(this);
            } else if (ConcurrentMap.class.isAssignableFrom(rawType)) {
                sVar = new b(this);
            } else if (SortedMap.class.isAssignableFrom(rawType)) {
                sVar = new c(this);
            } else if (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(e.c.c.x.a.get(((ParameterizedType) type).getActualTypeArguments()[0]).getRawType())) {
                sVar = new e(this);
            } else {
                sVar = new d(this);
            }
        }
        if (sVar != null) {
            return sVar;
        }
        return new f(this, rawType, type);
    }

    public String toString() {
        return this.a.toString();
    }
}
