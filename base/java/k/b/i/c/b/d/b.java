package k.b.i.c.b.d;

import com.microsoft.azure.sdk.iot.provisioning.security.SecurityProvider;
import java.security.PublicKey;
import k.b.a.l2.s;
import k.b.a.y0;
import k.b.c.e.a;
import k.b.i.a.e;
import k.b.i.a.g;

public class b implements PublicKey {
    public int A;
    public short[][] x;
    public short[][] y;
    public short[] z;

    public b(int i2, short[][] sArr, short[][] sArr2, short[] sArr3) {
        this.A = i2;
        this.x = sArr;
        this.y = sArr2;
        this.z = sArr3;
    }

    public b(k.b.i.c.c.b bVar) {
        int i2 = bVar.A;
        short[][] sArr = bVar.x;
        short[][] sArr2 = bVar.y;
        short[] sArr3 = bVar.z;
        this.A = i2;
        this.x = sArr;
        this.y = sArr2;
        this.z = sArr3;
    }

    public short[][] a() {
        short[][] sArr = new short[this.y.length][];
        int i2 = 0;
        while (true) {
            short[][] sArr2 = this.y;
            if (i2 == sArr2.length) {
                return sArr;
            }
            sArr[i2] = a.a(sArr2[i2]);
            i2++;
        }
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof b)) {
            b bVar = (b) obj;
            return this.A == bVar.A && a.a(this.x, bVar.x) && a.a(this.y, bVar.a()) && a.a(this.z, a.a(bVar.z));
        }
    }

    public final String getAlgorithm() {
        return "Rainbow";
    }

    public byte[] getEncoded() {
        try {
            return new s(new k.b.a.l2.a(e.a, y0.x), (k.b.a.e) new g(this.A, this.x, this.y, this.z)).a("DER");
        } catch (Exception unused) {
            return null;
        }
    }

    public String getFormat() {
        return SecurityProvider.DEFAULT_CERT_INSTANCE;
    }

    public int hashCode() {
        int b = a.b(this.x);
        int b2 = a.b(this.y);
        return a.c(this.z) + ((b2 + ((b + (this.A * 37)) * 37)) * 37);
    }
}
