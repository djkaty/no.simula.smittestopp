package k.a.b.a.d.g0;

import k.a.b.a.b.n.j;
import k.a.b.a.d.g;
import k.a.b.a.d.p;
import k.a.b.a.d.u;

public abstract class f implements p {
    public j A = new j();
    public boolean B;
    public f C;
    public f D;
    public u E = new r();
    public int F = 1;
    public boolean G = false;
    public g x;
    public g y;
    public j z = new j();

    public f() {
        g gVar = g.UNINITIALIZED;
        this.x = gVar;
        this.y = gVar;
    }

    public abstract void B();

    public abstract void F();

    public j H() {
        return this.A;
    }

    public g J() {
        return this.x;
    }

    public j L() {
        return this.z;
    }

    public abstract void S();

    public void a(j jVar) {
        if (jVar != null) {
            this.z.a(jVar);
            return;
        }
        j jVar2 = this.z;
        jVar2.a = null;
        jVar2.b = null;
        jVar2.f1616c = null;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:7:0x0023, code lost:
        r4 = o();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void c(boolean r4) {
        /*
            r3 = this;
            boolean r0 = r3.B
            if (r0 != 0) goto L_0x0021
            r0 = 1
            r3.B = r0
            k.a.b.a.d.g0.d r0 = r3.o()
            k.a.b.a.d.g0.f r1 = r0.I
            r2 = 0
            if (r1 != 0) goto L_0x0019
            r3.C = r2
            r3.D = r2
            r0.I = r3
            r0.J = r3
            goto L_0x0021
        L_0x0019:
            r1.C = r3
            r3.D = r1
            r0.I = r3
            r3.C = r2
        L_0x0021:
            if (r4 == 0) goto L_0x0030
            k.a.b.a.d.g0.d r4 = r3.o()
            k.a.b.a.d.g0.a0 r0 = r4.R
            if (r0 == 0) goto L_0x0030
            k.a.b.a.d.h$b r1 = k.a.b.a.d.h.b.TRANSPORT
            r4.a(r1, r0)
        L_0x0030:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.d.g0.f.c(boolean):void");
    }

    public void close() {
        g gVar = this.x;
        g gVar2 = g.CLOSED;
        if (gVar != gVar2) {
            this.x = gVar2;
            B();
            c(true);
        }
    }

    public g e() {
        return this.y;
    }

    public void h() {
        if (this.B) {
            this.B = false;
            d o = o();
            if (o.J == this) {
                o.J = this.C;
            } else {
                this.D.C = this.C;
            }
            if (o.I == this) {
                o.I = this.D;
                return;
            }
            this.C.D = this.D;
        }
    }

    public void i() {
        int i2 = this.F - 1;
        this.F = i2;
        if (i2 == 0) {
            S();
        } else if (i2 < 0) {
            throw new IllegalStateException();
        }
    }

    public abstract void n();

    public abstract d o();

    public void open() {
        g gVar = this.x;
        g gVar2 = g.ACTIVE;
        if (gVar != gVar2) {
            this.x = gVar2;
            F();
            c(true);
        }
    }

    public u q() {
        return this.E;
    }

    public void w() {
        this.F++;
    }

    public final void a() {
        if (!this.G) {
            this.G = true;
            n();
            i();
        }
    }
}
