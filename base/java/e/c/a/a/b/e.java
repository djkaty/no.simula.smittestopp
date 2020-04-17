package e.c.a.a.b;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.microsoft.identity.common.internal.cache.CacheKeyValueDelegate;
import e.a.a.a.a;
import e.c.a.a.b.j.e0;
import e.c.a.a.b.l.c;
import e.c.a.a.b.m.b;

public class e {
    public static final int a = g.a;

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int a(android.content.Context r7, int r8) {
        /*
            r6 = this;
            int r8 = e.c.a.a.b.g.a(r7, r8)
            r0 = 1
            r1 = 0
            r2 = 18
            if (r8 != r2) goto L_0x000b
            goto L_0x0044
        L_0x000b:
            if (r8 != r0) goto L_0x0043
            java.lang.String r3 = "com.google.android.gms"
            android.content.pm.PackageManager r4 = r7.getPackageManager()     // Catch:{ Exception -> 0x0043 }
            android.content.pm.PackageInstaller r4 = r4.getPackageInstaller()     // Catch:{ Exception -> 0x0043 }
            java.util.List r4 = r4.getAllSessions()     // Catch:{ Exception -> 0x0043 }
            java.util.Iterator r4 = r4.iterator()
        L_0x001f:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L_0x0036
            java.lang.Object r5 = r4.next()
            android.content.pm.PackageInstaller$SessionInfo r5 = (android.content.pm.PackageInstaller.SessionInfo) r5
            java.lang.String r5 = r5.getAppPackageName()
            boolean r5 = r3.equals(r5)
            if (r5 == 0) goto L_0x001f
            goto L_0x0044
        L_0x0036:
            android.content.pm.PackageManager r7 = r7.getPackageManager()
            r0 = 8192(0x2000, float:1.14794E-41)
            android.content.pm.ApplicationInfo r7 = r7.getApplicationInfo(r3, r0)     // Catch:{  }
            boolean r0 = r7.enabled     // Catch:{  }
            goto L_0x0044
        L_0x0043:
            r0 = 0
        L_0x0044:
            if (r0 == 0) goto L_0x0048
            r8 = 18
        L_0x0048:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: e.c.a.a.b.e.a(android.content.Context, int):int");
    }

    public Intent a(Context context, int i2, String str) {
        if (i2 == 1 || i2 == 2) {
            if (context != null && c.b(context)) {
                return e0.a();
            }
            StringBuilder a2 = a.a("gcore_");
            a2.append(a);
            a2.append(CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR);
            if (!TextUtils.isEmpty(str)) {
                a2.append(str);
            }
            a2.append(CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR);
            if (context != null) {
                a2.append(context.getPackageName());
            }
            a2.append(CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR);
            if (context != null) {
                try {
                    e.c.a.a.b.m.a b = b.b(context);
                    a2.append(b.a.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
                } catch (PackageManager.NameNotFoundException unused) {
                }
            }
            return e0.a("com.google.android.gms", a2.toString());
        } else if (i2 != 3) {
            return null;
        } else {
            return e0.a("com.google.android.gms");
        }
    }
}
