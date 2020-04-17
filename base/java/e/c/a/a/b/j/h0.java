package e.c.a.a.b.j;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import e.c.a.a.b.m.b;
import javax.annotation.concurrent.GuardedBy;

public final class h0 {
    public static Object a = new Object();
    @GuardedBy("sLock")
    public static boolean b;

    /* renamed from: c  reason: collision with root package name */
    public static int f1204c;

    public static void a(Context context) {
        synchronized (a) {
            if (!b) {
                b = true;
                try {
                    Bundle bundle = b.b(context).a.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
                    if (bundle != null) {
                        bundle.getString("com.google.app.id");
                        f1204c = bundle.getInt("com.google.android.gms.version");
                    }
                } catch (PackageManager.NameNotFoundException e2) {
                    Log.wtf("MetadataValueReader", "This should never happen.", e2);
                }
            }
        }
    }
}
