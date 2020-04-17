package k.d.a;

import java.util.logging.Level;

public final class b implements Runnable, l {
    public final k x = new k();
    public final c y;
    public volatile boolean z;

    public b(c cVar) {
        this.y = cVar;
    }

    public void a(q qVar, Object obj) {
        j a = j.a(qVar, obj);
        synchronized (this) {
            this.x.a(a);
            if (!this.z) {
                this.z = true;
                this.y.f2297j.execute(this);
            }
        }
    }

    public void run() {
        while (true) {
            try {
                j a = this.x.a(1000);
                if (a == null) {
                    synchronized (this) {
                        a = this.x.a();
                        if (a == null) {
                            this.z = false;
                            this.z = false;
                            return;
                        }
                    }
                }
                this.y.a(a);
            } catch (InterruptedException e2) {
                try {
                    g gVar = this.y.r;
                    Level level = Level.WARNING;
                    gVar.a(level, Thread.currentThread().getName() + " was interruppted", e2);
                    return;
                } finally {
                    this.z = false;
                }
            }
        }
    }
}
