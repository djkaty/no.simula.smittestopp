package e.c.a.a.b.i.k;

import android.app.ActivityManager;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.microsoft.azure.storage.blob.BlobConstants;
import d.b.a.r;
import e.c.a.a.b.d;
import e.c.a.a.b.e;
import e.c.a.a.b.g;
import e.c.a.a.b.i.a;
import e.c.a.a.b.i.d;
import e.c.a.a.b.i.k.b;
import e.c.a.a.b.i.k.f;
import e.c.a.a.b.j.b;
import e.c.a.a.b.j.j;
import e.c.a.a.b.j.k;
import e.c.a.a.b.j.o;
import e.c.a.a.e.a;
import e.c.a.a.e.l;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.GuardedBy;

public class c implements Handler.Callback {
    public static final Status n = new Status(4, "Sign-out occurred while this API call was in progress.");
    public static final Status o = new Status(4, "The user must be signed in to make this API call.");
    public static final Object p = new Object();
    @GuardedBy("lock")
    public static c q;
    public long a = 5000;
    public long b = 120000;

    /* renamed from: c  reason: collision with root package name */
    public long f1129c = 10000;

    /* renamed from: d  reason: collision with root package name */
    public final Context f1130d;

    /* renamed from: e  reason: collision with root package name */
    public final d f1131e;

    /* renamed from: f  reason: collision with root package name */
    public final j f1132f;

    /* renamed from: g  reason: collision with root package name */
    public final AtomicInteger f1133g = new AtomicInteger(1);

    /* renamed from: h  reason: collision with root package name */
    public final AtomicInteger f1134h = new AtomicInteger(0);

    /* renamed from: i  reason: collision with root package name */
    public final Map<h0<?>, a<?>> f1135i = new ConcurrentHashMap(5, 0.75f, 1);
    @GuardedBy("lock")

    /* renamed from: j  reason: collision with root package name */
    public j f1136j = null;
    @GuardedBy("lock")

    /* renamed from: k  reason: collision with root package name */
    public final Set<h0<?>> f1137k = new d.f.c();

    /* renamed from: l  reason: collision with root package name */
    public final Set<h0<?>> f1138l = new d.f.c();
    public final Handler m;

    public static class b {
        public final h0<?> a;
        public final e.c.a.a.b.c b;

        public /* synthetic */ b(h0 h0Var, e.c.a.a.b.c cVar, n nVar) {
            this.a = h0Var;
            this.b = cVar;
        }

        public final boolean equals(Object obj) {
            if (obj != null && (obj instanceof b)) {
                b bVar = (b) obj;
                if (!r.c((Object) this.a, (Object) bVar.a) || !r.c((Object) this.b, (Object) bVar.b)) {
                    return false;
                }
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Arrays.hashCode(new Object[]{this.a, this.b});
        }

        public final String toString() {
            o c2 = r.c((Object) this);
            c2.a("key", this.a);
            c2.a("feature", this.b);
            return c2.toString();
        }
    }

    /* renamed from: e.c.a.a.b.i.k.c$c  reason: collision with other inner class name */
    public class C0063c implements a0, b.c {
        public final a.f a;
        public final h0<?> b;

        /* renamed from: c  reason: collision with root package name */
        public k f1149c = null;

        /* renamed from: d  reason: collision with root package name */
        public Set<Scope> f1150d = null;

        /* renamed from: e  reason: collision with root package name */
        public boolean f1151e = false;

        public C0063c(a.f fVar, h0<?> h0Var) {
            this.a = fVar;
            this.b = h0Var;
        }

        public final void a(e.c.a.a.b.a aVar) {
            c.this.m.post(new s(this, aVar));
        }

        public final void b(e.c.a.a.b.a aVar) {
            a aVar2 = c.this.f1135i.get(this.b);
            r.a(c.this.m);
            aVar2.b.e();
            aVar2.a(aVar);
        }
    }

    public c(Context context, Looper looper, d dVar) {
        this.f1130d = context;
        this.m = new e.c.a.a.d.a.c(looper, this);
        this.f1131e = dVar;
        this.f1132f = new j(dVar);
        Handler handler = this.m;
        handler.sendMessage(handler.obtainMessage(6));
    }

