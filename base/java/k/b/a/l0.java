package k.b.a;

public class l0 extends x {
    public l0() {
    }

    public l0(e eVar) {
        super(eVar);
    }

    public l0(f fVar) {
        super(fVar, false);
    }

    public l0(boolean z, e[] eVarArr) {
        super(z, eVarArr);
    }

    public void a(r rVar, boolean z) {
        rVar.a(z, 49, this.x);
    }

    public int f() {
        int i2 = 0;
        for (e c2 : this.x) {
            i2 += c2.c().f();
        }
        return i2 + 2 + 2;
    }
}
