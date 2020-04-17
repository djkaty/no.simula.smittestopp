package k.b.a;

public class f1 extends x {
    public int z;

    public f1() {
        this.z = -1;
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public f1(boolean z2, e[] eVarArr) {
        super(z2, eVarArr);
        if (z2) {
            this.z = -1;
            return;
        }
        throw new IllegalStateException("DERSet elements should always be in sorted order");
    }

    public void a(r rVar, boolean z2) {
        if (z2) {
            rVar.a.write(49);
        }
        c1 a = rVar.a();
        int length = this.x.length;
        int i2 = 0;
        if (this.z >= 0 || length > 16) {
            rVar.a(j());
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
        this.z = i3;
        rVar.a(i3);
        while (i2 < length) {
            tVarArr[i2].a((r) a, true);
            i2++;
        }
    }

    public int f() {
        int j2 = j();
        return d2.a(j2) + 1 + j2;
    }

    public t h() {
        return this.y ? this : super.h();
    }

    public t i() {
        return this;
    }

    public final int j() {
        if (this.z < 0) {
            int i2 = 0;
            for (e c2 : this.x) {
                i2 += c2.c().h().f();
            }
            this.z = i2;
        }
        return this.z;
    }
}
