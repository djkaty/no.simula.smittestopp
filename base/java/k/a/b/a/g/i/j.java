package k.a.b.a.g.i;

import java.nio.channels.SelectableChannel;
import k.a.b.a.d.c0;
import k.a.b.a.d.g0.r;
import k.a.b.a.d.u;
import k.a.b.a.g.d;
import k.a.b.a.g.g;

public class j implements g {
    public g.a A;
    public g.a B;
    public g.a C;
    public boolean D = false;
    public boolean E = false;
    public long F = 0;
    public SelectableChannel G;
    public u H = new r();
    public d I;
    public c0 J;
    public boolean K;
    public boolean L;
    public g.a x;
    public g.a y;
    public g.a z;

    public void C() {
        g.a aVar = this.x;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    public SelectableChannel I() {
        return this.G;
    }

    public boolean M() {
        return this.D;
    }

    public void N() {
        g.a aVar = this.z;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    public boolean P() {
        return this.K;
    }

    public long Q() {
        return this.F;
    }

    public void a(boolean z2) {
        this.D = z2;
    }

    public void b(boolean z2) {
        this.E = z2;
    }

    public void c(long j2) {
        this.F = j2;
    }

    public void d(g.a aVar) {
        this.z = aVar;
    }

    public void e(g.a aVar) {
        this.A = aVar;
    }

    public void p() {
        this.K = true;
    }

    public u q() {
        return this.H;
    }

    public boolean s() {
        return this.E;
    }

    public void u() {
        g.a aVar = this.y;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    public void y() {
        g.a aVar = this.A;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    public void a(g.a aVar) {
        this.x = aVar;
    }

    public void b(g.a aVar) {
        this.y = aVar;
    }

    public void c(g.a aVar) {
        this.C = aVar;
    }

    public void a() {
        g.a aVar = this.C;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    public d b() {
        return this.I;
    }

    public void c() {
        g.a aVar = this.B;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    public void a(SelectableChannel selectableChannel) {
        this.G = selectableChannel;
    }
}
