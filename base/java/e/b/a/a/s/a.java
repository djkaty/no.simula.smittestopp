package e.b.a.a.s;

import com.microsoft.azure.storage.core.Canonicalizer;

public class a {

    /* renamed from: c  reason: collision with root package name */
    public static final int[] f1109c = {8000, 8000, 2000, 2000};

    /* renamed from: d  reason: collision with root package name */
    public static final int[] f1110d = {4000, 4000, Canonicalizer.ExpectedTableCanonicalizedStringLength, Canonicalizer.ExpectedTableCanonicalizedStringLength};
    public final byte[][] a = new byte[4][];
    public final char[][] b = new char[4][];

    public final byte[] a(int i2) {
        int i3 = f1109c[i2];
        if (i3 <= 0) {
            i3 = 0;
        }
        byte[][] bArr = this.a;
        byte[] bArr2 = bArr[i2];
        if (bArr2 == null || bArr2.length < i3) {
            return new byte[i3];
        }
        bArr[i2] = null;
        return bArr2;
    }

    public char[] a(int i2, int i3) {
        int i4 = f1110d[i2];
        if (i3 < i4) {
            i3 = i4;
        }
        char[][] cArr = this.b;
        char[] cArr2 = cArr[i2];
        if (cArr2 == null || cArr2.length < i3) {
            return new char[i3];
        }
        cArr[i2] = null;
        return cArr2;
    }
}
