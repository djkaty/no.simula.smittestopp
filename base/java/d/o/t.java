package d.o;

import android.os.Handler;
import d.o.g;
import d.o.v;

public class t implements l {
    public static final t F = new t();
    public boolean A = true;
    public Handler B;
    public final m C = new m(this);
    public Runnable D = new a();
    public v.a E = new b();
    public int x = 0;
    public int y = 0;
    public boolean z = true;

    public class a implements Runnable {
        public a() {
        }

        public void run() {
            t tVar = t.this;
            if (tVar.y == 0) {
                tVar.z = true;
                tVar.C.a(g.a.ON_PAUSE);
            }
            t tVar2 = t.this;
            if (tVar2.x == 0 && tVar2.z) {
                tVar2.C.a(g.a.ON_STOP);
                tVar2.A = true;
            }
        }
    }

    public class b implements v.a {
        public b() {
        }
    }

    public g getLifecycle() {
        return this.C;
    }
}
