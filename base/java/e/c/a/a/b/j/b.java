package e.c.a.a.b.j;

import android.accounts.Account;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.api.Scope;
import d.b.a.r;
import e.c.a.a.b.i.k.q;
import e.c.a.a.b.j.i;
import e.c.a.a.b.j.l;
import java.util.ArrayList;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.GuardedBy;

public abstract class b<T extends IInterface> {
    public static final e.c.a.a.b.c[] u = new e.c.a.a.b.c[0];
    public f0 a;
    public final Context b;

    /* renamed from: c  reason: collision with root package name */
    public final i f1165c;

    /* renamed from: d  reason: collision with root package name */
    public final Handler f1166d;

    /* renamed from: e  reason: collision with root package name */
    public final Object f1167e = new Object();

    /* renamed from: f  reason: collision with root package name */
    public final Object f1168f = new Object();
    @GuardedBy("mServiceBrokerLock")

    /* renamed from: g  reason: collision with root package name */
    public n f1169g;

    /* renamed from: h  reason: collision with root package name */
    public c f1170h;
    @GuardedBy("mLock")

    /* renamed from: i  reason: collision with root package name */
    public T f1171i;

    /* renamed from: j  reason: collision with root package name */
    public final ArrayList<h<?>> f1172j = new ArrayList<>();
    @GuardedBy("mLock")

    /* renamed from: k  reason: collision with root package name */
    public j f1173k;
    @GuardedBy("mLock")

    /* renamed from: l  reason: collision with root package name */
    public int f1174l = 1;
    public final a m;
    public final C0064b n;
    public final int o;
    public final String p;
    public e.c.a.a.b.a q = null;
    public boolean r = false;
    public volatile z s = null;
    public AtomicInteger t = new AtomicInteger(0);

    public interface a {
    }

    /* renamed from: e.c.a.a.b.j.b$b  reason: collision with other inner class name */
    public interface C0064b {
    }

    public interface c {
        void a(e.c.a.a.b.a aVar);
    }

    public class d implements c {
        public d() {
        }

        public void a(e.c.a.a.b.a aVar) {
            if (aVar.b()) {
                b bVar = b.this;
                bVar.a((k) null, ((h) bVar).v);
                return;
            }
            C0064b bVar2 = b.this.n;
            if (bVar2 != null) {
                ((w) bVar2).a.a(aVar);
            }
        }
    }

    public interface e {
    }

    public abstract class f extends h<Boolean> {

        /* renamed from: d  reason: collision with root package name */
        public final int f1175d;

        /* renamed from: e  reason: collision with root package name */
        public final Bundle f1176e;

        public f(int i2, Bundle bundle) {
            super(true);
            this.f1175d = i2;
            this.f1176e = bundle;
        }

        public abstract void a(e.c.a.a.b.a aVar);

