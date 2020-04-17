package i.a.b;

import i.a.a.i;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class h {
    public static final a a = new a();

    public static class a implements i {
        public boolean a(Field field, Method method) {
            i.a.b.k.a aVar = (i.a.b.k.a) method.getAnnotation(i.a.b.k.a.class);
            return aVar == null || !aVar.value();
        }
    }
}
