package k.b.a;

import java.io.IOException;
import java.io.OutputStream;

public abstract class t extends n {
    public static t a(byte[] bArr) {
        k kVar = new k(bArr);
        try {
            t readObject = kVar.readObject();
            if (kVar.available() == 0) {
                return readObject;
            }
            throw new IOException("Extra data detected in stream");
        } catch (ClassCastException unused) {
            throw new IOException("cannot recognise object in stream");
        }
    }

    public void a(OutputStream outputStream) {
        a(new r(outputStream), true);
    }

    public abstract void a(r rVar, boolean z);

    public abstract boolean a(t tVar);

    public final boolean b(t tVar) {
        return this == tVar || a(tVar);
    }

    public final t c() {
        return this;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e) && a(((e) obj).c());
    }

    public abstract int f();

    public abstract boolean g();

    public t h() {
        return this;
    }

    public t i() {
        return this;
    }

    public void a(OutputStream outputStream, String str) {
        r.a(outputStream, str).a(this, true);
    }
}
