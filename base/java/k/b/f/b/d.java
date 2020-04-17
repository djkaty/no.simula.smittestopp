package k.b.f.b;

import java.math.BigInteger;

public class d implements e {
    public final a a;
    public final c b;

    public d(a aVar, c cVar) {
        this.a = aVar;
        this.b = cVar;
    }

    public int a() {
        int a2 = this.a.a();
        int[] iArr = this.b.a;
        return a2 * iArr[iArr.length - 1];
    }

    public BigInteger b() {
        return this.a.b();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.a.equals(dVar.a) && this.b.equals(dVar.b);
    }

    public int hashCode() {
        return this.a.hashCode() ^ Integer.rotateLeft(this.b.hashCode(), 16);
    }
}
