package k.b.a.m2;

import k.b.a.a1;
import k.b.a.n;
import k.b.a.t;
import k.b.f.a.c;

public class d extends n {
    public c x;

    public d(c cVar) {
        this.x = cVar;
    }

    public t c() {
        byte[] bArr;
        int b = (this.x.b() + 7) / 8;
        byte[] byteArray = this.x.h().toByteArray();
        if (b < byteArray.length) {
            bArr = new byte[b];
            System.arraycopy(byteArray, byteArray.length - b, bArr, 0, b);
        } else {
            if (b > byteArray.length) {
                bArr = new byte[b];
                System.arraycopy(byteArray, 0, bArr, b - byteArray.length, byteArray.length);
            }
            return new a1(byteArray);
        }
        byteArray = bArr;
        return new a1(byteArray);
    }
}
