package com.google.gson;

import e.c.c.j;
import e.c.c.k;
import e.c.c.y.a;
import e.c.c.y.b;
import e.c.c.y.c;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;

public abstract class TypeAdapter<T> {
    public final T fromJson(Reader reader) {
        return read(new a(reader));
    }

    public final T fromJsonTree(j jVar) {
        try {
            return read(new e.c.c.w.z.a(jVar));
        } catch (IOException e2) {
            throw new k((Throwable) e2);
        }
    }

    public final TypeAdapter<T> nullSafe() {
        return new TypeAdapter<T>() {
            public T read(a aVar) {
                if (aVar.r() != b.NULL) {
                    return TypeAdapter.this.read(aVar);
                }
                aVar.o();
                return null;
            }

            public void write(c cVar, T t) {
                if (t == null) {
                    cVar.g();
                } else {
                    TypeAdapter.this.write(cVar, t);
                }
            }
        };
    }

    public abstract T read(a aVar);

    public final void toJson(Writer writer, T t) {
        write(new c(writer), t);
    }

    public final j toJsonTree(T t) {
        try {
            e.c.c.w.z.b bVar = new e.c.c.w.z.b();
            write(bVar, t);
            return bVar.j();
        } catch (IOException e2) {
            throw new k((Throwable) e2);
        }
    }

    public abstract void write(c cVar, T t);

    public final T fromJson(String str) {
        return fromJson((Reader) new StringReader(str));
    }

    public final String toJson(T t) {
        StringWriter stringWriter = new StringWriter();
        try {
            toJson(stringWriter, t);
            return stringWriter.toString();
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }
}
