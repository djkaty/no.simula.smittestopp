package e.c.c.w;

import java.lang.reflect.Method;

public final class u extends y {
    public final /* synthetic */ Method a;
    public final /* synthetic */ Object b;

    public u(Method method, Object obj) {
        this.a = method;
        this.b = obj;
    }

    public <T> T a(Class<T> cls) {
        y.b(cls);
        return this.a.invoke(this.b, new Object[]{cls});
    }
}
