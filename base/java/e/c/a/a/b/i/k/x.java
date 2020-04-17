package e.c.a.a.b.i.k;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import com.google.android.gms.common.api.Scope;
import d.b.a.r;
import e.c.a.a.b.i.a;
import e.c.a.a.b.i.d;
import e.c.a.a.b.i.k.c;
import e.c.a.a.f.b.d;
import e.c.a.a.f.b.k;
import e.c.a.a.f.c;
import e.c.a.a.f.f;
import java.util.Set;

public final class x extends d implements d.a, d.b {

    /* renamed from: h  reason: collision with root package name */
    public static a.C0059a<? extends f, e.c.a.a.f.a> f1159h = c.f1222c;
    public final Context a;
    public final Handler b;

    /* renamed from: c  reason: collision with root package name */
    public final a.C0059a<? extends f, e.c.a.a.f.a> f1160c;

    /* renamed from: d  reason: collision with root package name */
    public Set<Scope> f1161d;

    /* renamed from: e  reason: collision with root package name */
    public e.c.a.a.b.j.d f1162e;

    /* renamed from: f  reason: collision with root package name */
    public f f1163f;

    /* renamed from: g  reason: collision with root package name */
    public a0 f1164g;

    public x(Context context, Handler handler, e.c.a.a.b.j.d dVar) {
        a.C0059a<? extends f, e.c.a.a.f.a> aVar = f1159h;
        this.a = context;
        this.b = handler;
        r.b(dVar, (Object) "ClientSettings must not be null");
        this.f1162e = dVar;
        this.f1161d = dVar.b;
        this.f1160c = aVar;
    }

    public final void a(Bundle bundle) {
        this.f1163f.a(this);
    }

    public final void a(int i2) {
        this.f1163f.e();
    }

    public final void a(e.c.a.a.b.a aVar) {
        ((c.C0063c) this.f1164g).b(aVar);
    }

    public final void a(k kVar) {
        this.b.post(new z(this, kVar));
    }
}
