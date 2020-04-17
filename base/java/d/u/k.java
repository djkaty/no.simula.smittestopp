package d.u;

import d.w.a.f.f;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class k {
    public final AtomicBoolean a = new AtomicBoolean(false);
    public final g b;

    /* renamed from: c  reason: collision with root package name */
    public volatile f f925c;

    public k(g gVar) {
        this.b = gVar;
    }

    public f a() {
        this.b.a();
        if (this.a.compareAndSet(false, true)) {
            if (this.f925c == null) {
                this.f925c = this.b.a(b());
            }
            return this.f925c;
        }
        return this.b.a(b());
    }

    public abstract String b();

    public void a(f fVar) {
        if (fVar == this.f925c) {
            this.a.set(false);
        }
    }
}