        /* JADX WARNING: type inference failed for: r5v11, types: [android.os.Parcelable] */
        /* JADX WARNING: Multi-variable type inference failed */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final /* synthetic */ void a(java.lang.Object r5) {
            /*
                r4 = this;
                java.lang.Boolean r5 = (java.lang.Boolean) r5
                r0 = 1
                r1 = 0
                if (r5 != 0) goto L_0x000c
                e.c.a.a.b.j.b r5 = e.c.a.a.b.j.b.this
                r5.b(r0, r1)
                return
            L_0x000c:
                int r5 = r4.f1175d
                if (r5 == 0) goto L_0x0061
                r2 = 10
                if (r5 == r2) goto L_0x0031
                e.c.a.a.b.j.b r5 = e.c.a.a.b.j.b.this
                r5.b(r0, r1)
                android.os.Bundle r5 = r4.f1176e
                if (r5 == 0) goto L_0x0026
                java.lang.String r0 = "pendingIntent"
                android.os.Parcelable r5 = r5.getParcelable(r0)
                r1 = r5
                android.app.PendingIntent r1 = (android.app.PendingIntent) r1
            L_0x0026:
                e.c.a.a.b.a r5 = new e.c.a.a.b.a
                int r0 = r4.f1175d
                r5.<init>(r0, r1)
                r4.a((e.c.a.a.b.a) r5)
                goto L_0x0076
            L_0x0031:
                e.c.a.a.b.j.b r5 = e.c.a.a.b.j.b.this
                r5.b(r0, r1)
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                r1 = 3
                java.lang.Object[] r1 = new java.lang.Object[r1]
                r2 = 0
                java.lang.Class r3 = r4.getClass()
                java.lang.String r3 = r3.getSimpleName()
                r1[r2] = r3
                e.c.a.a.b.j.b r2 = e.c.a.a.b.j.b.this
                java.lang.String r2 = r2.m()
                r1[r0] = r2
                r0 = 2
                e.c.a.a.b.j.b r2 = e.c.a.a.b.j.b.this
                java.lang.String r2 = r2.l()
                r1[r0] = r2
                java.lang.String r0 = "A fatal developer error has occurred. Class name: %s. Start service action: %s. Service Descriptor: %s. "
                java.lang.String r0 = java.lang.String.format(r0, r1)
                r5.<init>(r0)
                throw r5
            L_0x0061:
                boolean r5 = r4.d()
                if (r5 != 0) goto L_0x0076
                e.c.a.a.b.j.b r5 = e.c.a.a.b.j.b.this
                r5.b(r0, r1)
                e.c.a.a.b.a r5 = new e.c.a.a.b.a
                r0 = 8
                r5.<init>(r0, r1)
                r4.a((e.c.a.a.b.a) r5)
            L_0x0076:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: e.c.a.a.b.j.b.f.a(java.lang.Object):void");
        }

        public abstract boolean d();
    }

    public final class g extends e.c.a.a.d.b.d {
        public g(Looper looper) {
            super(looper);
        }

        public static void a(Message message) {
            h hVar = (h) message.obj;
            if (((f) hVar) != null) {
                hVar.b();
                return;
            }
            throw null;
        }

        public static boolean b(Message message) {
            int i2 = message.what;
            return i2 == 2 || i2 == 1 || i2 == 7;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:13:0x0029, code lost:
            if (r0 == 5) goto L_0x002b;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void handleMessage(android.os.Message r8) {
            /*
                r7 = this;
                e.c.a.a.b.j.b r0 = e.c.a.a.b.j.b.this
                java.util.concurrent.atomic.AtomicInteger r0 = r0.t
                int r0 = r0.get()
                int r1 = r8.arg1
                if (r0 == r1) goto L_0x0016
                boolean r0 = b(r8)
                if (r0 == 0) goto L_0x0015
                a(r8)
            L_0x0015:
                return
            L_0x0016:
                int r0 = r8.what
                r1 = 4
                r2 = 1
                r3 = 5
                r4 = 0
                if (r0 == r2) goto L_0x002b
                r5 = 7
                if (r0 == r5) goto L_0x002b
                if (r0 != r1) goto L_0x0029
                e.c.a.a.b.j.b r0 = e.c.a.a.b.j.b.this
                if (r0 == 0) goto L_0x0028
                goto L_0x002b
            L_0x0028:
                throw r4
            L_0x0029:
                if (r0 != r3) goto L_0x0037
            L_0x002b:
                e.c.a.a.b.j.b r0 = e.c.a.a.b.j.b.this
                boolean r0 = r0.a()
                if (r0 != 0) goto L_0x0037
                a(r8)
                return
            L_0x0037:
                int r0 = r8.what
                r5 = 8
                r6 = 3
                if (r0 != r1) goto L_0x0077
                e.c.a.a.b.j.b r0 = e.c.a.a.b.j.b.this
                e.c.a.a.b.a r1 = new e.c.a.a.b.a
                int r8 = r8.arg2
                r1.<init>(r8)
                r0.q = r1
                e.c.a.a.b.j.b r8 = e.c.a.a.b.j.b.this
                boolean r8 = e.c.a.a.b.j.b.b(r8)
                if (r8 == 0) goto L_0x005b
                e.c.a.a.b.j.b r8 = e.c.a.a.b.j.b.this
                boolean r0 = r8.r
                if (r0 != 0) goto L_0x005b
                r8.b(r6, r4)
                return
            L_0x005b:
                e.c.a.a.b.j.b r8 = e.c.a.a.b.j.b.this
                e.c.a.a.b.a r8 = r8.q
                if (r8 == 0) goto L_0x0062
                goto L_0x0067
            L_0x0062:
                e.c.a.a.b.a r8 = new e.c.a.a.b.a
                r8.<init>(r5)
            L_0x0067:
                e.c.a.a.b.j.b r0 = e.c.a.a.b.j.b.this
                e.c.a.a.b.j.b$c r0 = r0.f1170h
                r0.a(r8)
                e.c.a.a.b.j.b r8 = e.c.a.a.b.j.b.this
                if (r8 == 0) goto L_0x0076
                java.lang.System.currentTimeMillis()
                return
            L_0x0076:
                throw r4
            L_0x0077:
                if (r0 != r3) goto L_0x0095
                e.c.a.a.b.j.b r8 = e.c.a.a.b.j.b.this
                e.c.a.a.b.a r8 = r8.q
                if (r8 == 0) goto L_0x0080
                goto L_0x0085
            L_0x0080:
                e.c.a.a.b.a r8 = new e.c.a.a.b.a
                r8.<init>(r5)
            L_0x0085:
                e.c.a.a.b.j.b r0 = e.c.a.a.b.j.b.this
                e.c.a.a.b.j.b$c r0 = r0.f1170h
                r0.a(r8)
                e.c.a.a.b.j.b r8 = e.c.a.a.b.j.b.this
                if (r8 == 0) goto L_0x0094
                java.lang.System.currentTimeMillis()
                return
            L_0x0094:
                throw r4
            L_0x0095:
                if (r0 != r6) goto L_0x00b8
                java.lang.Object r0 = r8.obj
                boolean r1 = r0 instanceof android.app.PendingIntent
                if (r1 == 0) goto L_0x00a0
                android.app.PendingIntent r0 = (android.app.PendingIntent) r0
                goto L_0x00a1
            L_0x00a0:
                r0 = r4
            L_0x00a1:
                e.c.a.a.b.a r1 = new e.c.a.a.b.a
                int r8 = r8.arg2
                r1.<init>(r8, r0)
                e.c.a.a.b.j.b r8 = e.c.a.a.b.j.b.this
                e.c.a.a.b.j.b$c r8 = r8.f1170h
                r8.a(r1)
                e.c.a.a.b.j.b r8 = e.c.a.a.b.j.b.this
                if (r8 == 0) goto L_0x00b7
                java.lang.System.currentTimeMillis()
                return
            L_0x00b7:
                throw r4
            L_0x00b8:
                r1 = 6
                if (r0 != r1) goto L_0x00dd
                e.c.a.a.b.j.b r0 = e.c.a.a.b.j.b.this
                r0.b(r3, r4)
                e.c.a.a.b.j.b r0 = e.c.a.a.b.j.b.this
                e.c.a.a.b.j.b$a r0 = r0.m
                if (r0 == 0) goto L_0x00cf
                int r8 = r8.arg2
                e.c.a.a.b.j.v r0 = (e.c.a.a.b.j.v) r0
                e.c.a.a.b.i.d$a r0 = r0.a
                r0.a((int) r8)
            L_0x00cf:
                e.c.a.a.b.j.b r8 = e.c.a.a.b.j.b.this
                if (r8 == 0) goto L_0x00dc
                java.lang.System.currentTimeMillis()
                e.c.a.a.b.j.b r8 = e.c.a.a.b.j.b.this
                r8.a(r3, r2, r4)
                return
            L_0x00dc:
                throw r4
            L_0x00dd:
                r1 = 2
                if (r0 != r1) goto L_0x00ec
                e.c.a.a.b.j.b r0 = e.c.a.a.b.j.b.this
                boolean r0 = r0.c()
                if (r0 != 0) goto L_0x00ec
                a(r8)
                return
            L_0x00ec:
                boolean r0 = b(r8)
                if (r0 == 0) goto L_0x00fa
                java.lang.Object r8 = r8.obj
                e.c.a.a.b.j.b$h r8 = (e.c.a.a.b.j.b.h) r8
                r8.c()
                return
            L_0x00fa:
                int r8 = r8.what
                r0 = 45
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>(r0)
                java.lang.String r0 = "Don't know how to handle message: "
                r1.append(r0)
                r1.append(r8)
                java.lang.String r8 = r1.toString()
                java.lang.Exception r0 = new java.lang.Exception
                r0.<init>()
                java.lang.String r1 = "GmsClient"
                android.util.Log.wtf(r1, r8, r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: e.c.a.a.b.j.b.g.handleMessage(android.os.Message):void");
        }
    }

    public abstract class h<TListener> {
        public TListener a;
        public boolean b = false;

        public h(TListener tlistener) {
            this.a = tlistener;
        }

        public final void a() {
            synchronized (this) {
                this.a = null;
            }
        }

        public abstract void a(TListener tlistener);

        public final void b() {
            a();
            synchronized (b.this.f1172j) {
                b.this.f1172j.remove(this);
            }
        }

        public final void c() {
            TListener tlistener;
            synchronized (this) {
                tlistener = this.a;
                if (this.b) {
                    String valueOf = String.valueOf(this);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 47);
                    sb.append("Callback proxy ");
                    sb.append(valueOf);
                    sb.append(" being reused. This is not safe.");
                    Log.w("GmsClient", sb.toString());
                }
            }
            if (tlistener != null) {
                try {
                    a(tlistener);
                } catch (RuntimeException e2) {
                    throw e2;
                }
            }
            synchronized (this) {
                this.b = true;
            }
            b();
        }
    }

    public static final class i extends l.a {
        public b a;
        public final int b;

        public i(b bVar, int i2) {
            this.a = bVar;
            this.b = i2;
        }

        public final void a(int i2, IBinder iBinder, Bundle bundle) {
            r.b(this.a, (Object) "onPostInitComplete can be called only once per call to getRemoteService");
            b bVar = this.a;
            int i3 = this.b;
            Handler handler = bVar.f1166d;
            handler.sendMessage(handler.obtainMessage(1, i3, -1, new k(i2, iBinder, bundle)));
            this.a = null;
        }
    }

    public final class j implements ServiceConnection {
        public final int a;

        public j(int i2) {
            this.a = i2;
        }

        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            n nVar;
            if (iBinder == null) {
                b.a(b.this);
                return;
            }
            synchronized (b.this.f1168f) {
                b bVar = b.this;
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                if (queryLocalInterface == null || !(queryLocalInterface instanceof n)) {
                    nVar = new m(iBinder);
                } else {
                    nVar = (n) queryLocalInterface;
                }
                bVar.f1169g = nVar;
            }
            b bVar2 = b.this;
            int i2 = this.a;
            Handler handler = bVar2.f1166d;
            handler.sendMessage(handler.obtainMessage(7, i2, -1, new l(0)));
        }

        public final void onServiceDisconnected(ComponentName componentName) {
            synchronized (b.this.f1168f) {
                b.this.f1169g = null;
            }
            Handler handler = b.this.f1166d;
            handler.sendMessage(handler.obtainMessage(6, this.a, 1));
        }
    }

    public final class k extends f {

        /* renamed from: g  reason: collision with root package name */
        public final IBinder f1179g;

        public k(int i2, IBinder iBinder, Bundle bundle) {
            super(i2, bundle);
            this.f1179g = iBinder;
        }

        public final void a(e.c.a.a.b.a aVar) {
            C0064b bVar = b.this.n;
            if (bVar != null) {
                ((w) bVar).a.a(aVar);
            }
            if (b.this != null) {
                int i2 = aVar.y;
                System.currentTimeMillis();
                return;
            }
            throw null;
        }

        public final boolean d() {
            try {
                String interfaceDescriptor = this.f1179g.getInterfaceDescriptor();
                if (!b.this.l().equals(interfaceDescriptor)) {
                    String l2 = b.this.l();
                    StringBuilder sb = new StringBuilder(String.valueOf(interfaceDescriptor).length() + String.valueOf(l2).length() + 34);
                    sb.append("service descriptor mismatch: ");
                    sb.append(l2);
                    sb.append(" vs. ");
                    sb.append(interfaceDescriptor);
                    Log.e("GmsClient", sb.toString());
                    return false;
                }
                IInterface a = b.this.a(this.f1179g);
                if (a == null || (!b.this.a(2, 4, a) && !b.this.a(3, 4, a))) {
                    return false;
                }
                b bVar = b.this;
                bVar.q = null;
                a aVar = bVar.m;
                if (aVar == null) {
                    return true;
                }
                ((v) aVar).a.a((Bundle) null);
                return true;
            } catch (RemoteException unused) {
                Log.w("GmsClient", "service probably died");
                return false;
            }
        }
    }

