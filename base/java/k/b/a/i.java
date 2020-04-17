package k.b.a;

import e.a.a.a.a;

public abstract class i extends t {
    public int A;
    public t B;
    public o x;
    public l y;
    public t z;

    public i(f fVar) {
        int i2 = 0;
        t a = a(fVar, 0);
        if (a instanceof o) {
            this.x = (o) a;
            a = a(fVar, 1);
            i2 = 1;
        }
        if (a instanceof l) {
            this.y = (l) a;
            i2++;
            a = a(fVar, i2);
        }
        if (!(a instanceof b0)) {
            this.z = a;
            i2++;
            a = a(fVar, i2);
        }
        if (fVar.b != i2 + 1) {
            throw new IllegalArgumentException("input vector too large");
        } else if (a instanceof b0) {
            b0 b0Var = (b0) a;
            a(b0Var.x);
            this.B = b0Var.j();
        } else {
            throw new IllegalArgumentException("No tagged object found in vector. Structure doesn't seem to be of type External");
        }
    }

    public final t a(f fVar, int i2) {
        if (fVar.b > i2) {
            return fVar.a(i2).c();
        }
        throw new IllegalArgumentException("too few objects in input vector");
    }

    public final void a(int i2) {
        if (i2 < 0 || i2 > 2) {
            throw new IllegalArgumentException(a.a("invalid encoding value: ", i2));
        }
        this.A = i2;
    }

    public boolean a(t tVar) {
        t tVar2;
        l lVar;
        o oVar;
        if (!(tVar instanceof i)) {
            return false;
        }
        if (this == tVar) {
            return true;
        }
        i iVar = (i) tVar;
        o oVar2 = this.x;
        if (oVar2 != null && ((oVar = iVar.x) == null || !oVar.b(oVar2))) {
            return false;
        }
        l lVar2 = this.y;
        if (lVar2 != null && ((lVar = iVar.y) == null || !lVar.b(lVar2))) {
            return false;
        }
        t tVar3 = this.z;
        if (tVar3 == null || ((tVar2 = iVar.z) != null && tVar2.b(tVar3))) {
            return this.B.b(iVar.B);
        }
        return false;
    }

    public int f() {
        return e().length;
    }

    public boolean g() {
        return true;
    }

    public t h() {
        return new s0(this.x, this.y, this.z, this.A, this.B);
    }

    public int hashCode() {
        o oVar = this.x;
        int hashCode = oVar != null ? oVar.hashCode() : 0;
        l lVar = this.y;
        if (lVar != null) {
            hashCode ^= lVar.hashCode();
        }
        t tVar = this.z;
        if (tVar != null) {
            hashCode ^= tVar.hashCode();
        }
        return hashCode ^ this.B.hashCode();
    }

    public t i() {
        return new o1(this.x, this.y, this.z, this.A, this.B);
    }

    public i(o oVar, l lVar, t tVar, int i2, t tVar2) {
        this.x = oVar;
        this.y = lVar;
        this.z = tVar;
        a(i2);
        if (tVar2 != null) {
            this.B = tVar2;
            return;
        }
        throw null;
    }
}
