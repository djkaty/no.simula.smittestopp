package k.b.i.c.b.a;

import java.security.PrivateKey;
import k.b.i.b.a.e;

public class c implements PrivateKey {
    public e x;

    public c(e eVar) {
        this.x = eVar;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        e eVar = this.x;
        int i2 = eVar.a;
        e eVar2 = cVar.x;
        if (i2 != eVar2.a || eVar.b != eVar2.b || !eVar.f2085c.equals(eVar2.f2085c) || !this.x.f2086d.equals(cVar.x.f2086d) || !this.x.f2087e.equals(cVar.x.f2087e) || !this.x.f2088f.equals(cVar.x.f2088f) || !this.x.f2089g.equals(cVar.x.f2089g)) {
            return false;
        }
        return true;
    }

    public String getAlgorithm() {
        return "McEliece";
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public byte[] getEncoded() {
        /*
            r9 = this;
            k.b.i.a.c r8 = new k.b.i.a.c
            k.b.i.b.a.e r0 = r9.x
            int r1 = r0.a
            int r2 = r0.b
            k.b.i.d.a.b r3 = r0.f2085c
            k.b.i.d.a.e r4 = r0.f2086d
            k.b.i.d.a.d r5 = r0.f2088f
            k.b.i.d.a.d r6 = r0.f2089g
            k.b.i.d.a.a r7 = r0.f2087e
            r0 = r8
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            r0 = 0
            k.b.a.l2.a r1 = new k.b.a.l2.a     // Catch:{ IOException -> 0x0027 }
            k.b.a.o r2 = k.b.i.a.e.f2068c     // Catch:{ IOException -> 0x0027 }
            r1.<init>((k.b.a.o) r2)     // Catch:{ IOException -> 0x0027 }
            k.b.a.i2.f r2 = new k.b.a.i2.f     // Catch:{ IOException -> 0x0027 }
            r2.<init>(r1, r8, r0, r0)     // Catch:{ IOException -> 0x0027 }
            byte[] r0 = r2.e()     // Catch:{  }
        L_0x0027:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k.b.i.c.b.a.c.getEncoded():byte[]");
    }

    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        e eVar = this.x;
        int hashCode = eVar.f2086d.hashCode();
        int hashCode2 = this.x.f2088f.hashCode();
        int hashCode3 = this.x.f2089g.hashCode();
        return this.x.f2087e.hashCode() + ((hashCode3 + ((hashCode2 + ((hashCode + (((((eVar.b * 37) + eVar.a) * 37) + eVar.f2085c.b) * 37)) * 37)) * 37)) * 37);
    }
}