    public static c a(Context context) {
        c cVar;
        synchronized (p) {
            if (q == null) {
                HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
                handlerThread.start();
                q = new c(context.getApplicationContext(), handlerThread.getLooper(), d.f1123c);
            }
            cVar = q;
        }
        return cVar;
    }

    public boolean handleMessage(Message message) {
        a aVar;
        Status status;
        e.c.a.a.b.c[] b2;
        int i2 = message.what;
        int i3 = 0;
        long j2 = 300000;
        switch (i2) {
            case 1:
                if (((Boolean) message.obj).booleanValue()) {
                    j2 = 10000;
                }
                this.f1129c = j2;
                this.m.removeMessages(12);
                for (h0<?> obtainMessage : this.f1135i.keySet()) {
                    Handler handler = this.m;
                    handler.sendMessageDelayed(handler.obtainMessage(12, obtainMessage), this.f1129c);
                }
                break;
            case 2:
                if (((i0) message.obj) != null) {
                    throw null;
                }
                throw null;
            case 3:
                for (a next : this.f1135i.values()) {
                    next.g();
                    next.a();
                }
                break;
            case 4:
            case 8:
            case 13:
                u uVar = (u) message.obj;
                a aVar2 = this.f1135i.get(uVar.f1158c.f1126d);
                if (aVar2 == null) {
                    a(uVar.f1158c);
                    aVar2 = this.f1135i.get(uVar.f1158c.f1126d);
                }
                if (aVar2.b() && this.f1134h.get() != uVar.b) {
                    uVar.a.a(n);
                    aVar2.f();
                    break;
                } else {
                    aVar2.a(uVar.a);
                    break;
                }
            case 5:
                int i4 = message.arg1;
                e.c.a.a.b.a aVar3 = (e.c.a.a.b.a) message.obj;
                Iterator<a<?>> it = this.f1135i.values().iterator();
                while (true) {
                    if (it.hasNext()) {
                        aVar = it.next();
                        if (aVar.f1144h == i4) {
                        }
                    } else {
                        aVar = null;
                    }
                }
                if (aVar == null) {
                    StringBuilder sb = new StringBuilder(76);
                    sb.append("Could not find API instance ");
                    sb.append(i4);
                    sb.append(" while trying to fail enqueued calls.");
                    Log.wtf("GoogleApiManager", sb.toString(), new Exception());
                    break;
                } else {
                    d dVar = this.f1131e;
                    int i5 = aVar3.y;
                    if (dVar != null) {
                        String a2 = g.a(i5);
                        String str = aVar3.A;
                        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + String.valueOf(a2).length() + 69);
                        sb2.append("Error resolution was canceled by the user, original error message: ");
                        sb2.append(a2);
                        sb2.append(": ");
                        sb2.append(str);
                        aVar.a(new Status(17, sb2.toString()));
                        break;
                    } else {
                        throw null;
                    }
                }
            case 6:
                if (this.f1130d.getApplicationContext() instanceof Application) {
                    b.a((Application) this.f1130d.getApplicationContext());
                    b.B.a((b.a) new n(this));
                    b bVar = b.B;
                    if (!bVar.y.get()) {
                        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
                        ActivityManager.getMyMemoryState(runningAppProcessInfo);
                        if (!bVar.y.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                            bVar.x.set(true);
                        }
                    }
                    if (!bVar.x.get()) {
                        this.f1129c = 300000;
                        break;
                    }
                }
                break;
            case 7:
                a((e.c.a.a.b.i.c<?>) (e.c.a.a.b.i.c) message.obj);
                break;
            case 9:
                if (this.f1135i.containsKey(message.obj)) {
                    a aVar4 = this.f1135i.get(message.obj);
                    r.a(c.this.m);
                    if (aVar4.f1146j) {
                        aVar4.a();
                        break;
                    }
                }
                break;
            case 10:
                for (h0<?> remove : this.f1138l) {
                    this.f1135i.remove(remove).f();
                }
                this.f1138l.clear();
                break;
            case 11:
                if (this.f1135i.containsKey(message.obj)) {
                    a aVar5 = this.f1135i.get(message.obj);
                    r.a(c.this.m);
                    if (aVar5.f1146j) {
                        aVar5.h();
                        c cVar = c.this;
                        if (cVar.f1131e.a(cVar.f1130d, e.a) == 18) {
                            status = new Status(8, "Connection timed out while waiting for Google Play services update to complete.");
                        } else {
                            status = new Status(8, "API failed to connect while resuming due to an unknown error.");
                        }
                        aVar5.a(status);
                        aVar5.b.e();
                        break;
                    }
                }
                break;
            case 12:
                if (this.f1135i.containsKey(message.obj)) {
                    this.f1135i.get(message.obj).a(true);
                    break;
                }
                break;
            case 14:
                if (((k) message.obj) == null) {
                    throw null;
                } else if (!this.f1135i.containsKey((Object) null)) {
                    throw null;
                } else {
                    this.f1135i.get((Object) null).a(false);
                    throw null;
                }
            case 15:
                b bVar2 = (b) message.obj;
                if (this.f1135i.containsKey(bVar2.a)) {
                    a aVar6 = this.f1135i.get(bVar2.a);
                    if (aVar6.f1147k.contains(bVar2) && !aVar6.f1146j) {
                        if (aVar6.b.c()) {
                            aVar6.e();
                            break;
                        } else {
                            aVar6.a();
                            break;
                        }
                    }
                }
                break;
            case 16:
                b bVar3 = (b) message.obj;
                if (this.f1135i.containsKey(bVar3.a)) {
                    a aVar7 = this.f1135i.get(bVar3.a);
                    if (aVar7.f1147k.remove(bVar3)) {
                        c.this.m.removeMessages(15, bVar3);
                        c.this.m.removeMessages(16, bVar3);
                        e.c.a.a.b.c cVar2 = bVar3.b;
                        ArrayList arrayList = new ArrayList(aVar7.a.size());
                        for (m mVar : aVar7.a) {
                            if ((mVar instanceof w) && (b2 = ((w) mVar).b(aVar7)) != null) {
                                int length = b2.length;
                                int i6 = 0;
                                while (true) {
                                    if (i6 >= length) {
                                        i6 = -1;
                                    } else if (!r.c((Object) b2[i6], (Object) cVar2)) {
                                        i6++;
                                    }
                                }
                                if (i6 >= 0) {
                                    arrayList.add(mVar);
                                }
                            }
                        }
                        int size = arrayList.size();
                        while (i3 < size) {
                            Object obj = arrayList.get(i3);
                            i3++;
                            m mVar2 = (m) obj;
                            aVar7.a.remove(mVar2);
                            ((e0) mVar2).a.a.b((Exception) new e.c.a.a.b.i.j(cVar2));
                        }
                        break;
                    }
                }
                break;
            default:
                StringBuilder sb3 = new StringBuilder(31);
                sb3.append("Unknown message id: ");
                sb3.append(i2);
                Log.w("GoogleApiManager", sb3.toString());
                return false;
        }
        return true;
    }

