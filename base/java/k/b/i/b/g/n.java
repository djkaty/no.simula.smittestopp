package k.b.i.b.g;

import k.b.c.e.a;

public final class n {
    public final byte[][] a;

    public n(m mVar, byte[][] bArr) {
        if (mVar == null) {
            throw new NullPointerException("params == null");
        } else if (bArr == null) {
            throw new NullPointerException("publicKey == null");
        } else if (a.c(bArr)) {
            throw new NullPointerException("publicKey byte array == null");
        } else if (bArr.length == mVar.f2126d) {
            int i2 = 0;
            while (i2 < bArr.length) {
                if (bArr[i2].length == mVar.b) {
                    i2++;
                } else {
                    throw new IllegalArgumentException("wrong publicKey format");
                }
            }
            this.a = a.a(bArr);
        } else {
            throw new IllegalArgumentException("wrong publicKey size");
        }
    }
}
