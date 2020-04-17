package e.c.c.w;

import java.lang.reflect.Method;

public final class w extends y {
    public final /* synthetic */ Method a;

    public w(Method method) {
        this.a = method;
    }

    public <T> T a(Class<T> cls) {
        y.b(cls);
        return this.a.invoke((Object) null, new Object[]{cls, Object.class});
    }
}