    public class a<O extends a.d> implements d.a, d.b, l0 {
        public final Queue<m> a = new LinkedList();
        public final a.f b;

        /* renamed from: c  reason: collision with root package name */
        public final a.b f1139c;

        /* renamed from: d  reason: collision with root package name */
        public final h0<O> f1140d;

        /* renamed from: e  reason: collision with root package name */
        public final i f1141e;

        /* renamed from: f  reason: collision with root package name */
        public final Set<i0> f1142f = new HashSet();

        /* renamed from: g  reason: collision with root package name */
        public final Map<f.a<?>, v> f1143g = new HashMap();

        /* renamed from: h  reason: collision with root package name */
        public final int f1144h;

        /* renamed from: i  reason: collision with root package name */
        public final x f1145i;

        /* renamed from: j  reason: collision with root package name */
        public boolean f1146j;

        /* renamed from: k  reason: collision with root package name */
        public final List<b> f1147k = new ArrayList();

        /* renamed from: l  reason: collision with root package name */
        public e.c.a.a.b.a f1148l = null;

        public a(e.c.a.a.b.i.c<O> cVar) {
            Looper looper = c.this.m.getLooper();
            e.c.a.a.b.j.d a2 = cVar.a().a();
            e.c.a.a.b.i.a<O> aVar = cVar.b;
            r.a(aVar.a != null, (Object) "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
            a.f a3 = aVar.a.a(cVar.a, looper, a2, cVar.f1125c, this, this);
            this.b = a3;
            if (!(a3 instanceof e.c.a.a.b.j.r)) {
                this.f1139c = a3;
            } else if (((e.c.a.a.b.j.r) a3) != null) {
                this.f1139c = null;
            } else {
                throw null;
            }
            this.f1140d = cVar.f1126d;
            this.f1141e = new i();
            this.f1144h = cVar.f1127e;
            if (this.b.g()) {
                this.f1145i = new x(c.this.f1130d, c.this.m, cVar.a().a());
            } else {
                this.f1145i = null;
            }
        }

        public final void a(Bundle bundle) {
            if (Looper.myLooper() == c.this.m.getLooper()) {
                c();
            } else {
                c.this.m.post(new o(this));
            }
        }

        public final boolean b(m mVar) {
            if (!(mVar instanceof w)) {
                c(mVar);
                return true;
            }
            w wVar = (w) mVar;
            e.c.a.a.b.c a2 = a(wVar.b(this));
            if (a2 == null) {
                c(mVar);
                return true;
            } else if (wVar.c(this)) {
                b bVar = new b(this.f1140d, a2, (n) null);
                int indexOf = this.f1147k.indexOf(bVar);
                if (indexOf >= 0) {
                    b bVar2 = this.f1147k.get(indexOf);
                    c.this.m.removeMessages(15, bVar2);
                    Handler handler = c.this.m;
                    handler.sendMessageDelayed(Message.obtain(handler, 15, bVar2), c.this.a);
                    return false;
                }
                this.f1147k.add(bVar);
                Handler handler2 = c.this.m;
                handler2.sendMessageDelayed(Message.obtain(handler2, 15, bVar), c.this.a);
                Handler handler3 = c.this.m;
                handler3.sendMessageDelayed(Message.obtain(handler3, 16, bVar), c.this.b);
                e.c.a.a.b.a aVar = new e.c.a.a.b.a(2, (PendingIntent) null);
                b(aVar);
                c.this.a(aVar, this.f1144h);
                return false;
            } else {
                ((e0) wVar).a.a.b((Exception) new e.c.a.a.b.i.j(a2));
                return false;
            }
        }

        public final void c() {
            g();
            c(e.c.a.a.b.a.B);
            h();
            Iterator<v> it = this.f1143g.values().iterator();
            while (it.hasNext()) {
                v next = it.next();
                if (a(next.a.b) != null) {
                    it.remove();
                } else {
                    try {
                        g<a.b, ?> gVar = next.a;
                        a.b bVar = this.f1139c;
                        e.c.a.a.g.b bVar2 = new e.c.a.a.g.b();
                        l lVar = (l) gVar;
                        if (lVar != null) {
                            ((e.c.a.a.d.c.o) bVar).a(lVar.f1213d, lVar.f1214e, new a.C0067a(bVar2));
                        } else {
                            throw null;
                        }
                    } catch (DeadObjectException unused) {
                        a(1);
                        this.b.e();
                    } catch (RemoteException unused2) {
                        it.remove();
                    }
                }
            }
            e();
            i();
        }

        public final void d() {
            g();
            this.f1146j = true;
            i iVar = this.f1141e;
            if (iVar != null) {
                iVar.a(true, c0.a);
                Handler handler = c.this.m;
                handler.sendMessageDelayed(Message.obtain(handler, 9, this.f1140d), c.this.a);
                Handler handler2 = c.this.m;
                handler2.sendMessageDelayed(Message.obtain(handler2, 11, this.f1140d), c.this.b);
                c.this.f1132f.a.clear();
                return;
            }
            throw null;
        }

        public final void e() {
            ArrayList arrayList = new ArrayList(this.a);
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                m mVar = (m) obj;
                if (!this.b.c()) {
                    return;
                }
                if (b(mVar)) {
                    this.a.remove(mVar);
                }
            }
        }

