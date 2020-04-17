package k.b.a.k2;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import java.util.Enumeration;
import java.util.Hashtable;
import k.b.a.b0;
import k.b.a.d;
import k.b.a.e;
import k.b.a.e1;
import k.b.a.k2.d.a;
import k.b.a.k2.d.b;
import k.b.a.n;
import k.b.a.t;
import k.b.a.u;
import k.b.a.x;

public class c extends n implements d {
    public static a C = b.L;
    public b[] A;
    public e1 B;
    public boolean x;
    public int y;
    public a z = C;

    public c(u uVar) {
        e1 e1Var;
        this.A = new b[uVar.size()];
        Enumeration j2 = uVar.j();
        boolean z2 = true;
        int i2 = 0;
        while (j2.hasMoreElements()) {
            Object nextElement = j2.nextElement();
            b bVar = nextElement instanceof b ? (b) nextElement : nextElement != null ? new b(x.a(nextElement)) : null;
            z2 &= bVar == nextElement;
            this.A[i2] = bVar;
            i2++;
        }
        if (z2) {
            e1Var = (e1) uVar.h();
        } else {
            e1Var = new e1((e[]) this.A);
        }
        this.B = e1Var;
    }

    public static c a(Object obj) {
        if (obj instanceof c) {
            return (c) obj;
        }
        if (obj != null) {
            return new c(u.a(obj));
        }
        return null;
    }

    public static c a(b0 b0Var) {
        return a((Object) u.a(b0Var, true));
    }

    public t c() {
        return this.B;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c) && !(obj instanceof u)) {
            return false;
        }
        if (this.B.b(((e) obj).c())) {
            return true;
        }
        try {
            return this.z.a(this, new c(u.a((Object) ((e) obj).c())));
        } catch (Exception unused) {
            return false;
        }
    }

    public b[] f() {
        return (b[]) this.A.clone();
    }

    public int hashCode() {
        if (this.x) {
            return this.y;
        }
        this.x = true;
        if (this.z != null) {
            b[] f2 = f();
            int i2 = 0;
            for (int i3 = 0; i3 != f2.length; i3++) {
                if (f2[i3].x.x.length > 1) {
                    a[] g2 = f2[i3].g();
                    for (int i4 = 0; i4 != g2.length; i4++) {
                        i2 = (i2 ^ g2[i4].x.hashCode()) ^ e.c.a.a.b.l.c.a(g2[i4].y).hashCode();
                    }
                } else {
                    i2 = (i2 ^ f2[i3].f().x.hashCode()) ^ e.c.a.a.b.l.c.a(f2[i3].f().y).hashCode();
                }
            }
            this.y = i2;
            return i2;
        }
        throw null;
    }

    public String toString() {
        b bVar = (b) this.z;
        if (bVar != null) {
            StringBuffer stringBuffer = new StringBuffer();
            b[] f2 = f();
            boolean z2 = true;
            for (b bVar2 : f2) {
                if (z2) {
                    z2 = false;
                } else {
                    stringBuffer.append(WWWAuthenticateHeader.COMMA);
                }
                Hashtable hashtable = bVar.a;
                if (bVar2.x.x.length > 1) {
                    a[] g2 = bVar2.g();
                    boolean z3 = true;
                    for (int i2 = 0; i2 != g2.length; i2++) {
                        if (z3) {
                            z3 = false;
                        } else {
                            stringBuffer.append('+');
                        }
                        e.c.a.a.b.l.c.a(stringBuffer, g2[i2], hashtable);
                    }
                } else if (bVar2.f() != null) {
                    e.c.a.a.b.l.c.a(stringBuffer, bVar2.f(), hashtable);
                }
            }
            return stringBuffer.toString();
        }
        throw null;
    }
}
