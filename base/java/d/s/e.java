package d.s;

import android.content.Context;
import android.os.Bundle;
import d.o.e0;
import d.o.f0;
import d.o.g;
import d.o.l;
import d.o.m;
import d.v.a;
import d.v.b;
import d.v.c;
import java.util.UUID;

public final class e implements l, f0, c {
    public final b A;
    public final UUID B;
    public g.b C;
    public g.b D;
    public g E;
    public final i x;
    public final Bundle y;
    public final m z;

    public e(Context context, i iVar, Bundle bundle, l lVar, g gVar) {
        this(context, iVar, bundle, lVar, gVar, UUID.randomUUID(), (Bundle) null);
    }

    public final void a() {
        if (this.C.ordinal() < this.D.ordinal()) {
            this.z.a(this.C);
        } else {
            this.z.a(this.D);
        }
    }

    public g getLifecycle() {
        return this.z;
    }

    public a getSavedStateRegistry() {
        return this.A.b;
    }

    public e0 getViewModelStore() {
        g gVar = this.E;
        if (gVar != null) {
            UUID uuid = this.B;
            e0 e0Var = gVar.f733c.get(uuid);
            if (e0Var != null) {
                return e0Var;
            }
            e0 e0Var2 = new e0();
            gVar.f733c.put(uuid, e0Var2);
            return e0Var2;
        }
        throw new IllegalStateException("You must call setViewModelStore() on your NavHostController before accessing the ViewModelStore of a navigation graph.");
    }

    public e(Context context, i iVar, Bundle bundle, l lVar, g gVar, UUID uuid, Bundle bundle2) {
        this.z = new m(this);
        b bVar = new b(this);
        this.A = bVar;
        this.C = g.b.CREATED;
        this.D = g.b.RESUMED;
        this.B = uuid;
        this.x = iVar;
        this.y = bundle;
        this.E = gVar;
        bVar.a(bundle2);
        if (lVar != null) {
            this.C = ((m) lVar.getLifecycle()).b;
        }
        a();
    }
}
