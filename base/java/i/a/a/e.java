package i.a.a;

import java.util.HashMap;
import java.util.LinkedHashSet;

public class e {
    public static HashMap<Class<?>, LinkedHashSet<Class<?>>> a = new HashMap<>();
    public static HashMap<Class<?>, HashMap<String, String>> b = new HashMap<>();

    static {
        Class<Object> cls = Object.class;
        a(cls, g.class);
        a(cls, f.class);
    }

    public static void a(Class<?> cls, Class<?> cls2) {
        synchronized (a) {
            LinkedHashSet linkedHashSet = a.get(cls);
            if (linkedHashSet == null) {
                linkedHashSet = new LinkedHashSet();
                a.put(cls, linkedHashSet);
            }
            linkedHashSet.add(cls2);
        }
    }
}