        public final void f() {
            r.a(c.this.m);
            a(c.n);
            i iVar = this.f1141e;
            if (iVar != null) {
                iVar.a(false, c.n);
                for (f.a g0Var : (f.a[]) this.f1143g.keySet().toArray(new f.a[this.f1143g.size()])) {
                    a((m) new g0(g0Var, new e.c.a.a.g.b()));
                }
                c(new e.c.a.a.b.a(4));
                if (this.b.c()) {
                    this.b.a((b.e) new q(this));
                    return;
                }
                return;
            }
            throw null;
        }

        public final void g() {
            r.a(c.this.m);
            this.f1148l = null;
        }

        public final void h() {
            if (this.f1146j) {
                c.this.m.removeMessages(11, this.f1140d);
                c.this.m.removeMessages(9, this.f1140d);
                this.f1146j = false;
            }
        }

        public final void i() {
            c.this.m.removeMessages(12, this.f1140d);
            Handler handler = c.this.m;
            handler.sendMessageDelayed(handler.obtainMessage(12, this.f1140d), c.this.f1129c);
        }

        public final void a(int i2) {
            if (Looper.myLooper() == c.this.m.getLooper()) {
                d();
            } else {
                c.this.m.post(new p(this));
            }
        }

        public final void a(e.c.a.a.b.a aVar) {
            e.c.a.a.f.f fVar;
            r.a(c.this.m);
            x xVar = this.f1145i;
            if (!(xVar == null || (fVar = xVar.f1163f) == null)) {
                fVar.e();
            }
            g();
            c.this.f1132f.a.clear();
            c(aVar);
            if (aVar.y == 4) {
                a(c.o);
            } else if (this.a.isEmpty()) {
                this.f1148l = aVar;
            } else {
                b(aVar);
                if (!c.this.a(aVar, this.f1144h)) {
                    if (aVar.y == 18) {
                        this.f1146j = true;
                    }
                    if (this.f1146j) {
                        Handler handler = c.this.m;
                        handler.sendMessageDelayed(Message.obtain(handler, 9, this.f1140d), c.this.a);
                        return;
                    }
                    String str = this.f1140d.f1156c.b;
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 38);
                    sb.append("API: ");
                    sb.append(str);
                    sb.append(" is not available on this device.");
                    a(new Status(17, sb.toString()));
                }
            }
        }

