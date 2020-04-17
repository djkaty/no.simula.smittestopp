package k.b.i.b.g;

import k.b.a.o;
import k.b.c.a;
import k.b.c.b;

public final class h {
    public final a a;
    public final int b;

    public h(o oVar, int i2) {
        if (oVar != null) {
            this.a = f.a(oVar);
            this.b = i2;
            return;
        }
        throw new NullPointerException("digest == null");
    }

    public final byte[] a(int i2, byte[] bArr, byte[] bArr2) {
        byte[] a2 = k.b.c.e.a.a((long) i2, this.b);
        this.a.a(a2, 0, a2.length);
        this.a.a(bArr, 0, bArr.length);
        this.a.a(bArr2, 0, bArr2.length);
        int i3 = this.b;
        byte[] bArr3 = new byte[i3];
        a aVar = this.a;
        if (aVar instanceof b) {
            ((b) aVar).doFinal(bArr3, 0, i3);
        } else {
            aVar.a(bArr3, 0);
        }
        return bArr3;
    }

    public byte[] a(byte[] bArr, byte[] bArr2) {
        if (bArr.length != this.b) {
            throw new IllegalArgumentException("wrong key length");
        } else if (bArr2.length == 32) {
            return a(3, bArr, bArr2);
        } else {
            throw new IllegalArgumentException("wrong address length");
        }
    }
}
