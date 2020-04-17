package d.d.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import c.a.a.a;

public class b {
    public final c.a.a.b a;
    public final ComponentName b;

    public class a extends a.C0002a {
        public Handler a = new Handler(Looper.getMainLooper());
        public final /* synthetic */ a b = null;

        public a(b bVar) {
        }
    }

    public b(c.a.a.b bVar, ComponentName componentName) {
        this.a = bVar;
        this.b = componentName;
    }

    public static boolean a(Context context, String str, d dVar) {
        Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
        if (!TextUtils.isEmpty(str)) {
            intent.setPackage(str);
        }
        return context.bindService(intent, dVar, 33);
    }

    public e a(a aVar) {
        a aVar2 = new a(this);
        try {
            if (!this.a.a((c.a.a.a) aVar2)) {
                return null;
            }
            return new e(this.a, aVar2, this.b);
        } catch (RemoteException unused) {
            return null;
        }
    }
}
