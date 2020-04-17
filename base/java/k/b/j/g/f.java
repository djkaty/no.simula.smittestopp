package k.b.j.g;

import e.a.a.a.a;
import java.io.ByteArrayOutputStream;

public class f {
    public static final g a = new g();

    public static byte[] a(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            a.a(str, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e2) {
            StringBuilder a2 = a.a("exception decoding Hex string: ");
            a2.append(e2.getMessage());
            throw new c(a2.toString(), e2);
        }
    }

    public static byte[] a(String str, int i2, int i3) {
        try {
            return a.a(str, i2, i3);
        } catch (Exception e2) {
            StringBuilder a2 = a.a("exception decoding Hex string: ");
            a2.append(e2.getMessage());
            throw new c(a2.toString(), e2);
        }
    }

    public static byte[] a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static byte[] a(byte[] bArr, int i2, int i3) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            g gVar = a;
            if (gVar != null) {
                for (int i4 = i2; i4 < i2 + i3; i4++) {
                    byte b = bArr[i4] & 255;
                    byteArrayOutputStream.write(gVar.a[b >>> 4]);
                    byteArrayOutputStream.write(gVar.a[b & 15]);
                }
                return byteArrayOutputStream.toByteArray();
            }
            throw null;
        } catch (Exception e2) {
            StringBuilder a2 = a.a("exception encoding Hex string: ");
            a2.append(e2.getMessage());
            throw new e(a2.toString(), e2);
        }
    }

    public static String b(byte[] bArr) {
        return k.b.j.f.a(a(bArr, 0, bArr.length));
    }
}
