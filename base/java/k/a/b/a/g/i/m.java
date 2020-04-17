package k.a.b.a.g.i;

import java.util.PriorityQueue;
import java.util.concurrent.atomic.AtomicInteger;
import k.a.b.a.d.b;
import k.a.b.a.d.g0.c;

public class m {
    public c a;
    public PriorityQueue<l> b = new PriorityQueue<>();

    /* renamed from: c  reason: collision with root package name */
    public AtomicInteger f1949c = new AtomicInteger();

    public m(b bVar) {
        this.a = (c) bVar;
    }

    public long a() {
        b();
        if (this.b.size() > 0) {
            return this.b.peek().j();
        }
        return 0;
    }

    public final void b() {
        while (!this.b.isEmpty() && this.b.peek().z) {
            this.b.poll();
        }
    }
}
