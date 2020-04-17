package e.c.a.a.g;

public final class e implements Runnable {
    public final /* synthetic */ h x;
    public final /* synthetic */ d y;

    public e(d dVar, h hVar) {
        this.y = dVar;
        this.x = hVar;
    }

    public final void run() {
        if (this.x.f1227d) {
            this.y.f1224c.b();
            return;
        }
        try {
            this.y.b.a(this.x);
            this.y.f1224c.a(null);
        } catch (a e2) {
            if (e2.getCause() instanceof Exception) {
                this.y.f1224c.a((Exception) e2.getCause());
            } else {
                this.y.f1224c.a((Exception) e2);
            }
        } catch (Exception e3) {
            this.y.f1224c.a(e3);
        }
    }
}