    public final class l extends f {
        public l(int i2) {
            super(i2, (Bundle) null);
        }

        public final void a(e.c.a.a.b.a aVar) {
            b bVar = b.this;
            if (bVar != null) {
                bVar.f1170h.a(aVar);
                if (b.this != null) {
                    int i2 = aVar.y;
                    System.currentTimeMillis();
                    return;
                }
                throw null;
            }
            throw null;
        }

        public final boolean d() {
            b.this.f1170h.a(e.c.a.a.b.a.B);
            return true;
        }
    }

    public b(Context context, Looper looper, i iVar, e.c.a.a.b.e eVar, int i2, a aVar, C0064b bVar, String str) {
        r.b(context, (Object) "Context must not be null");
        this.b = context;
        r.b(looper, (Object) "Looper must not be null");
        Looper looper2 = looper;
        r.b(iVar, (Object) "Supervisor must not be null");
        this.f1165c = iVar;
        r.b(eVar, (Object) "API availability must not be null");
        e.c.a.a.b.e eVar2 = eVar;
        this.f1166d = new g(looper);
        this.o = i2;
        this.m = aVar;
        this.n = bVar;
        this.p = str;
    }

    public abstract T a(IBinder iBinder);

    public void a(int i2, T t2) {
    }

    public final boolean a(int i2, int i3, T t2) {
        synchronized (this.f1167e) {
            if (this.f1174l != i2) {
                return false;
            }
            b(i3, t2);
            return true;
        }
    }

