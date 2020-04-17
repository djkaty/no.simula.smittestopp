package e.c.a.a.e;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationRequest;
import d.b.a.r;
import e.c.a.a.b.i.c;
import e.c.a.a.b.i.k.b0;
import e.c.a.a.b.i.k.f;
import e.c.a.a.b.i.k.f0;
import e.c.a.a.b.i.k.g0;
import e.c.a.a.b.i.k.u;
import e.c.a.a.b.i.k.v;
import e.c.a.a.d.c.e;
import e.c.a.a.d.c.q;
import e.c.a.a.g.b;
import e.c.a.a.g.d;
import e.c.a.a.g.h;
import java.util.concurrent.Executor;

public class a extends c<Object> {

    /* renamed from: e.c.a.a.e.a$a  reason: collision with other inner class name */
    public static class C0067a extends e {
        public final b<Void> a;

        public C0067a(b<Void> bVar) {
            this.a = bVar;
        }

        public final void a(e.c.a.a.d.c.b bVar) {
            Status status = bVar.x;
            b<Void> bVar2 = this.a;
            if (status.y <= 0) {
                bVar2.a.a(null);
            } else {
                bVar2.a.a((Exception) new e.c.a.a.b.i.b(status));
            }
        }
    }

    public a(Context context) {
        super(context, c.f1212c, null, new e.c.a.a.b.i.k.a());
    }

    public h<Void> a(LocationRequest locationRequest, b bVar, Looper looper) {
        q qVar = new q(locationRequest, q.E, (String) null, false, false, false, (String) null);
        if (looper == null) {
            r.a(Looper.myLooper() != null, (Object) "Can't create handler inside thread that has not called Looper.prepare()");
            looper = Looper.myLooper();
        }
        String simpleName = b.class.getSimpleName();
        r.b(bVar, (Object) "Listener must not be null");
        r.b(looper, (Object) "Looper must not be null");
        r.b(simpleName, (Object) "Listener type must not be null");
        f fVar = new f(looper, bVar, simpleName);
        l lVar = new l(fVar, qVar, fVar);
        m mVar = new m(this, fVar.f1153c);
        r.a(lVar);
        r.a(mVar);
        r.b(lVar.a.f1153c, (Object) "Listener has already been released.");
        r.b(mVar.a, (Object) "Listener has already been released.");
        if (lVar.a.f1153c.equals(mVar.a)) {
            e.c.a.a.b.i.k.c cVar = this.f1128f;
            if (cVar != null) {
                b bVar2 = new b();
                f0 f0Var = new f0(new v(lVar, mVar), bVar2);
                Handler handler = cVar.m;
                handler.sendMessage(handler.obtainMessage(8, new u(f0Var, cVar.f1134h.get(), this)));
                return bVar2.a;
            }
            throw null;
        }
        throw new IllegalArgumentException("Listener registration and unregistration methods must be constructed with the same ListenerHolder.");
    }

    public h<Void> a(b bVar) {
        String simpleName = b.class.getSimpleName();
        r.b(bVar, (Object) "Listener must not be null");
        r.b(simpleName, (Object) "Listener type must not be null");
        if (!TextUtils.isEmpty(simpleName)) {
            f.a aVar = new f.a(bVar, simpleName);
            r.b(aVar, (Object) "Listener key cannot be null.");
            e.c.a.a.b.i.k.c cVar = this.f1128f;
            if (cVar != null) {
                b bVar2 = new b();
                g0 g0Var = new g0(aVar, bVar2);
                Handler handler = cVar.m;
                handler.sendMessage(handler.obtainMessage(13, new u(g0Var, cVar.f1134h.get(), this)));
                h<TResult> hVar = bVar2.a;
                b0 b0Var = new b0();
                if (hVar != null) {
                    Executor executor = e.c.a.a.g.c.a;
                    h<Void> hVar2 = new h<>();
                    hVar.b.a(new d(executor, b0Var, hVar2));
                    hVar.c();
                    return hVar2;
                }
                throw null;
            }
            throw null;
        }
        throw new IllegalArgumentException("Listener type must not be empty");
    }
}
