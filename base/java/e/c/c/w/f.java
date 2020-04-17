package e.c.c.w;

import e.a.a.a.a;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;

public class f implements s<T> {
    public final y a;
    public final /* synthetic */ Class b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Type f1306c;

    public f(g gVar, Class cls, Type type) {
        y yVar;
        this.b = cls;
        this.f1306c = type;
        try {
            Class<?> cls2 = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls2.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            yVar = new u(cls2.getMethod("allocateInstance", new Class[]{Class.class}), declaredField.get((Object) null));
        } catch (Exception unused) {
            try {
                Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", new Class[]{Class.class});
                declaredMethod.setAccessible(true);
                int intValue = ((Integer) declaredMethod.invoke((Object) null, new Object[]{Object.class})).intValue();
                Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", new Class[]{Class.class, Integer.TYPE});
                declaredMethod2.setAccessible(true);
                yVar = new v(declaredMethod2, intValue);
            } catch (Exception unused2) {
                try {
                    Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", new Class[]{Class.class, Class.class});
                    declaredMethod3.setAccessible(true);
                    yVar = new w(declaredMethod3);
                } catch (Exception unused3) {
                    yVar = new x();
                }
            }
        }
        this.a = yVar;
    }

    public T a() {
        try {
            return this.a.a(this.b);
        } catch (Exception e2) {
            StringBuilder a2 = a.a("Unable to invoke no-args constructor for ");
            a2.append(this.f1306c);
            a2.append(". Registering an InstanceCreator with Gson for this type may fix this problem.");
            throw new RuntimeException(a2.toString(), e2);
        }
    }
}