    public final e.c.a.a.b.c[] b() {
        z zVar = this.s;
        if (zVar == null) {
            return null;
        }
        return zVar.y;
    }

    public boolean c() {
        boolean z;
        synchronized (this.f1167e) {
            z = this.f1174l == 4;
        }
        return z;
    }

    public String d() {
        f0 f0Var;
        if (c() && (f0Var = this.a) != null) {
            return f0Var.b;
        }
        throw new RuntimeException("Failed to connect when checking package");
    }

    public void e() {
        this.t.incrementAndGet();
        synchronized (this.f1172j) {
            int size = this.f1172j.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f1172j.get(i2).a();
            }
            this.f1172j.clear();
        }
        synchronized (this.f1168f) {
            this.f1169g = null;
        }
        b(1, (IInterface) null);
    }

    public boolean g() {
        return false;
    }

    public boolean h() {
        return true;
    }

    public Bundle j() {
        return new Bundle();
    }

    public final T k() {
        T t2;
        synchronized (this.f1167e) {
            if (this.f1174l == 5) {
                throw new DeadObjectException();
            } else if (c()) {
                r.a(this.f1171i != null, (Object) "Client is connected but service is null");
                t2 = this.f1171i;
            } else {
                throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
            }
        }
        return t2;
    }

    public abstract String l();

