package e.c.a.a.e;

import com.google.android.gms.common.api.Status;
import e.c.a.a.b.i.g;
import e.c.a.a.d.c.e;
import e.c.a.a.g.b;

public final class n extends e {
    public final /* synthetic */ b a;

    public n(b bVar) {
        this.a = bVar;
    }

    public final void a(e.c.a.a.d.c.b bVar) {
        Exception exc;
        Status status = bVar.x;
        if (status == null) {
            b bVar2 = this.a;
            bVar2.a.b((Exception) new e.c.a.a.b.i.b(new Status(8, "Got null status from location service")));
            return;
        }
        boolean z = true;
        if (status.y == 0) {
            this.a.a.a(true);
            return;
        }
        b bVar3 = this.a;
        if (status.A == null) {
            z = false;
        }
        if (z) {
            exc = new g(status);
        } else {
            exc = new e.c.a.a.b.i.b(status);
        }
        bVar3.a.b(exc);
    }
}
