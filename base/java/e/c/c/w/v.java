package e.c.c.w;

import java.lang.reflect.Method;

public final class v extends y {
    public final /* synthetic */ Method a;
    public final /* synthetic */ int b;

    public v(Method method, int i2) {
        this.a = method;
        this.b = i2;
    }

    public <T> T a(Class<T> cls) {
        y.b(cls);
        return this.a.invoke((Object) null, new Object[]{cls, Integer.valueOf(this.b)});
    }
}
