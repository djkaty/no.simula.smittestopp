package e.e.a;

import e.a.a.a.a;
import i.a.b.b;
import i.a.b.d;
import java.io.Serializable;

public final class c implements b, Serializable {
    public final String x;

    static {
        new c("DEF");
    }

    public c(String str) {
        if (str != null) {
            this.x = str;
            return;
        }
        throw new IllegalArgumentException("The compression algorithm name must not be null");
    }

    public String a() {
        StringBuilder a = a.a("\"");
        a.append(d.c(this.x));
        a.append('\"');
        return a.toString();
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof c) && this.x.equals(obj.toString());
    }

    public int hashCode() {
        return this.x.hashCode();
    }

    public String toString() {
        return this.x;
    }
}
