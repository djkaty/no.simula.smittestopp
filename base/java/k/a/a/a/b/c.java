package k.a.a.a.b;

import java.util.Arrays;

public abstract class c {
    public final byte a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1543c;

    /* renamed from: d  reason: collision with root package name */
    public final int f1544d;

    /* renamed from: e  reason: collision with root package name */
    public final int f1545e;

    public static class a {
        public int a;
        public long b;

        /* renamed from: c  reason: collision with root package name */
        public byte[] f1546c;

        /* renamed from: d  reason: collision with root package name */
        public int f1547d;

        /* renamed from: e  reason: collision with root package name */
        public int f1548e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f1549f;

        /* renamed from: g  reason: collision with root package name */
        public int f1550g;

        /* renamed from: h  reason: collision with root package name */
        public int f1551h;

        public String toString() {
            return String.format("%s[buffer=%s, currentLinePos=%s, eof=%s, ibitWorkArea=%s, lbitWorkArea=%s, modulus=%s, pos=%s, readPos=%s]", new Object[]{a.class.getSimpleName(), Arrays.toString(this.f1546c), Integer.valueOf(this.f1550g), Boolean.valueOf(this.f1549f), Integer.valueOf(this.a), Long.valueOf(this.b), Integer.valueOf(this.f1551h), Integer.valueOf(this.f1547d), Integer.valueOf(this.f1548e)});
        }
    }

    public c(int i2, int i3, int i4, int i5, byte b2) {
        this.b = i2;
        this.f1543c = i3;
        this.f1544d = i4 > 0 && i5 > 0 ? (i4 / i3) * i3 : 0;
        this.f1545e = i5;
        this.a = b2;
    }

    public abstract void a(byte[] bArr, int i2, int i3, a aVar);

    public abstract boolean a(byte b2);

    public byte[] a(int i2, a aVar) {
        byte[] bArr = aVar.f1546c;
        if (bArr != null && bArr.length >= aVar.f1547d + i2) {
            return bArr;
        }
        byte[] bArr2 = aVar.f1546c;
        if (bArr2 == null) {
            aVar.f1546c = new byte[8192];
            aVar.f1547d = 0;
            aVar.f1548e = 0;
        } else {
            byte[] bArr3 = new byte[(bArr2.length * 2)];
            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
            aVar.f1546c = bArr3;
        }
        return aVar.f1546c;
    }

    public byte[] b(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        a aVar = new a();
        a(bArr, 0, bArr.length, aVar);
        a(bArr, 0, -1, aVar);
        int i2 = aVar.f1547d;
        int i3 = aVar.f1548e;
        int i4 = i2 - i3;
        byte[] bArr2 = new byte[i4];
        if (aVar.f1546c != null) {
            int min = Math.min(i2 - i3, i4);
            System.arraycopy(aVar.f1546c, aVar.f1548e, bArr2, 0, min);
            int i5 = aVar.f1548e + min;
            aVar.f1548e = i5;
            if (i5 >= aVar.f1547d) {
                aVar.f1546c = null;
            }
        } else {
            boolean z = aVar.f1549f;
        }
        return bArr2;
    }

    public boolean a(byte[] bArr) {
        if (bArr == null) {
            return false;
        }
        for (byte b2 : bArr) {
            if (this.a == b2 || a(b2)) {
                return true;
            }
        }
        return false;
    }
}
