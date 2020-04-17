package k.b.a;

import java.io.ByteArrayOutputStream;
import java.io.OutputStream;

public abstract class n implements e {
    public void a(OutputStream outputStream) {
        c().a(new r(outputStream), true);
    }

    public void a(OutputStream outputStream, String str) {
        r.a(outputStream, str).a((e) this);
    }

    public byte[] a(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        a(byteArrayOutputStream, str);
        return byteArrayOutputStream.toByteArray();
    }

    public abstract t c();

    public byte[] e() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        a((OutputStream) byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        return c().b(((e) obj).c());
    }

    public int hashCode() {
        return c().hashCode();
    }
}
