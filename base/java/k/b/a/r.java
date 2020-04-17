package k.b.a;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Enumeration;

public class r {
    public OutputStream a;

    public r(OutputStream outputStream) {
        this.a = outputStream;
    }

    public static r a(OutputStream outputStream, String str) {
        return str.equals("DER") ? new c1(outputStream) : str.equals("DL") ? new q1(outputStream) : new r(outputStream);
    }

    public c1 a() {
        return new c1(this.a);
    }

    public final void a(Enumeration enumeration) {
        while (enumeration.hasMoreElements()) {
            a(((e) enumeration.nextElement()).c(), true);
        }
    }

    public void a(e eVar) {
        if (eVar != null) {
            a(eVar.c(), true);
            return;
        }
        throw new IOException("null object detected");
    }

    public void a(t tVar, boolean z) {
        tVar.a(this, z);
    }

    public final void a(boolean z, int i2, byte b, byte[] bArr) {
        if (z) {
            this.a.write(i2);
        }
        a(bArr.length + 1);
        this.a.write(b);
        this.a.write(bArr, 0, bArr.length);
    }

    public r b() {
        return new q1(this.a);
    }

    public final void a(boolean z, int i2, int i3, byte[] bArr) {
        a(z, i2, i3);
        a(bArr.length);
        this.a.write(bArr, 0, bArr.length);
    }

    public final void a(boolean z, int i2, byte[] bArr) {
        if (z) {
            this.a.write(i2);
        }
        a(bArr.length);
        this.a.write(bArr, 0, bArr.length);
    }

    public final void a(boolean z, int i2, e[] eVarArr) {
        if (z) {
            this.a.write(i2);
        }
        this.a.write(128);
        for (e c2 : eVarArr) {
            a(c2.c(), true);
        }
        this.a.write(0);
        this.a.write(0);
    }

    public final void a(int i2) {
        if (i2 > 127) {
            int i3 = i2;
            int i4 = 1;
            while (true) {
                i3 >>>= 8;
                if (i3 == 0) {
                    break;
                }
                i4++;
            }
            this.a.write((byte) (i4 | 128));
            for (int i5 = (i4 - 1) * 8; i5 >= 0; i5 -= 8) {
                this.a.write((byte) (i2 >> i5));
            }
            return;
        }
        this.a.write((byte) i2);
    }

    public final void a(boolean z, int i2, int i3) {
        if (z) {
            if (i3 < 31) {
                this.a.write(i2 | i3);
                return;
            }
            this.a.write(31 | i2);
            if (i3 < 128) {
                this.a.write(i3);
                return;
            }
            byte[] bArr = new byte[5];
            int i4 = 4;
            bArr[4] = (byte) (i3 & 127);
            do {
                i3 >>= 7;
                i4--;
                bArr[i4] = (byte) ((i3 & 127) | 128);
            } while (i3 > 127);
            this.a.write(bArr, i4, 5 - i4);
        }
    }
}
