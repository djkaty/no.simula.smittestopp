package k.b.a;

import java.io.IOException;
import java.util.Arrays;
import k.b.c.e.a;

public class j1 extends t implements a0 {
    public static final char[] y = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    public final byte[] x;

    public j1(byte[] bArr) {
        this.x = a.a(bArr);
    }

    public void a(r rVar, boolean z) {
        rVar.a(z, 28, this.x);
    }

    public boolean a(t tVar) {
        if (!(tVar instanceof j1)) {
            return false;
        }
        return Arrays.equals(this.x, ((j1) tVar).x);
    }

    public String d() {
        StringBuffer stringBuffer = new StringBuffer("#");
        try {
            byte[] e2 = e();
            for (int i2 = 0; i2 != e2.length; i2++) {
                stringBuffer.append(y[(e2[i2] >>> 4) & 15]);
                stringBuffer.append(y[e2[i2] & 15]);
            }
            return stringBuffer.toString();
        } catch (IOException unused) {
            throw new s("internal error encoding UniversalString");
        }
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

    public String toString() {
        return d();
    }
}
