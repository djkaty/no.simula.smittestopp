package k.b.i.d.a;

import java.math.BigInteger;

public final class c {
    static {
        BigInteger.valueOf(0);
        BigInteger.valueOf(1);
        BigInteger.valueOf(2);
        BigInteger.valueOf(4);
    }

    public static int a(int i2) {
        if (i2 == 0) {
            return 1;
        }
        if (i2 < 0) {
            i2 = -i2;
        }
        int i3 = 0;
        while (i2 > 0) {
            i3++;
            i2 >>>= 8;
        }
        return i3;
    }
}
