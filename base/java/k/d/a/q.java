package k.d.a;

public final class q {
    public final Object a;
    public final o b;

    /* renamed from: c  reason: collision with root package name */
    public volatile boolean f2327c = true;

    public q(Object obj, o oVar) {
        this.a = obj;
        this.b = oVar;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        if (this.a != qVar.a || !this.b.equals(qVar.b)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return this.b.f2318f.hashCode() + this.a.hashCode();
    }
}
