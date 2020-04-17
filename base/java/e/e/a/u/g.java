package e.e.a.u;

import java.io.Serializable;
import java.text.ParseException;
import java.util.Objects;

public final class g implements Serializable {
    public static final g y = new g("sig");
    public static final g z = new g("enc");
    public final String x;

    public g(String str) {
        if (str != null) {
            this.x = str;
            return;
        }
        throw new IllegalArgumentException("The key use identifier must not be null");
    }

    public static g a(String str) {
        if (str == null) {
            return null;
        }
        if (str.equals(y.x)) {
            return y;
        }
        if (str.equals(z.x)) {
            return z;
        }
        if (!str.trim().isEmpty()) {
            return new g(str);
        }
        throw new ParseException("JWK use value must not be empty or blank", 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        return Objects.equals(this.x, ((g) obj).x);
    }

    public int hashCode() {
        return Objects.hash(new Object[]{this.x});
    }

    public String toString() {
        return this.x;
    }
}
