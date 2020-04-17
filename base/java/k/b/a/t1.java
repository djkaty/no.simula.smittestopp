package k.b.a;

public class t1 extends x {
    public int z = -1;

    public t1() {
    }

    public t1(e eVar) {
        super(eVar);
    }

    public t1(f fVar) {
        super(fVar, false);
    }

    public t1(boolean z2, e[] eVarArr) {
        super(z2, eVarArr);
    }

    public void a(r rVar, boolean z2) {
        if (z2) {
            rVar.a.write(49);
        }
        r b = rVar.b();
        int length = this.x.length;
        int i2 = 0;
        if (this.z >= 0 || length > 16) {
            rVar.a(j());
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
        this.z = i3;
        rVar.a(i3);
        while (i2 < length) {
            b.a(tVarArr[i2], true);
            i2++;
        }
    }

    public int f() {
        int j2 = j();
        return d2.a(j2) + 1 + j2;
    }

    public t i() {
        return this;
    }

    public final int j() {
        if (this.z < 0) {
            int i2 = 0;
            for (e c2 : this.x) {
                i2 += c2.c().i().f();
            }
            this.z = i2;
        }
        return this.z;
    }
}
