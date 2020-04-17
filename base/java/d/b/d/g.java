package d.b.d;

import android.view.View;
import android.view.animation.Interpolator;
import d.i.i.s;
import d.i.i.t;
import d.i.i.u;
import java.util.ArrayList;
import java.util.Iterator;

public class g {
    public final ArrayList<s> a = new ArrayList<>();
    public long b = -1;

    /* renamed from: c  reason: collision with root package name */
    public Interpolator f277c;

    /* renamed from: d  reason: collision with root package name */
    public t f278d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f279e;

    /* renamed from: f  reason: collision with root package name */
    public final u f280f = new a();

    public class a extends u {
        public boolean a = false;
        public int b = 0;

        public a() {
        }

        public void a(View view) {
            int i2 = this.b + 1;
            this.b = i2;
            if (i2 == g.this.a.size()) {
                t tVar = g.this.f278d;
                if (tVar != null) {
                    tVar.a((View) null);
                }
                this.b = 0;
                this.a = false;
                g.this.f279e = false;
            }
        }

        public void b(View view) {
            if (!this.a) {
                this.a = true;
                t tVar = g.this.f278d;
                if (tVar != null) {
                    tVar.b((View) null);
                }
            }
        }
    }

    public void a() {
        if (this.f279e) {
            Iterator<s> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
            this.f279e = false;
        }
    }

    public void b() {
        View view;
        if (!this.f279e) {
            Iterator<s> it = this.a.iterator();
            while (it.hasNext()) {
                s next = it.next();
                long j2 = this.b;
                if (j2 >= 0) {
                    next.a(j2);
                }
                Interpolator interpolator = this.f277c;
                if (!(interpolator == null || (view = (View) next.a.get()) == null)) {
                    view.animate().setInterpolator(interpolator);
                }
                if (this.f278d != null) {
                    next.a((t) this.f280f);
                }
                View view2 = (View) next.a.get();
                if (view2 != null) {
                    view2.animate().start();
                }
            }
            this.f279e = true;
        }
    }
}