        public final void c(m mVar) {
            mVar.a(this.f1141e, b());
            try {
                mVar.a((a<?>) this);
            } catch (DeadObjectException unused) {
                a(1);
                this.b.e();
            }
        }

        public final void c(e.c.a.a.b.a aVar) {
            Iterator<i0> it = this.f1142f.iterator();
            if (it.hasNext()) {
                i0 next = it.next();
                if (r.c((Object) aVar, (Object) e.c.a.a.b.a.B)) {
                    this.b.d();
                }
                if (next != null) {
                    throw null;
                }
                throw null;
            }
            this.f1142f.clear();
        }

        public final boolean b(e.c.a.a.b.a aVar) {
            synchronized (c.p) {
            }
            return false;
        }

        public final boolean b() {
            return this.b.g();
        }

        public final void a(m mVar) {
            r.a(c.this.m);
            if (!this.b.c()) {
                this.a.add(mVar);
                e.c.a.a.b.a aVar = this.f1148l;
                if (aVar != null) {
                    if ((aVar.y == 0 || aVar.z == null) ? false : true) {
                        a(this.f1148l);
                        return;
                    }
                }
                a();
            } else if (b(mVar)) {
                i();
            } else {
                this.a.add(mVar);
            }
        }

        public final void a(Status status) {
            r.a(c.this.m);
            for (m mVar : this.a) {
                e.c.a.a.g.b<T> bVar = ((e0) mVar).a;
                bVar.a.b((Exception) new e.c.a.a.b.i.b(status));
            }
            this.a.clear();
        }

        public final boolean a(boolean z) {
            r.a(c.this.m);
            if (!this.b.c() || this.f1143g.size() != 0) {
                return false;
            }
            i iVar = this.f1141e;
            if (!iVar.a.isEmpty() || !iVar.b.isEmpty()) {
                if (z) {
                    i();
                }
                return false;
            }
            this.b.e();
            return true;
        }

