package k.e.a;

import com.microsoft.azure.storage.analytics.LogRecordStreamReader;

public final class z {
    public final byte[] a;
    public final int b;

    public z(byte[] bArr, int i2) {
        this.a = bArr;
        this.b = i2;
    }

    public static void a(z zVar, c cVar) {
        if (zVar == null) {
            cVar.b(0);
            return;
        }
        byte[] bArr = zVar.a;
        int i2 = zVar.b;
        cVar.a(bArr, i2, (bArr[i2] * 2) + 1);
    }

    public String toString() {
        byte b2 = this.a[this.b];
        StringBuilder sb = new StringBuilder(b2 * 2);
        for (int i2 = 0; i2 < b2; i2++) {
            byte[] bArr = this.a;
            int i3 = this.b;
            int i4 = i2 * 2;
            byte b3 = bArr[i4 + i3 + 1];
            if (b3 == 0) {
                sb.append('[');
            } else if (b3 == 1) {
                sb.append('.');
            } else if (b3 == 2) {
                sb.append('*');
            } else if (b3 == 3) {
                sb.append(bArr[i4 + i3 + 2]);
                sb.append(LogRecordStreamReader.FIELD_DELIMITER);
            } else {
                throw new AssertionError();
            }
        }
        return sb.toString();
    }
}
