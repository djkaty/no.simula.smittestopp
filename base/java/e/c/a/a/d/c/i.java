package e.c.a.a.d.c;

import android.app.PendingIntent;
import android.content.Context;
import android.os.IBinder;
import d.b.a.r;
import e.c.a.a.b.i.k.f;
import e.c.a.a.e.b;
import java.util.HashMap;
import java.util.Map;

public final class i {
    public final w<g> a;
    public boolean b = false;

    /* renamed from: c  reason: collision with root package name */
    public final Map<f.a<Object>, n> f1209c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    public final Map<f.a<Object>, m> f1210d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    public final Map<f.a<b>, j> f1211e = new HashMap();

    public i(Context context, w<g> wVar) {
        this.a = wVar;
    }

    public final void a() {
        synchronized (this.f1209c) {
            for (n next : this.f1209c.values()) {
                if (next != null) {
                    ((g) this.a.b()).a(new s(2, (q) null, next.asBinder(), (PendingIntent) null, (IBinder) null, (IBinder) null));
                }
            }
            this.f1209c.clear();
        }
        synchronized (this.f1211e) {
            for (j next2 : this.f1211e.values()) {
                if (next2 != null) {
                    ((g) this.a.b()).a(s.a(next2, (d) null));
                }
            }
            this.f1211e.clear();
        }
        synchronized (this.f1210d) {
            for (m next3 : this.f1210d.values()) {
                if (next3 != null) {
                    ((g) this.a.b()).a(new z(2, (x) null, next3.asBinder(), (IBinder) null));
                }
            }
            this.f1210d.clear();
        }
    }

    public final void a(f.a<b> aVar, d dVar) {
        this.a.a();
        r.b(aVar, (Object) "Invalid null listener key");
        synchronized (this.f1211e) {
            j remove = this.f1211e.remove(aVar);
            if (remove != null) {
                remove.c();
                ((g) this.a.b()).a(s.a(remove, dVar));
            }
        }
    }

    public final void b() {
        if (this.b) {
            this.a.a();
            ((g) this.a.b()).a(false);
            this.b = false;
        }
    }

    public final j a(f<b> fVar) {
        j jVar;
        synchronized (this.f1211e) {
            jVar = this.f1211e.get(fVar.f1153c);
            if (jVar == null) {
                jVar = new j(fVar);
            }
            this.f1211e.put(fVar.f1153c, jVar);
        }
        return jVar;
    }
}
