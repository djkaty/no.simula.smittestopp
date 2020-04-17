package e.c.c;

import com.google.gson.internal.bind.TypeAdapters;
import e.c.c.y.c;
import java.io.IOException;
import java.io.StringWriter;

public abstract class j {
    public int a() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public g b() {
        if (this instanceof g) {
            return (g) this;
        }
        throw new IllegalStateException("Not a JSON Array: " + this);
    }

    public m c() {
        if (this instanceof m) {
            return (m) this;
        }
        throw new IllegalStateException("Not a JSON Object: " + this);
    }

    public p d() {
        if (this instanceof p) {
            return (p) this;
        }
        throw new IllegalStateException("Not a JSON Primitive: " + this);
    }

    public long e() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String f() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            c cVar = new c(stringWriter);
            cVar.C = true;
            TypeAdapters.X.write(cVar, this);
            return stringWriter.toString();
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }
}
