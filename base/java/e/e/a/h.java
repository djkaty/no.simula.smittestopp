package e.e.a;

import e.a.a.a.a;
import i.a.b.b;
import i.a.b.d;
import java.io.Serializable;

public final class h implements b, Serializable {
    public static final h y = new h("JWT");
    public final String x;

    static {
        new h("JOSE");
        new h("JOSE+JSON");
    }

    public h(String str) {
        if (str != null) {
            this.x = str;
            return;
        }
        throw new IllegalArgumentException("The object type must not be null");
    }

    public String a() {
        StringBuilder a = a.a("\"");
        a.append(d.c(this.x));
        a.append('\"');
        return a.toString();
    }

    public boolean equals(Object obj) {
        return (obj instanceof h) && this.x.toLowerCase().equals(((h) obj).x.toLowerCase());
    }

    public int hashCode() {
        return this.x.toLowerCase().hashCode();
    }

    public String toString() {
        return this.x;
    }
}
