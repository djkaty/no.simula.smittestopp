package k.b.a;

import java.io.ByteArrayOutputStream;

public class o1 extends i {
    public o1(f fVar) {
        super(fVar);
    }

    public o1(o oVar, l lVar, t tVar, int i2, t tVar2) {
        super(oVar, lVar, tVar, i2, tVar2);
    }

    public void a(r rVar, boolean z) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        o oVar = this.x;
        if (oVar != null) {
            byteArrayOutputStream.write(oVar.a("DL"));
        }
        l lVar = this.y;
        if (lVar != null) {
            byteArrayOutputStream.write(lVar.a("DL"));
        }
        t tVar = this.z;
        if (tVar != null) {
            byteArrayOutputStream.write(tVar.a("DL"));
        }
        byteArrayOutputStream.write(new h1(true, this.A, this.B).a("DL"));
        rVar.a(z, 32, 8, byteArrayOutputStream.toByteArray());
    }

    public int f() {
        return e().length;
    }

    public t i() {
        return this;
    }
}
