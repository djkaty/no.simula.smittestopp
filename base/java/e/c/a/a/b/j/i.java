package e.c.a.a.b.j;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import d.b.a.r;
import java.util.Arrays;

public abstract class i {
    public static final Object a = new Object();
    public static i b;

    public static final class a {
        public final String a;
        public final String b;

        /* renamed from: c  reason: collision with root package name */
        public final ComponentName f1205c = null;

        /* renamed from: d  reason: collision with root package name */
        public final int f1206d;

        public a(String str, String str2, int i2) {
            r.a(str);
            this.a = str;
            r.a(str2);
            this.b = str2;
            this.f1206d = i2;
        }

        public final Intent a() {
            if (this.a != null) {
                return new Intent(this.a).setPackage(this.b);
            }
            return new Intent().setComponent(this.f1205c);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return r.c((Object) this.a, (Object) aVar.a) && r.c((Object) this.b, (Object) aVar.b) && r.c((Object) this.f1205c, (Object) aVar.f1205c) && this.f1206d == aVar.f1206d;
        }

        public final int hashCode() {
            return Arrays.hashCode(new Object[]{this.a, this.b, this.f1205c, Integer.valueOf(this.f1206d)});
        }

        public final String toString() {
            String str = this.a;
            return str == null ? this.f1205c.flattenToString() : str;
        }
    }

    public static i a(Context context) {
        synchronized (a) {
            if (b == null) {
                b = new c0(context.getApplicationContext());
            }
        }
        return b;
    }

    public abstract boolean a(a aVar, ServiceConnection serviceConnection, String str);

    public abstract void b(a aVar, ServiceConnection serviceConnection, String str);
}
