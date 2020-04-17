package k.b.a;

public class v1 extends b0 {
    public v1(boolean z, int i2, e eVar) {
        super(z, i2, eVar);
    }

    public void a(r rVar, boolean z) {
        t i2 = this.z.c().i();
        rVar.a(z, (this.y || i2.g()) ? 160 : 128, this.x);
        if (this.y) {
            rVar.a(i2.f());
        }
        rVar.b().a(i2, this.y);
    }

    public int f() {
        int f2 = this.z.c().i().f();
        if (this.y) {
            return d2.a(f2) + d2.b(this.x) + f2;
        }
        return d2.b(this.x) + (f2 - 1);
    }

    public boolean g() {
        return this.y || this.z.c().i().g();
    }

    public t i() {
        return this;
    }
}
