package e.e.a.v;

import java.math.BigInteger;

public class c extends a {
    public c(String str) {
        super(str);
    }

    public static c a(BigInteger bigInteger) {
        int bitLength = ((bigInteger.bitLength() + 7) >> 3) << 3;
        byte[] byteArray = bigInteger.toByteArray();
        int i2 = 1;
        if (bigInteger.bitLength() % 8 == 0 || (bigInteger.bitLength() / 8) + 1 != bitLength / 8) {
            int length = byteArray.length;
            if (bigInteger.bitLength() % 8 == 0) {
                length--;
            } else {
                i2 = 0;
            }
            int i3 = bitLength / 8;
            int i4 = i3 - length;
            byte[] bArr = new byte[i3];
            System.arraycopy(byteArray, i2, bArr, i4, length);
            byteArray = bArr;
        }
        return a(byteArray);
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof c) && this.x.equals(obj.toString());
    }

    public static c a(String str) {
        if (str == null) {
            return null;
        }
        return new c(str);
    }

    public static c a(byte[] bArr) {
        return new c(b.a(bArr, true));
    }
}
