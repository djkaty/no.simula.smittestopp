package k.b.a;

import java.util.Arrays;
import k.b.c.e.a;
import k.b.j.f;

public class d0 extends t {
    public byte[] x;

    public d0(byte[] bArr) {
        if (bArr.length >= 2) {
            this.x = bArr;
            if (!a(0) || !a(1)) {
                throw new IllegalArgumentException("illegal characters in UTCTime string");
            }
            return;
        }
        throw new IllegalArgumentException("UTCTime string too short");
    }

    public void a(r rVar, boolean z) {
        rVar.a(z, 23, this.x);
    }

    public final boolean a(int i2) {
        byte[] bArr = this.x;
        return bArr.length > i2 && bArr[i2] >= 48 && bArr[i2] <= 57;
    }

    public boolean a(t tVar) {
        if (!(tVar instanceof d0)) {
            return false;
        }
        return Arrays.equals(this.x, ((d0) tVar).x);
    }

    public int f() {
        int length = this.x.length;
        return d2.a(length) + 1 + length;
    }

    public boolean g() {
        return false;
    }

    public int hashCode() {
        return a.d(this.x);
    }

    public String toString() {
        return f.a(this.x);
    }
}
