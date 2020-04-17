package k.a.b.a.g.i;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.Pipe;
import java.nio.channels.SelectableChannel;
import java.util.HashSet;
import java.util.Set;
import k.a.b.a.d.g0.r;
import k.a.b.a.d.h;
import k.a.b.a.d.i;
import k.a.b.a.d.j;
import k.a.b.a.d.k;
import k.a.b.a.d.l;
import k.a.b.a.d.u;
import k.a.b.a.g.f;
import k.a.b.a.g.g;

public class d implements k.a.b.a.g.d, j {
    public static final k<h, l> O = new k<>(l.class);
    public l A;
    public l B;
    public Set<k.a.b.a.g.e> C;
    public int D;
    public boolean E;
    public boolean F;
    public g G;
    public i H;
    public m I;
    public final Pipe J;
    public k K;
    public u L;
    public final c M;
    public final f N;
    public k.a.b.a.d.g0.c x;
    public long y;
    public long z;

    public class b implements g.a {
        public final d a;
        public final k.a.b.a.g.e b;

        public b(d dVar, d dVar2, k.a.b.a.g.e eVar) {
            this.a = dVar2;
            this.b = eVar;
        }

        public void a(g gVar) {
            if (this.a.C.remove(this.b)) {
                d dVar = this.a;
                dVar.D--;
                this.b.a();
            }
        }
    }

    public class c implements g.a {
        public /* synthetic */ c(a aVar) {
        }

        public void a(g gVar) {
            d.a(d.this, gVar);
        }
    }

    /* renamed from: k.a.b.a.g.i.d$d  reason: collision with other inner class name */
    public static class C0098d implements g.a {
        public /* synthetic */ C0098d(a aVar) {
        }

        public void a(g gVar) {
            try {
                gVar.I().close();
            } catch (IOException unused) {
            }
        }
    }

    public class e implements g.a {
        public /* synthetic */ e(a aVar) {
        }

