package k.b.i.d.a;

import k.b.c.e.a;

public class d {
    public int[] a;

    public d(byte[] bArr) {
        if (bArr.length > 4) {
            boolean z = false;
            int a2 = a.a(bArr, 0);
            int a3 = c.a(a2 - 1);
            if (bArr.length == (a2 * a3) + 4) {
                this.a = new int[a2];
                for (int i2 = 0; i2 < a2; i2++) {
                    int[] iArr = this.a;
                    int i3 = (i2 * a3) + 4;
                    int i4 = 0;
                    for (int i5 = a3 - 1; i5 >= 0; i5--) {
                        i4 |= (bArr[i3 + i5] & 255) << (i5 * 8);
                    }
                    iArr[i2] = i4;
                }
                int[] iArr2 = this.a;
                int length = iArr2.length;
                boolean[] zArr = new boolean[length];
                int i6 = 0;
                while (true) {
                    if (i6 < length) {
                        if (iArr2[i6] < 0 || iArr2[i6] >= length || zArr[iArr2[i6]]) {
                            break;
                        }
                        zArr[iArr2[i6]] = true;
                        i6++;
                    } else {
                        z = true;
                        break;
                    }
                }
                if (!z) {
                    throw new IllegalArgumentException("invalid encoding");
                }
                return;
            }
            throw new IllegalArgumentException("invalid encoding");
        }
        throw new IllegalArgumentException("invalid encoding");
    }

    public byte[] a() {
        int length = this.a.length;
        int a2 = c.a(length - 1);
        byte[] bArr = new byte[((length * a2) + 4)];
        a.a(length, bArr, 0);
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = this.a[i2];
            int i4 = (i2 * a2) + 4;
            for (int i5 = a2 - 1; i5 >= 0; i5--) {
                bArr[i4 + i5] = (byte) (i3 >>> (i5 * 8));
            }
        }
        return bArr;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        return a.a(this.a, ((d) obj).a);
    }

    public int hashCode() {
        return a.b(this.a);
    }

    public String toString() {
        StringBuilder a2 = e.a.a.a.a.a("[");
        a2.append(this.a[0]);
        String sb = a2.toString();
        for (int i2 = 1; i2 < this.a.length; i2++) {
            StringBuilder a3 = e.a.a.a.a.a(sb, ", ");
            a3.append(this.a[i2]);
            sb = a3.toString();
        }
        return e.a.a.a.a.b(sb, "]");
    }
}
