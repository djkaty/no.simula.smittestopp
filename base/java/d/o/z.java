package d.o;

import android.app.Application;
import java.lang.reflect.InvocationTargetException;

public class z extends c0 {
    public static z b;
    public Application a;

    public z(Application application) {
        this.a = application;
    }

    public <T extends y> T a(Class<T> cls) {
        if (!a.class.isAssignableFrom(cls)) {
            return super.a(cls);
        }
        try {
            return (y) cls.getConstructor(new Class[]{Application.class}).newInstance(new Object[]{this.a});
        } catch (NoSuchMethodException e2) {
            throw new RuntimeException("Cannot create an instance of " + cls, e2);
        } catch (IllegalAccessException e3) {
            throw new RuntimeException("Cannot create an instance of " + cls, e3);
        } catch (InstantiationException e4) {
            throw new RuntimeException("Cannot create an instance of " + cls, e4);
        } catch (InvocationTargetException e5) {
            throw new RuntimeException("Cannot create an instance of " + cls, e5);
        }
    }
}