        public void a(g gVar) {
            try {
                d.this.J.source().read(ByteBuffer.allocate(64));
                d.a(d.this, gVar);
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    public d(c cVar, f fVar) {
        this.x = new k.a.b.a.d.g0.c();
        this.A = new b();
        this.B = new k.a.b.a.d.a();
        this.C = new HashSet();
        this.D = 0;
        this.I = new m(this.x);
        this.M = cVar;
        if (cVar != null) {
            this.J = Pipe.open();
            n();
            this.L = new r();
            this.N = fVar;
            return;
        }
        throw null;
    }

    public f B() {
        return this.N;
    }

    public l F() {
        return this.B;
    }

    public long S() {
        return this.y;
    }

    public k.a.b.a.d.c a(String str, int i2, l lVar) {
        k.a.b.a.d.g0.d dVar = new k.a.b.a.d.g0.d();
        k.a.b.a.d.a.setHandler((j) dVar, lVar);
        dVar.a(this.x);
        this.C.add(dVar);
        dVar.Y = this;
        r rVar = (r) dVar.q();
        if (k.a.b.a.g.a.class.cast(rVar.a.get("pn_reactor_connection_acceptor")) == null) {
            a aVar = new a();
            aVar.f1939d = str;
            if (i2 == 0) {
                i2 = 5672;
            }
            aVar.f1940e = Integer.toString(i2);
            rVar.a.put("pn_reactor_connection_peer_address", aVar);
            return dVar;
        }
        throw new IllegalStateException("Cannot set the host address on an incoming Connection");
    }

    public void b(long j2) {
        this.z = j2;
    }

    public long h() {
        return this.z;
    }

    public void i() {
        this.E = true;
    }

    public long n() {
        long currentTimeMillis = System.currentTimeMillis();
        this.y = currentTimeMillis;
        return currentTimeMillis;
    }

    public boolean o() {
        k.a.b.a.d.g0.g gVar = this.x.a;
        if (gVar == null) {
            return true;
        }
        if (!(gVar.z != null) && gVar.x == h.b.REACTOR_QUIESCED) {
            return true;
        }
        return false;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0061, code lost:
        if (r1 != null) goto L_0x0077;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean process() {
        /*
            r6 = this;
            r6.n()
            r0 = 0
            r1 = r0
        L_0x0005:
            k.a.b.a.d.g0.c r2 = r6.x
            k.a.b.a.d.g0.g r2 = r2.a
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L_0x00af
            boolean r1 = r6.E
            if (r1 == 0) goto L_0x0014
            r6.E = r4
            return r3
        L_0x0014:
            k.a.b.a.d.n r1 = r2.G()
            if (r1 == 0) goto L_0x0025
            k.a.b.a.d.n r1 = r2.G()
            k.a.b.a.d.l r1 = k.a.b.a.d.a.getHandler((k.a.b.a.d.j) r1)
            if (r1 == 0) goto L_0x0025
            goto L_0x0077
        L_0x0025:
            k.a.b.a.d.y r1 = r2.T()
            if (r1 == 0) goto L_0x0036
            k.a.b.a.d.y r1 = r2.T()
            k.a.b.a.d.l r1 = k.a.b.a.d.a.getHandler((k.a.b.a.d.j) r1)
            if (r1 == 0) goto L_0x0036
            goto L_0x0077
        L_0x0036:
            k.a.b.a.d.c r1 = r2.U()
            if (r1 == 0) goto L_0x0047
            k.a.b.a.d.c r1 = r2.U()
            k.a.b.a.d.l r1 = k.a.b.a.d.a.getHandler((k.a.b.a.d.j) r1)
            if (r1 == 0) goto L_0x0047
            goto L_0x0077
        L_0x0047:
            java.lang.Object r1 = r2.y
            boolean r3 = r1 instanceof k.a.b.a.g.h
            if (r3 == 0) goto L_0x0050
            k.a.b.a.g.h r1 = (k.a.b.a.g.h) r1
            goto L_0x0051
        L_0x0050:
            r1 = r0
        L_0x0051:
            if (r1 == 0) goto L_0x0064
            java.lang.Object r1 = r2.y
            boolean r3 = r1 instanceof k.a.b.a.g.h
            if (r3 == 0) goto L_0x005c
            k.a.b.a.g.h r1 = (k.a.b.a.g.h) r1
            goto L_0x005d
        L_0x005c:
            r1 = r0
        L_0x005d:
            k.a.b.a.d.l r1 = k.a.b.a.d.a.getHandler((k.a.b.a.d.j) r1)
            if (r1 == 0) goto L_0x0064
            goto L_0x0077
        L_0x0064:
            k.a.b.a.g.g r1 = r2.n()
            if (r1 == 0) goto L_0x0075
            k.a.b.a.g.g r1 = r2.n()
            k.a.b.a.d.l r1 = k.a.b.a.d.a.getHandler((k.a.b.a.d.j) r1)
            if (r1 == 0) goto L_0x0075
            goto L_0x0077
        L_0x0075:
            k.a.b.a.d.l r1 = r6.B
        L_0x0077:
            r6.a((k.a.b.a.d.h) r2, (k.a.b.a.d.l) r1)
            k.a.b.a.d.l r1 = r6.A
            r6.a((k.a.b.a.d.h) r2, (k.a.b.a.d.l) r1)
            k.a.b.a.d.i r1 = r2.x
            k.a.b.a.d.h$b r3 = k.a.b.a.d.h.b.CONNECTION_FINAL
            if (r1 != r3) goto L_0x008e
            java.util.Set<k.a.b.a.g.e> r1 = r6.C
            k.a.b.a.d.c r3 = r2.U()
            r1.remove(r3)
        L_0x008e:
            k.a.b.a.d.i r1 = r2.x
            r6.H = r1
            k.a.b.a.d.g0.c r2 = r6.x
            k.a.b.a.d.g0.g r3 = r2.a
            if (r3 == 0) goto L_0x0005
            k.a.b.a.d.g0.g r4 = r3.z
            k.a.b.a.d.g0.g r5 = r2.f1840c
            r3.z = r5
            r2.f1840c = r3
            r3.x = r0
            r3.y = r0
            k.a.b.a.d.g0.r r3 = r3.A
            java.util.Map<java.lang.Object, java.lang.Object> r3 = r3.a
            r3.clear()
            r2.a = r4
            goto L_0x0005
        L_0x00af:
            boolean r2 = r6.F
            if (r2 != 0) goto L_0x00de
            k.a.b.a.g.i.m r2 = r6.I
            r2.b()
            java.util.PriorityQueue<k.a.b.a.g.i.l> r2 = r2.b
            int r2 = r2.size()
            if (r2 > 0) goto L_0x00c7
            int r2 = r6.D
            if (r2 <= r3) goto L_0x00c5
            goto L_0x00c7
        L_0x00c5:
            r2 = 0
            goto L_0x00c8
        L_0x00c7:
            r2 = 1
        L_0x00c8:
            if (r2 == 0) goto L_0x00de
            k.a.b.a.d.h$b r2 = k.a.b.a.d.h.b.REACTOR_QUIESCED
            if (r1 == r2) goto L_0x00dd
            k.a.b.a.d.i r2 = r6.H
            k.a.b.a.d.h$b r4 = k.a.b.a.d.h.b.REACTOR_FINAL
            if (r2 == r4) goto L_0x00dd
            k.a.b.a.d.g0.c r2 = r6.x
            k.a.b.a.d.h$b r3 = k.a.b.a.d.h.b.REACTOR_QUIESCED
            r2.a(r3, r6)
            goto L_0x0005
        L_0x00dd:
            return r3
        L_0x00de:
            k.a.b.a.g.g r2 = r6.G
            if (r2 == 0) goto L_0x00ee
            r2.p()
            k.a.b.a.g.g r2 = r6.G
            r6.a((k.a.b.a.g.g) r2)
            r6.G = r0
            goto L_0x0005
        L_0x00ee:
            k.a.b.a.d.g0.c r0 = r6.x
            k.a.b.a.d.h$b r1 = k.a.b.a.d.h.b.REACTOR_FINAL
            r0.a(r1, r6)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.g.i.d.process():boolean");
    }

    public u q() {
        return this.L;
    }

    public void start() {
        this.x.a(h.b.REACTOR_INIT, this);
        g w = w();
        w.a((SelectableChannel) this.J.source());
        w.a((g.a) new e((a) null));
        w.e(new c((a) null));
        w.c((g.a) new C0098d((a) null));
        w.a(true);
        w.c(this.I.a());
        a(w);
        this.G = w;
    }

    public void stop() {
        this.F = true;
    }

    public g w() {
        j jVar = new j();
        k.a.b.a.d.g0.c cVar = this.x;
        jVar.x = new f(jVar, cVar);
        jVar.y = new g(jVar, cVar);
        jVar.A = new h(jVar, cVar);
        jVar.z = new i(jVar, cVar);
        this.x.a(h.b.SELECTABLE_INIT, jVar);
        jVar.I = this;
        this.C.add(jVar);
        jVar.B = new b(this, this, jVar);
        this.D++;
        return jVar;
    }

    public void a() {
        if (this.J.source().isOpen()) {
            try {
                this.J.source().close();
            } catch (IOException unused) {
            }
        }
        if (this.J.sink().isOpen()) {
            try {
                this.J.sink().close();
            } catch (IOException unused2) {
            }
        }
        k kVar = this.K;
        if (kVar != null) {
            if (kVar != null) {
                try {
                    kVar.a.close();
                } catch (IOException unused3) {
                }
            } else {
                throw null;
            }
        }
        for (k.a.b.a.g.e a2 : this.C) {
            a2.a();
        }
    }

    public d() {
        this(new c(), new f());
    }

    public void a(g gVar) {
        j jVar = (j) gVar;
        if (jVar.L) {
            return;
        }
        if (jVar.K) {
            jVar.L = true;
            this.x.a(h.b.SELECTABLE_FINAL, gVar);
            return;
        }
        this.x.a(h.b.SELECTABLE_UPDATED, gVar);
    }

    public final void a(h hVar, l lVar) {
        k<h, l> kVar = O;
        if (kVar != null) {
            k.a.b.a.d.g0.g gVar = (k.a.b.a.d.g0.g) hVar;
            ((r) gVar.q()).a.put(kVar, lVar);
            gVar.a(lVar);
            return;
        }
        throw null;
    }

    public k.a.b.a.g.h a(int i2, l lVar) {
        m mVar = this.I;
        l lVar2 = new l(this.y + ((long) i2), mVar.f1949c.incrementAndGet());
        mVar.b.add(lVar2);
        lVar2.B = this;
        k.a.b.a.d.a.setHandler((j) lVar2, lVar);
        g gVar = this.G;
        if (gVar != null) {
            gVar.c(this.I.a());
            a(this.G);
        }
        return lVar2;
    }

    public static /* synthetic */ void a(d dVar, g gVar) {
        if (dVar != null) {
            d dVar2 = (d) gVar.b();
            m mVar = dVar2.I;
            long j2 = dVar2.y;
            while (!mVar.b.isEmpty()) {
                l peek = mVar.b.peek();
                if (j2 < peek.x) {
                    break;
                }
                mVar.b.poll();
                if (!peek.z) {
                    mVar.a.a(h.b.TIMER_TASK, peek);
                }
            }
            gVar.c(dVar2.I.a());
            dVar2.a(gVar);
            return;
        }
        throw null;
    }

    public String a(k.a.b.a.d.c cVar) {
        a cast = a.class.cast(((r) cVar.q()).a.get("pn_reactor_connection_peer_address"));
        if (cast == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(cast.f1939d);
        if (cast.f1940e != null) {
            StringBuilder a2 = e.a.a.a.a.a(":");
            a2.append(cast.f1940e);
            sb.append(a2.toString());
        }
        return sb.toString();
    }
}
