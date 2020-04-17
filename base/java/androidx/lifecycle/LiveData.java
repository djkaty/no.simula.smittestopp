package androidx.lifecycle;

import d.c.a.b.b;
import d.o.g;
import d.o.j;
import d.o.l;
import d.o.m;
import d.o.r;
import java.util.Map;

public abstract class LiveData<T> {

    /* renamed from: i  reason: collision with root package name */
    public static final Object f73i = new Object();
    public final Object a = new Object();
    public b<r<? super T>, LiveData<T>.defpackage.a> b = new b<>();

    /* renamed from: c  reason: collision with root package name */
    public int f74c = 0;

    /* renamed from: d  reason: collision with root package name */
    public volatile Object f75d = f73i;

    /* renamed from: e  reason: collision with root package name */
    public volatile Object f76e = f73i;

    /* renamed from: f  reason: collision with root package name */
    public int f77f = -1;

    /* renamed from: g  reason: collision with root package name */
    public boolean f78g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f79h;

    public class LifecycleBoundObserver extends LiveData<T>.defpackage.a implements j {
        public final l B;
        public final /* synthetic */ LiveData C;

        public void a(l lVar, g.a aVar) {
            if (((m) this.B.getLifecycle()).b == g.b.DESTROYED) {
                this.C.a(this.x);
            } else {
                a(((m) this.B.getLifecycle()).b.isAtLeast(g.b.STARTED));
            }
        }
    }

    public abstract class a {
        public final /* synthetic */ LiveData A;
        public final r<? super T> x;
        public boolean y;
        public int z;

        public void a(boolean z2) {
            if (z2 != this.y) {
                this.y = z2;
                int i2 = 1;
                boolean z3 = this.A.f74c == 0;
                LiveData liveData = this.A;
                int i3 = liveData.f74c;
                if (!this.y) {
                    i2 = -1;
                }
                liveData.f74c = i3 + i2;
                if (z3 && this.y) {
                    this.A.a();
                }
                LiveData liveData2 = this.A;
                if (liveData2.f74c == 0 && !this.y) {
                    liveData2.b();
                }
                if (this.y) {
                    this.A.b(this);
                }
            }
        }
    }

    public void a() {
    }

    public final void a(LiveData<T>.defpackage.a aVar) {
        if (aVar.y) {
            if (!((m) ((LifecycleBoundObserver) aVar).B.getLifecycle()).b.isAtLeast(g.b.STARTED)) {
                aVar.a(false);
                return;
            }
            int i2 = aVar.z;
            int i3 = this.f77f;
            if (i2 < i3) {
                aVar.z = i3;
                aVar.x.a(this.f75d);
            }
        }
    }

    public void b() {
    }

    public void b(LiveData<T>.defpackage.a aVar) {
        if (this.f78g) {
            this.f79h = true;
            return;
        }
        this.f78g = true;
        do {
            this.f79h = false;
            if (aVar == null) {
                b<K, V>.d a2 = this.b.a();
                while (a2.hasNext()) {
                    a((LiveData<T>.defpackage.a) (a) ((Map.Entry) a2.next()).getValue());
                    if (this.f79h) {
                        break;
                    }
                }
            } else {
                a(aVar);
                aVar = null;
            }
        } while (this.f79h);
        this.f78g = false;
    }

    public void a(r<? super T> rVar) {
        a("removeObserver");
        a remove = this.b.remove(rVar);
        if (remove != null) {
            LifecycleBoundObserver lifecycleBoundObserver = (LifecycleBoundObserver) remove;
            ((m) lifecycleBoundObserver.B.getLifecycle()).a.remove(lifecycleBoundObserver);
            remove.a(false);
        }
    }

    public static void a(String str) {
        if (!d.c.a.a.a.b().a.a()) {
            throw new IllegalStateException(e.a.a.a.a.a("Cannot invoke ", str, " on a background thread"));
        }
    }
}
