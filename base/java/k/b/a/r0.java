package k.b.a;

import e.a.a.a.a;

public class r0 extends b {
    public r0(e eVar) {
        super(eVar.c().a("DER"), 0);
    }

    public r0(byte[] bArr) {
        super(bArr, 0);
    }

    public r0(byte[] bArr, int i2) {
        super(bArr, i2);
    }

    public static r0 a(Object obj) {
        if (obj == null || (obj instanceof r0)) {
            return (r0) obj;
        }
        if (obj instanceof n1) {
            n1 n1Var = (n1) obj;
            return new r0(n1Var.x, n1Var.y);
        } else if (obj instanceof byte[]) {
            try {
                return (r0) t.a((byte[]) obj);
            } catch (Exception e2) {
                throw new IllegalArgumentException(a.a(e2, a.a("encoding error in getInstance: ")));
            }
        } else {
            throw new IllegalArgumentException(a.a(obj, a.a("illegal object in getInstance: ")));
        }
    }

    public void a(r rVar, boolean z) {
        int i2;
        byte[] bArr = this.x;
        int length = bArr.length;
        if (!(length == 0 || (i2 = this.y) == 0)) {
            int i3 = length - 1;
            if (bArr[i3] != ((byte) (bArr[i3] & (255 << i2)))) {
                byte b = (byte) (bArr[i3] & (255 << i2));
                byte b2 = (byte) i2;
                if (z) {
                    rVar.a.write(3);
                }
                rVar.a(i3 + 2);
                rVar.a.write(b2);
                rVar.a.write(bArr, 0, i3);
                rVar.a.write(b);
                return;
            }
        }
        rVar.a(z, 3, (byte) this.y, this.x);
    }

    public int f() {
        return d2.a(this.x.length + 1) + 1 + this.x.length + 1;
    }

    public boolean g() {
        return false;
    }

    public t h() {
        return this;
    }

    public t i() {
        return this;
    }

    public static r0 a(b0 b0Var, boolean z) {
        t j2 = b0Var.j();
        if (z || (j2 instanceof r0)) {
            return a(j2);
        }
        byte[] j3 = p.a((Object) j2).j();
        if (j3.length >= 1) {
            byte b = j3[0];
            int length = j3.length - 1;
            byte[] bArr = new byte[length];
            if (length != 0) {
                System.arraycopy(j3, 1, bArr, 0, j3.length - 1);
            }
            return new r0(bArr, b);
        }
        throw new IllegalArgumentException("truncated BIT STRING detected");
    }
}
