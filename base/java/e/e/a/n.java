package e.e.a;

import e.e.a.v.c;
import e.e.a.v.d;
import java.text.ParseException;

public class n extends g {
    public final String A;
    public c B;
    public a C;
    public final m z;

    public enum a {
        UNSIGNED,
        SIGNED,
        VERIFIED
    }

    public n(m mVar, p pVar) {
        if (mVar != null) {
            this.z = mVar;
            if (pVar != null) {
                this.x = pVar;
                if (mVar.B.get("b64") == null || ((Boolean) mVar.B.get("b64")).booleanValue()) {
                    this.A = a(mVar.a(), pVar.a());
                } else {
                    this.A = mVar.a().x + '.' + pVar.toString();
                }
                this.B = null;
                this.C = a.UNSIGNED;
                return;
            }
            throw new IllegalArgumentException("The payload must not be null");
        }
        throw new IllegalArgumentException("The JWS header must not be null");
    }

    public static String a(c cVar, c cVar2) {
        return cVar.x + '.' + cVar2.x;
    }

    public synchronized void b(o oVar) {
        try {
            if (this.C == a.UNSIGNED) {
                a(oVar);
                this.B = ((e.e.a.s.a) oVar).a(this.z, this.A.getBytes(d.a));
                this.C = a.SIGNED;
            } else {
                throw new IllegalStateException("The JWS object must be in an unsigned state");
            }
        } catch (f e2) {
            throw e2;
        } catch (Exception e3) {
            throw new f(e3.getMessage(), e3);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void a(o oVar) {
        e.e.a.s.b.a aVar = (e.e.a.s.b.a) oVar;
        if (!aVar.a.contains((l) this.z.x)) {
            StringBuilder a2 = e.a.a.a.a.a("The \"");
            a2.append((l) this.z.x);
            a2.append("\" algorithm is not allowed or supported by the JWS signer: Supported algorithms: ");
            a2.append(aVar.a);
            throw new f(a2.toString());
        }
    }

    public String b() {
        a aVar = this.C;
        if (aVar == a.SIGNED || aVar == a.VERIFIED) {
            return this.A + '.' + this.B.x;
        }
        throw new IllegalStateException("The JWS object must be in a signed or verified state");
    }

    public n(c cVar, c cVar2, c cVar3) {
        if (cVar != null) {
            try {
                this.z = m.a(cVar);
                if (cVar2 != null) {
                    this.x = new p(cVar2);
                    this.A = a(cVar, cVar2);
                    if (cVar3 != null) {
                        this.B = cVar3;
                        this.C = a.SIGNED;
                        this.y = new c[]{cVar, cVar2, cVar3};
                        return;
                    }
                    throw new IllegalArgumentException("The third part must not be null");
                }
                throw new IllegalArgumentException("The second part must not be null");
            } catch (ParseException e2) {
                StringBuilder a2 = e.a.a.a.a.a("Invalid JWS header: ");
                a2.append(e2.getMessage());
                throw new ParseException(a2.toString(), 0);
            }
        } else {
            throw new IllegalArgumentException("The first part must not be null");
        }
    }
}
