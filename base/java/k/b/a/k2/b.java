package k.b.a.k2;

import k.b.a.e;
import k.b.a.n;
import k.b.a.t;
import k.b.a.x;

public class b extends n {
    public x x;

    public b(x xVar) {
        this.x = xVar;
    }

    public t c() {
        return this.x;
    }

    public a f() {
        e[] eVarArr = this.x.x;
        if (eVarArr.length == 0) {
            return null;
        }
        return a.a(eVarArr[0]);
    }

    public a[] g() {
        int length = this.x.x.length;
        a[] aVarArr = new a[length];
        for (int i2 = 0; i2 != length; i2++) {
            aVarArr[i2] = a.a(this.x.x[i2]);
        }
        return aVarArr;
    }
}
