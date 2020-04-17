package k.b.j;

import java.security.AccessController;
import java.security.PrivilegedAction;
import k.b.j.g.h;

public final class f {
    public static String a;

    public static class a implements PrivilegedAction<String> {
        public Object run() {
            return System.getProperty("line.separator");
        }
    }

    static {
        try {
            a = (String) AccessController.doPrivileged(new a());
        } catch (Exception unused) {
            try {
                a = String.format("%n", new Object[0]);
            } catch (Exception unused2) {
                a = "\n";
            }
        }
    }

    public static String a(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length];
        for (int i2 = 0; i2 != length; i2++) {
            cArr[i2] = (char) (bArr[i2] & 255);
        }
        return new String(cArr);
    }

    public static byte[] a(String str) {
        int length = str.length();
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 != length; i2++) {
            bArr[i2] = (byte) str.charAt(i2);
        }
        return bArr;
    }

    public static String b(String str) {
        char[] charArray = str.toCharArray();
        boolean z = false;
        for (int i2 = 0; i2 != charArray.length; i2++) {
            char c2 = charArray[i2];
            if ('A' <= c2 && 'Z' >= c2) {
                charArray[i2] = (char) ((c2 - 'A') + 97);
                z = true;
            }
        }
        return z ? new String(charArray) : str;
    }

    public static String b(byte[] bArr) {
        char[] cArr = new char[bArr.length];
        int a2 = h.a(bArr, cArr);
        if (a2 >= 0) {
            return new String(cArr, 0, a2);
        }
        throw new IllegalArgumentException("Invalid UTF-8 input");
    }
}
