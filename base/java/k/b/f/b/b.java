package k.b.f.b;

import java.math.BigInteger;

public abstract class b {
    public static final a a = new f(BigInteger.valueOf(2));
    public static final a b = new f(BigInteger.valueOf(3));

    public static a a(BigInteger bigInteger) {
        int bitLength = bigInteger.bitLength();
        if (bigInteger.signum() <= 0 || bitLength < 2) {
            throw new IllegalArgumentException("'characteristic' must be >= 2");
        }
        if (bitLength < 3) {
            int intValue = bigInteger.intValue();
            if (intValue == 2) {
                return a;
            }
            if (intValue == 3) {
                return b;
            }
        }
        return new f(bigInteger);
    }

    public static e a(int[] iArr) {
        if (iArr[0] == 0) {
            int i2 = 1;
            while (i2 < iArr.length) {
                if (iArr[i2] > iArr[i2 - 1]) {
                    i2++;
                } else {
                    throw new IllegalArgumentException("Polynomial exponents must be montonically increasing");
                }
            }
            return new d(a, new c(iArr));
        }
        throw new IllegalArgumentException("Irreducible polynomials in GF(2) must have constant term");
    }
}
