package k.c.a.a.a.s.q;

public class b {
    public static final char[] a = "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".toCharArray();

    public static String a(byte[] bArr) {
        int length = bArr.length;
        StringBuffer stringBuffer = new StringBuffer(((length + 2) / 3) * 4);
        int i2 = 0;
        while (length >= 3) {
            stringBuffer.append(a((long) (((bArr[i2] & 255) << 16) | ((bArr[i2 + 1] & 255) << 8) | (bArr[i2 + 2] & 255)), 4));
            i2 += 3;
            length -= 3;
        }
        if (length == 2) {
            stringBuffer.append(a((long) (((bArr[i2] & 255) << 8) | (bArr[i2 + 1] & 255)), 3));
        }
        if (length == 1) {
            stringBuffer.append(a((long) (bArr[i2] & 255), 2));
        }
        return stringBuffer.toString();
    }

    public static byte[] a(String str) {
        byte[] bytes = str.getBytes();
        int length = bytes.length;
        byte[] bArr = new byte[((length * 3) / 4)];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (length < 4) {
                break;
            }
            long a2 = a(bytes, i2, 4);
            length -= 4;
            i2 += 4;
            for (int i4 = 2; i4 >= 0; i4--) {
                bArr[i3 + i4] = (byte) ((int) (a2 & 255));
                a2 >>= 8;
            }
            i3 += 3;
        }
        if (length == 3) {
            long a3 = a(bytes, i2, 3);
            for (int i5 = 1; i5 >= 0; i5--) {
                bArr[i3 + i5] = (byte) ((int) (a3 & 255));
                a3 >>= 8;
            }
        }
        if (length == 2) {
            bArr[i3] = (byte) ((int) (a(bytes, i2, 2) & 255));
        }
        return bArr;
    }

    public static final String a(long j2, int i2) {
        StringBuffer stringBuffer = new StringBuffer(i2);
        while (i2 > 0) {
            i2--;
            stringBuffer.append(a[(int) (63 & j2)]);
            j2 >>= 6;
        }
        return stringBuffer.toString();
    }

    public static final long a(byte[] bArr, int i2, int i3) {
        int i4 = 0;
        long j2 = 0;
        while (i3 > 0) {
            i3--;
            int i5 = i2 + 1;
            byte b = bArr[i2];
            long j3 = b == 47 ? 1 : 0;
            if (b >= 48 && b <= 57) {
                j3 = (long) ((b + 2) - 48);
            }
            if (b >= 65 && b <= 90) {
                j3 = (long) ((b + 12) - 65);
            }
            if (b >= 97 && b <= 122) {
                j3 = (long) ((b + 38) - 97);
            }
            j2 += j3 << i4;
            i4 += 6;
            i2 = i5;
        }
        return j2;
    }
}
