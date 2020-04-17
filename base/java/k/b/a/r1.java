package k.b.a;

public class r1 extends u {
    public int y = -1;

    public r1() {
    }

    public r1(e eVar) {
        super(eVar);
    }

    public r1(f fVar) {
        super(fVar);
    }

    public r1(e[] eVarArr, boolean z) {
        super(eVarArr, z);
    }

    public void a(r rVar, boolean z) {
        if (z) {
            rVar.a.write(48);
        }
        r b = rVar.b();
        int length = this.x.length;
        int i2 = 0;
        if (this.y >= 0 || length > 16) {
            rVar.a(l());
            while (i2 < length) {
                b.a(this.x[i2].c(), true);
                i2++;
            }
            return;
        }
        t[] tVarArr = new t[length];
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            t i5 = this.x[i4].c().i();
            tVarArr[i4] = i5;
            i3 += i5.f();
        }
        this.y = i3;
        rVar.a(i3);
        while (i2 < length) {
            b.a(tVarArr[i2], true);
            i2++;
        }
    }

    public int f() {
        int l2 = l();
        return d2.a(l2) + 1 + l2;
    }

    public t i() {
        return this;
    }

    public final int l() {
        if (this.y < 0) {
            int i2 = 0;
            for (e c2 : this.x) {
                i2 += c2.c().i().f();
            }
            this.y = i2;
        }
        return this.y;
    }
}
