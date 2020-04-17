package d.o;

import d.o.g;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class b {

    /* renamed from: c  reason: collision with root package name */
    public static b f707c = new b();
    public final Map<Class<?>, a> a = new HashMap();
    public final Map<Class<?>, Boolean> b = new HashMap();

    public static class a {
        public final Map<g.a, List<C0035b>> a = new HashMap();
        public final Map<C0035b, g.a> b;

        public a(Map<C0035b, g.a> map) {
            this.b = map;
            for (Map.Entry next : map.entrySet()) {
                g.a aVar = (g.a) next.getValue();
                List list = this.a.get(aVar);
                if (list == null) {
                    list = new ArrayList();
                    this.a.put(aVar, list);
                }
                list.add(next.getKey());
            }
        }

        public static void a(List<C0035b> list, l lVar, g.a aVar, Object obj) {
            if (list != null) {
                int size = list.size() - 1;
                while (size >= 0) {
                    C0035b bVar = list.get(size);
                    if (bVar != null) {
                        try {
                            int i2 = bVar.a;
                            if (i2 == 0) {
                                bVar.b.invoke(obj, new Object[0]);
                            } else if (i2 == 1) {
                                bVar.b.invoke(obj, new Object[]{lVar});
                            } else if (i2 == 2) {
                                bVar.b.invoke(obj, new Object[]{lVar, aVar});
                            }
                            size--;
                        } catch (InvocationTargetException e2) {
                            throw new RuntimeException("Failed to call observer method", e2.getCause());
                        } catch (IllegalAccessException e3) {
                            throw new RuntimeException(e3);
                        }
                    } else {
                        throw null;
                    }
                }
            }
        }
    }

    /* renamed from: d.o.b$b  reason: collision with other inner class name */
    public static class C0035b {
        public final int a;
        public final Method b;

        public C0035b(int i2, Method method) {
            this.a = i2;
            this.b = method;
            method.setAccessible(true);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C0035b.class != obj.getClass()) {
                return false;
            }
            C0035b bVar = (C0035b) obj;
            if (this.a != bVar.a || !this.b.getName().equals(bVar.b.getName())) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return this.b.getName().hashCode() + (this.a * 31);
        }
    }

    public a a(Class<?> cls) {
        a aVar = this.a.get(cls);
        if (aVar != null) {
            return aVar;
        }
        return a(cls, (Method[]) null);
    }

    public final void a(Map<C0035b, g.a> map, C0035b bVar, g.a aVar, Class<?> cls) {
        g.a aVar2 = map.get(bVar);
        if (aVar2 != null && aVar != aVar2) {
            Method method = bVar.b;
            StringBuilder a2 = e.a.a.a.a.a("Method ");
            a2.append(method.getName());
            a2.append(" in ");
            a2.append(cls.getName());
            a2.append(" already declared with different @OnLifecycleEvent value: previous value ");
            a2.append(aVar2);
            a2.append(", new value ");
            a2.append(aVar);
            throw new IllegalArgumentException(a2.toString());
        } else if (aVar2 == null) {
            map.put(bVar, aVar);
        }
    }

    public final a a(Class<?> cls, Method[] methodArr) {
        int i2;
        a a2;
        Class<? super Object> superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (!(superclass == null || (a2 = a(superclass)) == null)) {
            hashMap.putAll(a2.b);
        }
        for (Class a3 : cls.getInterfaces()) {
            for (Map.Entry next : a(a3).b.entrySet()) {
                a(hashMap, (C0035b) next.getKey(), (g.a) next.getValue(), cls);
            }
        }
        if (methodArr == null) {
            try {
                methodArr = cls.getDeclaredMethods();
            } catch (NoClassDefFoundError e2) {
                throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e2);
            }
        }
        boolean z = false;
        for (Method method : methodArr) {
            s sVar = (s) method.getAnnotation(s.class);
            if (sVar != null) {
                Class[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i2 = 0;
                } else if (parameterTypes[0].isAssignableFrom(l.class)) {
                    i2 = 1;
                } else {
                    throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                }
                g.a value = sVar.value();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(g.a.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    } else if (value == g.a.ON_ANY) {
                        i2 = 2;
                    } else {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                }
                if (parameterTypes.length <= 2) {
                    a(hashMap, new C0035b(i2, method), value, cls);
                    z = true;
                } else {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
            }
        }
        a aVar = new a(hashMap);
        this.a.put(cls, aVar);
        this.b.put(cls, Boolean.valueOf(z));
        return aVar;
    }
}
