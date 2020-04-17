package k.d.a;

public final class k {
    public j a;
    public j b;

    public synchronized void a(j jVar) {
        if (jVar != null) {
            try {
                if (this.b != null) {
                    this.b.f2313c = jVar;
                    this.b = jVar;
                } else if (this.a == null) {
                    this.b = jVar;
                    this.a = jVar;
                } else {
                    throw new IllegalStateException("Head present, but no tail");
                }
                notifyAll();
            } catch (Throwable th) {
                throw th;
            }
        } else {
            throw new NullPointerException("null cannot be enqueued");
        }
    }

    public synchronized j a() {
        j jVar;
        jVar = this.a;
        if (this.a != null) {
            j jVar2 = this.a.f2313c;
            this.a = jVar2;
            if (jVar2 == null) {
                this.b = null;
            }
        }
        return jVar;
    }

    public synchronized j a(int i2) {
        if (this.a == null) {
            wait((long) i2);
        }
        return a();
    }
}
