package k.d.a;

public class a implements Runnable, l {
    public final k x = new k();
    public final c y;

    public a(c cVar) {
        this.y = cVar;
    }

    public void a(q qVar, Object obj) {
        this.x.a(j.a(qVar, obj));
        this.y.f2297j.execute(this);
    }

    public void run() {
        j a = this.x.a();
        if (a != null) {
            this.y.a(a);
            return;
        }
        throw new IllegalStateException("No pending post available");
    }
}
