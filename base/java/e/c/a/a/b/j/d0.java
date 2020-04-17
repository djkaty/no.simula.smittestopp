package e.c.a.a.b.j;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import e.c.a.a.b.j.i;
import java.util.HashSet;
import java.util.Set;

public final class d0 implements ServiceConnection {
    public final Set<ServiceConnection> a = new HashSet();
    public int b = 2;

    /* renamed from: c  reason: collision with root package name */
    public boolean f1198c;

    /* renamed from: d  reason: collision with root package name */
    public IBinder f1199d;

    /* renamed from: e  reason: collision with root package name */
    public final i.a f1200e;

    /* renamed from: f  reason: collision with root package name */
    public ComponentName f1201f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ c0 f1202g;

    public d0(c0 c0Var, i.a aVar) {
        this.f1202g = c0Var;
        this.f1200e = aVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x0042  */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x004a  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0052  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0066  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(java.lang.String r8) {
        /*
            r7 = this;
            r8 = 3
            r7.b = r8
            e.c.a.a.b.j.c0 r8 = r7.f1202g
            e.c.a.a.b.k.a r0 = r8.f1185f
            android.content.Context r8 = r8.f1183d
            e.c.a.a.b.j.i$a r1 = r7.f1200e
            android.content.Intent r1 = r1.a()
            e.c.a.a.b.j.i$a r2 = r7.f1200e
            int r2 = r2.f1206d
            r3 = 0
            if (r0 == 0) goto L_0x0079
            android.content.ComponentName r0 = r1.getComponent()
            r4 = 0
            r5 = 1
            if (r0 != 0) goto L_0x001f
            goto L_0x003f
        L_0x001f:
            java.lang.String r0 = r0.getPackageName()
            java.lang.String r6 = "com.google.android.gms"
            r6.equals(r0)
            e.c.a.a.b.m.a r6 = e.c.a.a.b.m.b.b(r8)     // Catch:{ NameNotFoundException -> 0x003f }
            android.content.Context r6 = r6.a     // Catch:{ NameNotFoundException -> 0x003f }
            android.content.pm.PackageManager r6 = r6.getPackageManager()     // Catch:{ NameNotFoundException -> 0x003f }
            android.content.pm.ApplicationInfo r0 = r6.getApplicationInfo(r0, r4)     // Catch:{ NameNotFoundException -> 0x003f }
            int r0 = r0.flags     // Catch:{ NameNotFoundException -> 0x003f }
            r6 = 2097152(0x200000, float:2.938736E-39)
            r0 = r0 & r6
            if (r0 == 0) goto L_0x003f
            r0 = 1
            goto L_0x0040
        L_0x003f:
            r0 = 0
        L_0x0040:
            if (r0 == 0) goto L_0x004a
            java.lang.String r8 = "ConnectionTracker"
            java.lang.String r0 = "Attempted to bind to a service in a STOPPED package."
            android.util.Log.w(r8, r0)
            goto L_0x004e
        L_0x004a:
            boolean r4 = r8.bindService(r1, r7, r2)
        L_0x004e:
            r7.f1198c = r4
            if (r4 == 0) goto L_0x0066
            e.c.a.a.b.j.c0 r8 = r7.f1202g
            android.os.Handler r8 = r8.f1184e
            e.c.a.a.b.j.i$a r0 = r7.f1200e
            android.os.Message r8 = r8.obtainMessage(r5, r0)
            e.c.a.a.b.j.c0 r0 = r7.f1202g
            android.os.Handler r1 = r0.f1184e
            long r2 = r0.f1187h
            r1.sendMessageDelayed(r8, r2)
            return
        L_0x0066:
            r8 = 2
            r7.b = r8
            e.c.a.a.b.j.c0 r8 = r7.f1202g     // Catch:{ IllegalArgumentException -> 0x0078 }
            e.c.a.a.b.k.a r8 = r8.f1185f     // Catch:{ IllegalArgumentException -> 0x0078 }
            e.c.a.a.b.j.c0 r0 = r7.f1202g     // Catch:{ IllegalArgumentException -> 0x0078 }
            android.content.Context r0 = r0.f1183d     // Catch:{ IllegalArgumentException -> 0x0078 }
            if (r8 == 0) goto L_0x0077
            r0.unbindService(r7)     // Catch:{ IllegalArgumentException -> 0x0078 }
            return
        L_0x0077:
            throw r3     // Catch:{ IllegalArgumentException -> 0x0078 }
        L_0x0078:
            return
        L_0x0079:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: e.c.a.a.b.j.d0.a(java.lang.String):void");
    }

    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.f1202g.f1182c) {
            this.f1202g.f1184e.removeMessages(1, this.f1200e);
            this.f1199d = iBinder;
            this.f1201f = componentName;
            for (ServiceConnection onServiceConnected : this.a) {
                onServiceConnected.onServiceConnected(componentName, iBinder);
            }
            this.b = 1;
        }
    }

    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.f1202g.f1182c) {
            this.f1202g.f1184e.removeMessages(1, this.f1200e);
            this.f1199d = null;
            this.f1201f = componentName;
            for (ServiceConnection onServiceDisconnected : this.a) {
                onServiceDisconnected.onServiceDisconnected(componentName);
            }
            this.b = 2;
        }
    }
}
