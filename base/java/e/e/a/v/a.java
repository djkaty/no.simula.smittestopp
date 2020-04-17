package e.e.a.v;

import i.a.b.b;
import i.a.b.i;
import java.io.Serializable;
import java.math.BigInteger;
import java.util.Arrays;

public class a implements b, Serializable {
    public final String x;

    public a(String str) {
        if (str != null) {
            this.x = str;
            return;
        }
        throw new IllegalArgumentException("The Base64 value must not be null");
    }

    public String a() {
        StringBuilder a = e.a.a.a.a.a("\"");
        a.append(i.a(this.x));
        a.append("\"");
        return a.toString();
    }

    public byte[] b() {
        String str = this.x;
        if (str == null || str.isEmpty()) {
            return new byte[0];
        }
        byte[] bytes = str.getBytes(d.a);
        int length = bytes.length;
        byte[] bArr = new byte[((length * 6) >> 3)];
        int i2 = 0;
        int i3 = 0;
        while (i2 < bytes.length) {
            int i4 = 0;
            int i5 = 0;
            while (i4 < 4 && i2 < length) {
                int i6 = i2 + 1;
                byte b = bytes[i2];
                int b2 = b.b(b, 64) & b.c(b, 91);
                int b3 = b.b(b, 96) & b.c(b, 123);
                int b4 = b.b(b, 47) & b.c(b, 58);
                int a = b.a((int) b, 43) | b.a((int) b, 45);
                int a2 = b.a((int) b, 47) | b.a((int) b, 95);
                byte[] bArr2 = bytes;
                int a3 = b.a(b2, (b - 65) + 0, 0) | b.a(b3, (b - 97) + 26, 0) | b.a(b4, (b - 48) + 52, 0) | b.a(a, 62, 0) | b.a(a2, 63, 0) | b.a(b2 | b3 | b4 | a | a2, 0, -1);
                if (a3 >= 0) {
                    i5 |= a3 << (18 - (i4 * 6));
                    i4++;
                }
                i2 = i6;
                bytes = bArr2;
            }
            byte[] bArr3 = bytes;
            if (i4 >= 2) {
                int i7 = i3 + 1;
                bArr[i3] = (byte) (i5 >> 16);
                if (i4 >= 3) {
                    i3 = i7 + 1;
                    bArr[i7] = (byte) (i5 >> 8);
                    if (i4 >= 4) {
                        i7 = i3 + 1;
                        bArr[i3] = (byte) i5;
                    }
                }
                i3 = i7;
            }
            bytes = bArr3;
        }
        return Arrays.copyOf(bArr, i3);
    }

    public BigInteger d() {
        return new BigInteger(1, b());
    }

    public String e() {
        return new String(b(), d.a);
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof a) && this.x.equals(obj.toString());
    }

    public int hashCode() {
        return this.x.hashCode();
    }

    public String toString() {
        return this.x;
    }
}
