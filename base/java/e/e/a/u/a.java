package e.e.a.u;

import java.io.Serializable;

public final class a implements Serializable {
    public static final a A = new a("P-384", "secp384r1", "1.3.132.0.34");
    public static final a B = new a("P-521", "secp521r1", "1.3.132.0.35");
    public static final a C = new a("Ed25519", "Ed25519", (String) null);
    public static final a D = new a("Ed448", "Ed448", (String) null);
    public static final a E = new a("X25519", "X25519", (String) null);
    public static final a F = new a("X448", "X448", (String) null);
    public static final a y = new a("P-256", "secp256r1", "1.2.840.10045.3.1.7");
    public static final a z = new a("P-256K", "secp256k1", "1.3.132.0.10");
    public final String x;

    public a(String str, String str2, String str3) {
        if (str != null) {
            this.x = str;
            return;
        }
        throw new IllegalArgumentException("The JOSE cryptographic curve name must not be null");
    }

    public static a a(String str) {
        if (str == null || str.trim().isEmpty()) {
            throw new IllegalArgumentException("The cryptographic curve string must not be null or empty");
        } else if (str.equals(y.x)) {
            return y;
        } else {
            if (str.equals(z.x)) {
                return z;
            }
            if (str.equals(A.x)) {
                return A;
            }
            if (str.equals(B.x)) {
                return B;
            }
            if (str.equals(C.x)) {
                return C;
            }
            if (str.equals(D.x)) {
                return D;
            }
            if (str.equals(E.x)) {
                return E;
            }
            if (str.equals(F.x)) {
                return F;
            }
            return new a(str, (String) null, (String) null);
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof a) && this.x.equals(obj.toString());
    }

    public String toString() {
        return this.x;
    }
}
