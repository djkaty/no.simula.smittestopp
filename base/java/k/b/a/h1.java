package k.b.a;

public class h1 extends b0 {
    public h1(int i2, e eVar) {
        super(true, i2, eVar);
    }

    public h1(boolean z, int i2, e eVar) {
        super(z, i2, eVar);
    }

    public void a(r rVar, boolean z) {
        t h2 = this.z.c().h();
        rVar.a(z, (this.y || h2.g()) ? 160 : 128, this.x);
        if (this.y) {
            rVar.a(h2.f());
        }
        h2.a((r) rVar.a(), this.y);
    }

    public int f() {
        int f2 = this.z.c().h().f();
        if (this.y) {
            return d2.a(f2) + d2.b(this.x) + f2;
        }
        return d2.b(this.x) + (f2 - 1);
    }

    public boolean g() {
        return this.y || this.z.c().h().g();
    }

    public t h() {
        return this;
    }

    public t i() {
        return this;
    }
}
