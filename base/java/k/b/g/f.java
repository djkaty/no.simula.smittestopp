package k.b.g;

import e.a.a.a.a;
import java.util.Enumeration;
import k.b.a.b0;
import k.b.a.e;
import k.b.a.i1;
import k.b.a.k;
import k.b.a.t;
import k.b.a.u;
import k.b.b.b;

public class f {
    public f(byte[] bArr) {
        k kVar = new k(bArr);
        try {
            t a = b.a(kVar.readObject().e());
            k.b.a.l2.k kVar2 = (a instanceof k.b.a.l2.f ? (k.b.a.l2.f) a : a != null ? new k.b.a.l2.f(u.a((Object) a)) : null).y.z;
            t readObject = kVar.readObject();
            if (readObject != null) {
                Enumeration j2 = u.a((Object) readObject.e()).j();
                while (j2.hasMoreElements()) {
                    Object obj = (e) j2.nextElement();
                    if (obj instanceof u) {
                        u.a(obj);
                    } else if (obj instanceof b0) {
                        u.a((b0) obj, false);
                    } else if (!(obj instanceof i1)) {
                        continue;
                    } else {
                        if (obj != null && !(obj instanceof i1)) {
                            if (obj instanceof byte[]) {
                                try {
                                    obj = t.a((byte[]) obj);
                                } catch (Exception e2) {
                                    throw new IllegalArgumentException(a.a(e2, a.a("encoding error in getInstance: ")));
                                }
                            } else {
                                StringBuilder a2 = a.a("illegal object in getInstance: ");
                                a2.append(obj.getClass().getName());
                                throw new IllegalArgumentException(a2.toString());
                            }
                        }
                        ((i1) obj).d();
                    }
                }
            }
        } catch (ClassCastException e3) {
            StringBuilder a3 = a.a("malformed data: ");
            a3.append(e3.getMessage());
            throw new k.b.b.a(a3.toString(), e3);
        } catch (IllegalArgumentException e4) {
            StringBuilder a4 = a.a("malformed data: ");
            a4.append(e4.getMessage());
            throw new k.b.b.a(a4.toString(), e4);
        }
    }
}
