package k.f.e;

import com.microsoft.appcenter.persistence.DatabasePersistence;
import java.lang.reflect.Method;
import java.util.Queue;
import k.f.b;
import k.f.d.a;
import k.f.d.c;

public class d implements b {
    public Method A;
    public a B;
    public Queue<k.f.d.d> C;
    public final boolean D;
    public final String x;
    public volatile b y;
    public Boolean z;

    public d(String str, Queue<k.f.d.d> queue, boolean z2) {
        this.x = str;
        this.C = queue;
        this.D = z2;
    }

    public boolean a() {
        return c().a();
    }

    public void b(String str, Object... objArr) {
        c().b(str, objArr);
    }

    public void c(String str, Throwable th) {
        c().c(str, th);
    }

    public void d(String str, Object obj) {
        c().d(str, obj);
    }

    public boolean e() {
        return c().e();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && d.class == obj.getClass() && this.x.equals(((d) obj).x);
    }

    public boolean f() {
        return c().f();
    }

    public boolean g() {
        Boolean bool = this.z;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            this.A = this.y.getClass().getMethod(DatabasePersistence.COLUMN_LOG, new Class[]{c.class});
            this.z = Boolean.TRUE;
        } catch (NoSuchMethodException unused) {
            this.z = Boolean.FALSE;
        }
        return this.z.booleanValue();
    }

    public String getName() {
        return this.x;
    }

    public int hashCode() {
        return this.x.hashCode();
    }

    public void a(String str, Object obj, Object obj2) {
        c().a(str, obj, obj2);
    }

    public void b(String str) {
        c().b(str);
    }

    public void c(String str, Object obj, Object obj2) {
        c().c(str, obj, obj2);
    }

    public boolean d() {
        return c().d();
    }

    public void e(String str) {
        c().e(str);
    }

    public void a(String str, Throwable th) {
        c().a(str, th);
    }

    public void b(String str, Object obj) {
        c().b(str, obj);
    }

    public void c(String str) {
        c().c(str);
    }

    public void d(String str, Throwable th) {
        c().d(str, th);
    }

    public void e(String str, Object obj, Object obj2) {
        c().e(str, obj, obj2);
    }

    public void a(String str) {
        c().a(str);
    }

    public boolean b() {
        return c().b();
    }

    public void c(String str, Object obj) {
        c().c(str, obj);
    }

    public void d(String str) {
        c().d(str);
    }

    public void e(String str, Object obj) {
        c().e(str, obj);
    }

    public void a(String str, Object obj) {
        c().a(str, obj);
    }

    public void b(String str, Object obj, Object obj2) {
        c().b(str, obj, obj2);
    }

    public void c(String str, Object... objArr) {
        c().c(str, objArr);
    }

    public void d(String str, Object obj, Object obj2) {
        c().d(str, obj, obj2);
    }

    public void e(String str, Throwable th) {
        c().e(str, th);
    }

    public void a(String str, Object... objArr) {
        c().a(str, objArr);
    }

    public void b(String str, Throwable th) {
        c().b(str, th);
    }

    public b c() {
        if (this.y != null) {
            return this.y;
        }
        if (this.D) {
            return b.x;
        }
        if (this.B == null) {
            this.B = new a(this, this.C);
        }
        return this.B;
    }
}
