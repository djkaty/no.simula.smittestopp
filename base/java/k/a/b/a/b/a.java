package k.a.b.a.b;

import java.nio.ByteBuffer;

public final class a {
    public final byte[] a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1569c;

    /* renamed from: d  reason: collision with root package name */
    public int f1570d;

    public a(byte[] bArr) {
        int length = bArr.length;
        this.a = bArr;
        this.b = 0;
        this.f1569c = length;
    }

    public ByteBuffer a() {
        return ByteBuffer.wrap(this.a, this.b, this.f1569c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        int i2 = this.f1569c;
        if (i2 != aVar.f1569c) {
            return false;
        }
        byte[] bArr = this.a;
        byte[] bArr2 = aVar.a;
        int i3 = this.b;
        int i4 = aVar.b;
        int i5 = i2 + i3;
        while (i3 < i5) {
            int i6 = i3 + 1;
            int i7 = i4 + 1;
            if (bArr[i3] != bArr2[i4]) {
                return false;
            }
            i3 = i6;
            i4 = i7;
        }
        return true;
    }

    public final int hashCode() {
        int i2 = this.f1570d;
        if (i2 == 0) {
            for (int i3 = 0; i3 < this.f1569c; i3++) {
                i2 = (i2 * 31) + (this.a[this.b + i3] & 255);
            }
            this.f1570d = i2;
        }
        return i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < this.f1569c; i2++) {
            byte b2 = this.a[this.b + i2];
            if (b2 <= 31 || b2 >= Byte.MAX_VALUE || b2 == 92) {
                sb.append(String.format("\\x%02x", new Object[]{Byte.valueOf(b2)}));
            } else {
                sb.append((char) b2);
            }
        }
        return sb.toString();
    }

    public a(byte[] bArr, int i2, int i3) {
        this.a = bArr;
        this.b = i2;
        this.f1569c = i3;
    }
}