    public abstract String m();

    public final String n() {
        String str = this.p;
        return str == null ? this.b.getClass().getName() : str;
    }

    public final boolean o() {
        boolean z;
        synchronized (this.f1167e) {
            z = this.f1174l == 3;
        }
        return z;
    }

    public final void b(int i2, T t2) {
        r.a((i2 == 4) == (t2 != null));
        synchronized (this.f1167e) {
            this.f1174l = i2;
            this.f1171i = t2;
            a(i2, t2);
            if (i2 != 1) {
                if (i2 == 2 || i2 == 3) {
                    if (!(this.f1173k == null || this.a == null)) {
                        String str = this.a.a;
                        String str2 = this.a.b;
                        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 70 + String.valueOf(str2).length());
                        sb.append("Calling connect() while still connected, missing disconnect() for ");
                        sb.append(str);
                        sb.append(" on ");
                        sb.append(str2);
                        Log.e("GmsClient", sb.toString());
                        i iVar = this.f1165c;
                        String str3 = this.a.a;
                        String str4 = this.a.b;
                        int i3 = this.a.f1203c;
                        j jVar = this.f1173k;
                        String n2 = n();
                        if (iVar != null) {
                            iVar.b(new i.a(str3, str4, i3), jVar, n2);
                            this.t.incrementAndGet();
                        } else {
                            throw null;
                        }
                    }
                    this.f1173k = new j(this.t.get());
                    f0 f0Var = new f0("com.google.android.gms", m(), false);
                    this.a = f0Var;
                    if (!this.f1165c.a(new i.a(f0Var.a, f0Var.b, f0Var.f1203c), this.f1173k, n())) {
                        String str5 = this.a.a;
                        String str6 = this.a.b;
                        StringBuilder sb2 = new StringBuilder(String.valueOf(str5).length() + 34 + String.valueOf(str6).length());
                        sb2.append("unable to connect to service: ");
                        sb2.append(str5);
                        sb2.append(" on ");
                        sb2.append(str6);
                        Log.e("GmsClient", sb2.toString());
                        int i4 = this.t.get();
                        Handler handler = this.f1166d;
                        handler.sendMessage(handler.obtainMessage(7, i4, -1, new l(16)));
                    }
                } else if (i2 == 4) {
                    System.currentTimeMillis();
                }
            } else if (this.f1173k != null) {
                i iVar2 = this.f1165c;
                String str7 = this.a.a;
                String str8 = this.a.b;
                int i5 = this.a.f1203c;
                j jVar2 = this.f1173k;
                String n3 = n();
                if (iVar2 != null) {
                    iVar2.b(new i.a(str7, str8, i5), jVar2, n3);
                    this.f1173k = null;
                } else {
                    throw null;
                }
            }
        }
    }

    public void a(c cVar) {
        r.b(cVar, (Object) "Connection progress callbacks cannot be null.");
        this.f1170h = cVar;
        b(2, (IInterface) null);
    }

    public boolean a() {
        boolean z;
        synchronized (this.f1167e) {
            if (this.f1174l != 2) {
                if (this.f1174l != 3) {
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }

    public static /* synthetic */ void a(b bVar) {
        int i2;
        if (bVar.o()) {
            i2 = 5;
            bVar.r = true;
        } else {
            i2 = 4;
        }
        Handler handler = bVar.f1166d;
        handler.sendMessage(handler.obtainMessage(i2, bVar.t.get(), 16));
    }

    public void a(k kVar, Set<Scope> set) {
        Bundle j2 = j();
        g gVar = new g(this.o);
        gVar.A = this.b.getPackageName();
        gVar.D = j2;
        if (set != null) {
            gVar.C = (Scope[]) set.toArray(new Scope[set.size()]);
        }
        if (g()) {
            Account account = ((h) this).w;
            if (account == null) {
                account = new Account("<<default account>>", "com.google");
            }
            gVar.E = account;
            if (kVar != null) {
                gVar.B = kVar.asBinder();
            }
        }
        e.c.a.a.b.c[] cVarArr = u;
        gVar.F = cVarArr;
        gVar.G = cVarArr;
        try {
            synchronized (this.f1168f) {
                if (this.f1169g != null) {
                    this.f1169g.a(new i(this, this.t.get()), gVar);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (DeadObjectException e2) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e2);
            Handler handler = this.f1166d;
            handler.sendMessage(handler.obtainMessage(6, this.t.get(), 1));
        } catch (SecurityException e3) {
            throw e3;
        } catch (RemoteException | RuntimeException e4) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e4);
            int i2 = this.t.get();
            Handler handler2 = this.f1166d;
            handler2.sendMessage(handler2.obtainMessage(1, i2, -1, new k(8, (IBinder) null, (Bundle) null)));
        }
    }

    public void a(e eVar) {
        q qVar = (q) eVar;
        e.c.a.a.b.i.k.c.this.m.post(new e.c.a.a.b.i.k.r(qVar));
    }

    public static /* synthetic */ boolean b(b bVar) {
        if (bVar.r || TextUtils.isEmpty(bVar.l()) || TextUtils.isEmpty((CharSequence) null)) {
            return false;
        }
        try {
            Class.forName(bVar.l());
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }
}
