package k.b.a;

import java.math.BigInteger;
import java.util.Arrays;
import k.b.c.e.a;
import k.b.j.e;

public class l extends t {
    public final byte[] x;
    public final int y;

    public l(long j2) {
        this.x = BigInteger.valueOf(j2).toByteArray();
        this.y = 0;
    }

    public l(BigInteger bigInteger) {
        this.x = bigInteger.toByteArray();
        this.y = 0;
    }

    public l(byte[] bArr, boolean z) {
        if (!b(bArr)) {
            this.x = z ? a.a(bArr) : bArr;
            this.y = c(bArr);
            return;
        }
        throw new IllegalArgumentException("malformed integer");
    }

    public static int a(byte[] bArr, int i2, int i3) {
        int length = bArr.length;
        int max = Math.max(i2, length - 4);
        byte b = i3 & bArr[max];
        while (true) {
            max++;
            if (max >= length) {
                return b;
            }
            b = (b << 8) | (bArr[max] & 255);
        }
    }

    public static l a(Object obj) {
        if (obj == null || (obj instanceof l)) {
            return (l) obj;
        }
        if (obj instanceof byte[]) {
            try {
                return (l) t.a((byte[]) obj);
            } catch (Exception e2) {
                throw new IllegalArgumentException(e.a.a.a.a.a(e2, e.a.a.a.a.a("encoding error in getInstance: ")));
            }
        } else {
            throw new IllegalArgumentException(e.a.a.a.a.a(obj, e.a.a.a.a.a("illegal object in getInstance: ")));
        }
    }

    public static boolean b(byte[] bArr) {
        int length = bArr.length;
        if (length != 0) {
            return length != 1 && bArr[0] == (bArr[1] >> 7) && !e.a("org.bouncycastle.asn1.allow_unsafe_integer");
        }
        return true;
    }

    public static int c(byte[] bArr) {
        int length = bArr.length - 1;
        int i2 = 0;
        while (i2 < length) {
            int i3 = i2 + 1;
            if (bArr[i2] != (bArr[i3] >> 7)) {
                break;
            }
            i2 = i3;
        }
        return i2;
    }

    public void a(r rVar, boolean z) {
        rVar.a(z, 2, this.x);
    }

    public boolean a(BigInteger bigInteger) {
        return bigInteger != null && a(this.x, this.y, -1) == bigInteger.intValue() && j().equals(bigInteger);
    }

    public boolean a(t tVar) {
        if (!(tVar instanceof l)) {
            return false;
        }
        return Arrays.equals(this.x, ((l) tVar).x);
    }

    public int f() {
        return d2.a(this.x.length) + 1 + this.x.length;
    }

    public boolean g() {
        return false;
    }

    public int hashCode() {
        return a.d(this.x);
    }

    public BigInteger j() {
        return new BigInteger(this.x);
    }

    public int k() {
        byte[] bArr = this.x;
        int length = bArr.length;
        int i2 = this.y;
        if (length - i2 <= 4) {
            return a(bArr, i2, -1);
        }
        throw new ArithmeticException("ASN.1 Integer out of int range");
    }

    public long l() {
        byte[] bArr = this.x;
        int length = bArr.length;
        int i2 = this.y;
        if (length - i2 <= 8) {
            int length2 = bArr.length;
            int max = Math.max(i2, length2 - 8);
            long j2 = (long) (-1 & bArr[max]);
            while (true) {
                max++;
                if (max >= length2) {
                    return j2;
                }
                j2 = (j2 << 8) | ((long) (bArr[max] & 255));
            }
        } else {
            throw new ArithmeticException("ASN.1 Integer out of long range");
        }
    }

    public String toString() {
        return j().toString();
    }

    public static l a(b0 b0Var, boolean z) {
        t j2 = b0Var.j();
        if (z || (j2 instanceof l)) {
            return a((Object) j2);
        }
        return new l(p.a((Object) j2).j(), true);
    }
}
