package k.b.a;

import java.util.Arrays;
import k.b.j.g.f;

public abstract class a extends t {
    public final boolean x;
    public final int y;
    public final byte[] z;

    public a(boolean z2, int i2, byte[] bArr) {
        this.x = z2;
        this.y = i2;
        this.z = k.b.c.e.a.a(bArr);
    }

    public void a(r rVar, boolean z2) {
        rVar.a(z2, this.x ? 96 : 64, this.y, this.z);
    }

    public boolean a(t tVar) {
        if (!(tVar instanceof a)) {
            return false;
        }
        a aVar = (a) tVar;
        return this.x == aVar.x && this.y == aVar.y && Arrays.equals(this.z, aVar.z);
    }

    public int f() {
        return d2.a(this.z.length) + d2.b(this.y) + this.z.length;
    }

    public boolean g() {
        return this.x;
    }

    public int hashCode() {
        return (this.x ^ this.y) ^ k.b.c.e.a.d(this.z) ? 1 : 0;
    }

    public String toString() {
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("[");
        if (this.x) {
            stringBuffer.append("CONSTRUCTED ");
        }
        stringBuffer.append("APPLICATION ");
        stringBuffer.append(Integer.toString(this.y));
        stringBuffer.append("]");
        if (this.z != null) {
            stringBuffer.append(" #");
            str = f.b(this.z);
        } else {
            str = " #null";
        }
        stringBuffer.append(str);
        stringBuffer.append(" ");
        return stringBuffer.toString();
    }
}
