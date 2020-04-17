package i.a.a;

import e.a.a.a.a;
import java.lang.reflect.Method;
import java.util.HashMap;
import k.e.a.q;
import k.e.a.s;
import k.e.a.y;

public class d {

    /* renamed from: i  reason: collision with root package name */
    public static String f1396i = y.a((Class<?>) c.class);
    public final a[] a;
    public final h b;

    /* renamed from: c  reason: collision with root package name */
    public final String f1397c;

    /* renamed from: d  reason: collision with root package name */
    public final String f1398d;

    /* renamed from: e  reason: collision with root package name */
    public final String f1399e;

    /* renamed from: f  reason: collision with root package name */
    public final String f1400f;

    /* renamed from: g  reason: collision with root package name */
    public final HashMap<Class<?>, Method> f1401g = new HashMap<>();

    /* renamed from: h  reason: collision with root package name */
    public Class<? extends Exception> f1402h = NoSuchFieldException.class;

    public d(Class<?> cls, a[] aVarArr, h hVar) {
        this.a = aVarArr;
        this.b = hVar;
        String name = cls.getName();
        this.f1397c = name;
        if (name.startsWith("java.")) {
            this.f1398d = a.a(new StringBuilder("net.minidev.asm."), this.f1397c, "AccAccess");
        } else {
            this.f1398d = this.f1397c.concat("AccAccess");
        }
        this.f1399e = this.f1398d.replace('.', '/');
        this.f1400f = this.f1397c.replace('.', '/');
    }

    public final void a(s sVar, a aVar) {
        s sVar2 = sVar;
        a aVar2 = aVar;
        sVar2.d(25, 1);
        sVar2.a(192, this.f1400f);
        sVar2.d(25, 3);
        y b2 = y.b(aVar2.f1393e);
        Class<?> cls = aVar2.f1393e;
        String a2 = y.a(cls);
        Method method = this.f1401g.get(cls);
        if (method != null) {
            sVar2.b(184, y.a(method.getDeclaringClass()), method.getName(), y.a(method));
        } else if (aVar2.f1393e.isEnum()) {
            q qVar = new q();
            sVar2.a(198, qVar);
            sVar2.d(25, 3);
            sVar2.b(182, "java/lang/Object", "toString", "()Ljava/lang/String;");
            sVar2.b(184, a2, "valueOf", "(Ljava/lang/String;)L" + a2 + ";");
            sVar2.d(58, 3);
            sVar2.a(qVar);
            sVar.a(3, 0, (Object[]) null, 0, (Object[]) null);
            sVar2.d(25, 1);
            sVar2.a(192, this.f1400f);
            sVar2.d(25, 3);
            sVar2.a(192, a2);
        } else if (cls.equals(String.class)) {
            q qVar2 = new q();
            sVar2.a(198, qVar2);
            sVar2.d(25, 3);
            sVar2.b(182, "java/lang/Object", "toString", "()Ljava/lang/String;");
            sVar2.d(58, 3);
            sVar2.a(qVar2);
            sVar.a(3, 0, (Object[]) null, 0, (Object[]) null);
            sVar2.d(25, 1);
            sVar2.a(192, this.f1400f);
            sVar2.d(25, 3);
            sVar2.a(192, a2);
        } else {
            sVar2.a(192, a2);
        }
        if (aVar.a()) {
            sVar2.a(181, this.f1400f, aVar2.f1394f, b2.a());
        } else {
            sVar2.b(182, this.f1400f, aVar2.b.getName(), y.a(aVar2.b));
        }
        sVar2.a(177);
    }

    public final void b(s sVar, Class<?> cls) {
        String a2 = y.a(cls);
        sVar.a(187, a2);
        sVar.a(89);
        sVar.a((Object) "mapping " + this.f1397c + " failed to map field:");
        sVar.d(25, 2);
        sVar.b(182, "java/lang/String", "concat", "(Ljava/lang/String;)Ljava/lang/String;");
        sVar.b(183, a2, "<init>", "(Ljava/lang/String;)V");
        sVar.a(191);
    }

    public final void a(s sVar, Class<?> cls) {
        String a2 = y.a(cls);
        sVar.a(187, a2);
        sVar.a(89);
        sVar.a((Object) "mapping " + this.f1397c + " failed to map field:");
        sVar.d(21, 2);
        sVar.b(184, "java/lang/Integer", "toString", "(I)Ljava/lang/String;");
        sVar.b(182, "java/lang/String", "concat", "(Ljava/lang/String;)Ljava/lang/String;");
        sVar.b(183, a2, "<init>", "(Ljava/lang/String;)V");
        sVar.a(191);
    }

    public final void a(s sVar, int i2, int i3, q qVar) {
        sVar.d(21, i2);
        if (i3 == 0) {
            sVar.a(154, qVar);
        } else if (i3 == 1) {
            sVar.a(4);
            sVar.a(160, qVar);
        } else if (i3 == 2) {
            sVar.a(5);
            sVar.a(160, qVar);
        } else if (i3 == 3) {
            sVar.a(6);
            sVar.a(160, qVar);
        } else if (i3 == 4) {
            sVar.a(7);
            sVar.a(160, qVar);
        } else if (i3 == 5) {
            sVar.a(8);
            sVar.a(160, qVar);
        } else if (i3 >= 6) {
            sVar.b(16, i3);
            sVar.a(160, qVar);
        } else {
            throw new RuntimeException("non supported negative values");
        }
    }
}
