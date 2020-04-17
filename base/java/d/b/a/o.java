package d.b.a;

import android.view.View;
import d.i.i.n;
import d.i.i.s;
import d.i.i.t;
import d.i.i.u;

public class o implements Runnable {
    public final /* synthetic */ k x;

    public class a extends u {
        public a() {
        }

        public void a(View view) {
            o.this.x.L.setAlpha(1.0f);
            o.this.x.O.a((t) null);
            o.this.x.O = null;
        }

        public void b(View view) {
            o.this.x.L.setVisibility(0);
        }
    }

    public o(k kVar) {
        this.x = kVar;
    }

    public void run() {
        k kVar = this.x;
        kVar.M.showAtLocation(kVar.L, 55, 0, 0);
        this.x.e();
        if (this.x.l()) {
            this.x.L.setAlpha(0.0f);
            k kVar2 = this.x;
            s a2 = n.a(kVar2.L);
            a2.a(1.0f);
            kVar2.O = a2;
            s sVar = this.x.O;
            a aVar = new a();
            View view = (View) sVar.a.get();
            if (view != null) {
                sVar.a(view, aVar);
                return;
            }
            return;
        }
        this.x.L.setAlpha(1.0f);
        this.x.L.setVisibility(0);
    }
}
