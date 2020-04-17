package k.b.a.l2;

import e.a.a.a.a;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import k.b.a.e;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.n;
import k.b.a.o;
import k.b.a.t;
import k.b.a.u;

public class k extends n {
    public Hashtable x = new Hashtable();
    public Vector y = new Vector();

    public k(u uVar) {
        Enumeration j2 = uVar.j();
        while (j2.hasMoreElements()) {
            j a = j.a(j2.nextElement());
            if (!this.x.containsKey(a.x)) {
                this.x.put(a.x, a);
                this.y.addElement(a.x);
            } else {
                StringBuilder a2 = a.a("repeated extension found: ");
                a2.append(a.x);
                throw new IllegalArgumentException(a2.toString());
            }
        }
    }

    public static k a(Object obj) {
        if (obj instanceof k) {
            return (k) obj;
        }
        if (obj != null) {
            return new k(u.a(obj));
        }
        return null;
    }

    public t c() {
        f fVar = new f(this.y.size());
        Enumeration elements = this.y.elements();
        while (elements.hasMoreElements()) {
            fVar.a((e) (j) this.x.get((o) elements.nextElement()));
        }
        return new e1(fVar);
    }
}
