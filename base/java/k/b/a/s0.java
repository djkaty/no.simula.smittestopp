package k.b.a;

import java.io.ByteArrayOutputStream;

public class s0 extends i {
    public s0(o oVar, l lVar, t tVar, int i2, t tVar2) {
        super(oVar, lVar, tVar, i2, tVar2);
    }

    public void a(r rVar, boolean z) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        o oVar = this.x;
        if (oVar != null) {
            byteArrayOutputStream.write(oVar.a("DER"));
        }
        l lVar = this.y;
        if (lVar != null) {
            byteArrayOutputStream.write(lVar.a("DER"));
        }
        t tVar = this.z;
        if (tVar != null) {
            byteArrayOutputStream.write(tVar.a("DER"));
        }
        byteArrayOutputStream.write(new h1(true, this.A, this.B).a("DER"));
        rVar.a(z, 32, 8, byteArrayOutputStream.toByteArray());
    }

    public int f() {
        return e().length;
    }

    public t h() {
        return this;
    }

    public t i() {
        return this;
    }
}
