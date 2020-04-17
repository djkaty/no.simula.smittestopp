package k.b.b;

import e.a.a.a.a;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import k.b.a.k2.c;
import k.b.a.l2.g;
import k.b.a.l2.j;
import k.b.a.l2.k;
import k.b.a.l2.p;
import k.b.a.t;
import k.b.a.u;

public class d implements Serializable {
    public transient g x;
    public transient k y;

    public d(byte[] bArr) {
        try {
            t readObject = new k.b.a.k((InputStream) new ByteArrayInputStream(bArr), true).readObject();
            if (readObject != null) {
                g gVar = readObject instanceof g ? (g) readObject : new g(u.a((Object) readObject));
                this.x = gVar;
                k kVar = gVar.x.D;
                this.y = kVar;
                if (kVar != null) {
                    j jVar = (j) kVar.x.get(j.A);
                    if (jVar != null) {
                        try {
                            t a = t.a(jVar.z.j());
                            boolean z = (a instanceof p ? (p) a : a != null ? new p(u.a((Object) a)) : null).B;
                        } catch (IOException e2) {
                            throw new IllegalArgumentException("can't convert extension: " + e2);
                        }
                    }
                }
                c cVar = gVar.x.z;
                return;
            }
            throw new IOException("no content found");
        } catch (ClassCastException e3) {
            StringBuilder a2 = a.a("malformed data: ");
            a2.append(e3.getMessage());
            throw new a(a2.toString(), e3);
        } catch (IllegalArgumentException e4) {
            StringBuilder a3 = a.a("malformed data: ");
            a3.append(e4.getMessage());
            throw new a(a3.toString(), e4);
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        return this.x.equals(((d) obj).x);
    }

    public int hashCode() {
        return this.x.hashCode();
    }
}
