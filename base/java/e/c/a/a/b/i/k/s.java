package e.c.a.a.b.i.k;

import android.util.Log;
import e.c.a.a.b.a;
import e.c.a.a.b.i.k.c;
import e.c.a.a.b.j.k;
import java.util.Collections;

public final class s implements Runnable {
    public final /* synthetic */ a x;
    public final /* synthetic */ c.C0063c y;

    public s(c.C0063c cVar, a aVar) {
        this.y = cVar;
        this.x = aVar;
    }

    public final void run() {
        k kVar;
        if (this.x.b()) {
            c.C0063c cVar = this.y;
            cVar.f1151e = true;
            if (cVar.a.g()) {
                c.C0063c cVar2 = this.y;
                if (cVar2.f1151e && (kVar = cVar2.f1149c) != null) {
                    cVar2.a.a(kVar, cVar2.f1150d);
                    return;
                }
                return;
            }
            try {
                this.y.a.a((k) null, Collections.emptySet());
            } catch (SecurityException e2) {
                Log.e("GoogleApiManager", "Failed to get service from broker. ", e2);
                c.C0063c cVar3 = this.y;
                c.this.f1135i.get(cVar3.b).a(new a(10));
            }
        } else {
            c.C0063c cVar4 = this.y;
            c.this.f1135i.get(cVar4.b).a(this.x);
        }
    }
}
