package e.e.a.u;

import com.microsoft.identity.common.internal.platform.DevicePopManager;
import e.a.a.a.a;
import e.e.a.r;
import i.a.b.b;
import i.a.b.d;
import java.io.Serializable;

public final class f implements b, Serializable {
    public static final f A = new f("oct", r.OPTIONAL);
    public static final f B = new f("OKP", r.OPTIONAL);
    public static final f y = new f("EC", r.RECOMMENDED);
    public static final f z = new f(DevicePopManager.KeyPairGeneratorAlgorithms.RSA, r.REQUIRED);
    public final String x;

    public f(String str, r rVar) {
        if (str != null) {
            this.x = str;
            return;
        }
        throw new IllegalArgumentException("The key type value must not be null");
    }

    public String a() {
        StringBuilder a = a.a("\"");
        a.append(d.c(this.x));
        a.append('\"');
        return a.toString();
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof f) && this.x.equals(obj.toString());
    }

    public int hashCode() {
        return this.x.hashCode();
    }

    public String toString() {
        return this.x;
    }

    public static f a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("The key type to parse must not be null");
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
            return new f(str, (r) null);
        }
    }
}
