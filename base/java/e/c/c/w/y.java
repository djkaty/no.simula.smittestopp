package e.c.c.w;

import e.a.a.a.a;
import java.lang.reflect.Modifier;

public abstract class y {
    public static void b(Class<?> cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            StringBuilder a = a.a("Interface can't be instantiated! Interface name: ");
            a.append(cls.getName());
            throw new UnsupportedOperationException(a.toString());
        } else if (Modifier.isAbstract(modifiers)) {
            StringBuilder a2 = a.a("Abstract class can't be instantiated! Class name: ");
            a2.append(cls.getName());
            throw new UnsupportedOperationException(a2.toString());
        }
    }

    public abstract <T> T a(Class<T> cls);
}
