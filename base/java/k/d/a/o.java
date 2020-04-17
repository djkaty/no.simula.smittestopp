package k.d.a;

import java.lang.reflect.Method;
import org.greenrobot.eventbus.ThreadMode;

public class o {
    public final Method a;
    public final ThreadMode b;

    /* renamed from: c  reason: collision with root package name */
    public final Class<?> f2315c;

    /* renamed from: d  reason: collision with root package name */
    public final int f2316d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f2317e;

    /* renamed from: f  reason: collision with root package name */
    public String f2318f;

    public o(Method method, Class<?> cls, ThreadMode threadMode, int i2, boolean z) {
        this.a = method;
        this.b = threadMode;
        this.f2315c = cls;
        this.f2316d = i2;
        this.f2317e = z;
    }

    public final synchronized void a() {
        if (this.f2318f == null) {
            StringBuilder sb = new StringBuilder(64);
            sb.append(this.a.getDeclaringClass().getName());
            sb.append('#');
            sb.append(this.a.getName());
            sb.append('(');
            sb.append(this.f2315c.getName());
            this.f2318f = sb.toString();
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        a();
        o oVar = (o) obj;
        oVar.a();
        return this.f2318f.equals(oVar.f2318f);
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
