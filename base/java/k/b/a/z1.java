package k.b.a;

import java.io.IOException;
import java.util.Enumeration;

public class z1 implements Enumeration {
    public k a;
    public Object b = a();

    public z1(byte[] bArr) {
        this.a = new k(bArr, true);
    }

    public final Object a() {
        try {
            return this.a.readObject();
        } catch (IOException e2) {
            throw new s("malformed DER construction: " + e2, e2);
        }
    }

    public boolean hasMoreElements() {
        return this.b != null;
    }

    public Object nextElement() {
        Object obj = this.b;
        this.b = a();
        return obj;
    }
}
