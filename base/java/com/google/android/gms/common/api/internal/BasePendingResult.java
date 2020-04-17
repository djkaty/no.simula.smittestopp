package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;
import d.b.a.r;
import e.c.a.a.b.i.e;
import e.c.a.a.b.i.f;
import e.c.a.a.b.i.h;
import e.c.a.a.b.i.i;
import e.c.a.a.b.i.k.d0;
import e.c.a.a.b.i.k.k0;
import e.c.a.a.d.a.c;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

@KeepName
public abstract class BasePendingResult<R extends h> extends e<R> {
    public final Object a = new Object();
    public final a<R> b = new a<>(Looper.getMainLooper());

    /* renamed from: c  reason: collision with root package name */
    public final CountDownLatch f110c = new CountDownLatch(1);

    /* renamed from: d  reason: collision with root package name */
    public final ArrayList<e.a> f111d = new ArrayList<>();

    /* renamed from: e  reason: collision with root package name */
    public i<? super R> f112e;

    /* renamed from: f  reason: collision with root package name */
    public final AtomicReference<d0> f113f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    public R f114g;

    /* renamed from: h  reason: collision with root package name */
    public Status f115h;

    /* renamed from: i  reason: collision with root package name */
    public volatile boolean f116i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f117j;
    @KeepName
    public b mResultGuardian;

    public static class a<R extends h> extends c {
        public a(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                Pair pair = (Pair) message.obj;
                i iVar = (i) pair.first;
                h hVar = (h) pair.second;
                try {
                    iVar.a(hVar);
                } catch (RuntimeException e2) {
                    BasePendingResult.c(hVar);
                    throw e2;
                }
            } else if (i2 != 2) {
                StringBuilder sb = new StringBuilder(45);
                sb.append("Don't know how to handle message: ");
                sb.append(i2);
                Log.wtf("BasePendingResult", sb.toString(), new Exception());
            } else {
                ((BasePendingResult) message.obj).b(Status.C);
            }
        }
    }

    public final class b {
        public /* synthetic */ b(k0 k0Var) {
        }

        public final void finalize() {
            BasePendingResult.c(BasePendingResult.this.f114g);
            super.finalize();
        }
    }

    static {
        new k0();
    }

    @Deprecated
    public BasePendingResult() {
        new WeakReference((Object) null);
    }

    public static void c(h hVar) {
        if (hVar instanceof f) {
            try {
                ((f) hVar).c();
            } catch (RuntimeException e2) {
                String valueOf = String.valueOf(hVar);
                StringBuilder sb = new StringBuilder(valueOf.length() + 18);
                sb.append("Unable to release ");
                sb.append(valueOf);
                Log.w("BasePendingResult", sb.toString(), e2);
            }
        }
    }

    public abstract R a(Status status);

    public final void a(R r) {
        synchronized (this.a) {
            if (!this.f117j) {
                b();
                boolean z = true;
                r.a(!b(), (Object) "Results have already been set");
                if (this.f116i) {
                    z = false;
                }
                r.a(z, (Object) "Result has already been consumed");
                b(r);
                return;
            }
            c(r);
        }
    }

    public final boolean b() {
        return this.f110c.getCount() == 0;
    }

    public final void b(Status status) {
        synchronized (this.a) {
            if (!b()) {
                a(a(status));
                this.f117j = true;
            }
        }
    }

    public final void b(R r) {
        this.f114g = r;
        this.f110c.countDown();
        this.f115h = this.f114g.a();
        if (this.f112e != null) {
            this.b.removeMessages(2);
            a<R> aVar = this.b;
            i<? super R> iVar = this.f112e;
            h a2 = a();
            if (aVar != null) {
                aVar.sendMessage(aVar.obtainMessage(1, new Pair(iVar, a2)));
            } else {
                throw null;
            }
        } else if (this.f114g instanceof f) {
            this.mResultGuardian = new b((k0) null);
        }
        ArrayList<e.a> arrayList = this.f111d;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            e.a aVar2 = arrayList.get(i2);
            i2++;
            aVar2.a(this.f115h);
        }
        this.f111d.clear();
    }

    public final R a() {
        R r;
        synchronized (this.a) {
            r.a(!this.f116i, (Object) "Result has already been consumed.");
            r.a(b(), (Object) "Result is not ready.");
            r = this.f114g;
            this.f114g = null;
            this.f112e = null;
            this.f116i = true;
        }
        d0 andSet = this.f113f.getAndSet((Object) null);
        if (andSet != null) {
            andSet.a(this);
        }
        return r;
    }
}
