package k.b.i.c.b.d;

import java.security.PrivateKey;
import java.util.Arrays;

public class a implements PrivateKey {
    public short[] A;
    public k.b.i.b.d.a[] B;
    public int[] C;
    public short[][] x;
    public short[] y;
    public short[][] z;

    public a(k.b.i.c.c.a aVar) {
        short[][] sArr = aVar.x;
        short[] sArr2 = aVar.y;
        short[][] sArr3 = aVar.z;
        short[] sArr4 = aVar.A;
        int[] iArr = aVar.B;
        k.b.i.b.d.a[] aVarArr = aVar.C;
        this.x = sArr;
        this.y = sArr2;
        this.z = sArr3;
        this.A = sArr4;
        this.C = iArr;
        this.B = aVarArr;
    }

    public a(short[][] sArr, short[] sArr2, short[][] sArr3, short[] sArr4, int[] iArr, k.b.i.b.d.a[] aVarArr) {
        this.x = sArr;
        this.y = sArr2;
        this.z = sArr3;
        this.A = sArr4;
        this.C = iArr;
        this.B = aVarArr;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        boolean z2 = (((k.b.c.e.a.a(this.x, aVar.x) && k.b.c.e.a.a(this.z, aVar.z)) && k.b.c.e.a.a(this.y, aVar.y)) && k.b.c.e.a.a(this.A, aVar.A)) && Arrays.equals(this.C, aVar.C);
        k.b.i.b.d.a[] aVarArr = this.B;
        if (aVarArr.length != aVar.B.length) {
            return false;
        }
        for (int length = aVarArr.length - 1; length >= 0; length--) {
            z2 &= this.B[length].equals(aVar.B[length]);
        }
        return z2;
    }

    public final String getAlgorithm() {
        return "Rainbow";
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public byte[] getEncoded() {
        /*
            r8 = this;
            k.b.i.a.f r7 = new k.b.i.a.f
            short[][] r1 = r8.x
            short[] r2 = r8.y
            short[][] r3 = r8.z
            short[] r4 = r8.A
            int[] r5 = r8.C
            k.b.i.b.d.a[] r6 = r8.B
            r0 = r7
            r0.<init>(r1, r2, r3, r4, r5, r6)
            r0 = 0
            k.b.a.l2.a r1 = new k.b.a.l2.a     // Catch:{ IOException -> 0x0025 }
            k.b.a.o r2 = k.b.i.a.e.a     // Catch:{ IOException -> 0x0025 }
            k.b.a.y0 r3 = k.b.a.y0.x     // Catch:{ IOException -> 0x0025 }
            r1.<init>(r2, r3)     // Catch:{ IOException -> 0x0025 }
            k.b.a.i2.f r2 = new k.b.a.i2.f     // Catch:{ IOException -> 0x0025 }
            r2.<init>(r1, r7, r0, r0)     // Catch:{ IOException -> 0x0025 }
            byte[] r0 = r2.e()     // Catch:{  }
        L_0x0025:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k.b.i.c.b.d.a.getEncoded():byte[]");
    }

    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        int b = k.b.c.e.a.b(this.x);
        int c2 = k.b.c.e.a.c(this.y);
        int b2 = k.b.c.e.a.b(this.z);
        int b3 = k.b.c.e.a.b(this.C) + ((k.b.c.e.a.c(this.A) + ((b2 + ((c2 + ((b + (this.B.length * 37)) * 37)) * 37)) * 37)) * 37);
        for (int length = this.B.length - 1; length >= 0; length--) {
            b3 = (b3 * 37) + this.B[length].hashCode();
        }
        return b3;
    }
}