        public final void a() {
            r.a(c.this.m);
            if (!this.b.c() && !this.b.a()) {
                c cVar = c.this;
                j jVar = cVar.f1132f;
                Context context = cVar.f1130d;
                a.f fVar = this.b;
                if (jVar != null) {
                    r.a(context);
                    r.a(fVar);
                    int i2 = 0;
                    if (fVar.h()) {
                        int i3 = fVar.i();
                        int i4 = jVar.a.get(i3, -1);
                        if (i4 != -1) {
                            i2 = i4;
                        } else {
                            int i5 = 0;
                            while (true) {
                                if (i5 >= jVar.a.size()) {
                                    i2 = i4;
                                    break;
                                }
                                int keyAt = jVar.a.keyAt(i5);
                                if (keyAt > i3 && jVar.a.get(keyAt) == 0) {
                                    break;
                                }
                                i5++;
                            }
                            if (i2 == -1) {
                                i2 = jVar.b.a(context, i3);
                            }
                            jVar.a.put(i3, i2);
                        }
                    }
                    if (i2 != 0) {
                        a(new e.c.a.a.b.a(i2, (PendingIntent) null));
                        return;
                    }
                    C0063c cVar2 = new C0063c(this.b, this.f1140d);
                    if (this.b.g()) {
                        x xVar = this.f1145i;
                        e.c.a.a.f.f fVar2 = xVar.f1163f;
                        if (fVar2 != null) {
                            fVar2.e();
                        }
                        xVar.f1162e.f1193h = Integer.valueOf(System.identityHashCode(xVar));
                        a.C0059a<? extends e.c.a.a.f.f, e.c.a.a.f.a> aVar = xVar.f1160c;
                        Context context2 = xVar.a;
                        Looper looper = xVar.b.getLooper();
                        e.c.a.a.b.j.d dVar = xVar.f1162e;
                        xVar.f1163f = (e.c.a.a.f.f) aVar.a(context2, looper, dVar, dVar.f1192g, xVar, xVar);
                        xVar.f1164g = cVar2;
                        Set<Scope> set = xVar.f1161d;
                        if (set == null || set.isEmpty()) {
                            xVar.b.post(new y(xVar));
                        } else {
                            xVar.f1163f.f();
                        }
                    }
                    this.b.a((b.c) cVar2);
                    return;
                }
                throw null;
            }
        }

        public final e.c.a.a.b.c a(e.c.a.a.b.c[] cVarArr) {
            if (cVarArr == null || cVarArr.length == 0) {
                return null;
            }
            e.c.a.a.b.c[] b2 = this.b.b();
            if (b2 == null) {
                b2 = new e.c.a.a.b.c[0];
            }
            d.f.a aVar = new d.f.a(b2.length);
            for (e.c.a.a.b.c cVar : b2) {
                aVar.put(cVar.x, Long.valueOf(cVar.b()));
            }
            for (e.c.a.a.b.c cVar2 : cVarArr) {
                if (!aVar.containsKey(cVar2.x) || ((Long) aVar.get(cVar2.x)).longValue() < cVar2.b()) {
                    return cVar2;
                }
            }
            return null;
        }
    }

    public final void a(e.c.a.a.b.i.c<?> cVar) {
        h0<O> h0Var = cVar.f1126d;
        a aVar = this.f1135i.get(h0Var);
        if (aVar == null) {
            aVar = new a(cVar);
            this.f1135i.put(h0Var, aVar);
        }
        if (aVar.b()) {
            this.f1138l.add(h0Var);
        }
        aVar.a();
    }

    public final boolean a(e.c.a.a.b.a aVar, int i2) {
        e.c.a.a.b.d dVar = this.f1131e;
        Context context = this.f1130d;
        PendingIntent pendingIntent = null;
        if (dVar != null) {
            if ((aVar.y == 0 || aVar.z == null) ? false : true) {
                pendingIntent = aVar.z;
            } else {
                Intent a2 = dVar.a(context, aVar.y, (String) null);
                if (a2 != null) {
                    pendingIntent = PendingIntent.getActivity(context, 0, a2, BlobConstants.DEFAULT_SINGLE_BLOB_PUT_THRESHOLD_IN_BYTES);
                }
            }
            if (pendingIntent == null) {
                return false;
            }
            dVar.a(context, aVar.y, GoogleApiActivity.a(context, pendingIntent, i2));
            return true;
        }
        throw null;
    }
}
