package k.b.a;

public class e1 extends u {
    public int y = -1;

    public e1() {
    }

    public e1(f fVar) {
        super(fVar);
    }

    public e1(e[] eVarArr) {
        super(eVarArr);
    }

    public e1(e[] eVarArr, boolean z) {
        super(eVarArr, z);
    }

    public void a(r rVar, boolean z) {
        if (z) {
            rVar.a.write(48);
        }
        c1 a = rVar.a();
        int length = this.x.length;
        int i2 = 0;
        if (this.y >= 0 || length > 16) {
            rVar.a(l());
            while (i2 < length) {
                this.x[i2].c().h().a((r) a, true);
                i2++;
            }
            return;
        }
        t[] tVarArr = new t[length];
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            t h2 = this.x[i4].c().h();
            tVarArr[i4] = h2;
            i3 += h2.f();
        }
        this.y = i3;
        rVar.a(i3);
        while (i2 < length) {
            tVarArr[i2].a((r) a, true);
            i2++;
        }
    }

    public int f() {
        int l2 = l();
        return d2.a(l2) + 1 + l2;
    }

    public t h() {
        return this;
    }

    public t i() {
        return this;
    }

    public final int l() {
        if (this.y < 0) {
            int i2 = 0;
            for (e c2 : this.x) {
                i2 += c2.c().h().f();
            }
            this.y = i2;
        }
        return this.y;
    }
}
