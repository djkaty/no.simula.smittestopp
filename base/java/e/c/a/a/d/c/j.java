package e.c.a.a.d.c;

import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;
import e.c.a.a.b.i.k.f;
import e.c.a.a.e.b;
import e.c.a.a.e.s;

public final class j extends s {
    public final f<b> a;

    public j(f<b> fVar) {
        this.a = fVar;
    }

    public final void a(LocationAvailability locationAvailability) {
        this.a.a(new l(locationAvailability));
    }

    public final void a(LocationResult locationResult) {
        this.a.a(new k(locationResult));
    }

    public final synchronized void c() {
        this.a.b = null;
    }
}
