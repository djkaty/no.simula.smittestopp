package e.e.a;

import e.e.a.v.c;
import i.a.b.d;
import java.io.Serializable;
import java.text.ParseException;

public final class p implements Serializable {
    public final c A;
    public final n B;
    public final d x;
    public final String y;
    public final byte[] z;

    public enum a {
        JSON,
        STRING,
        BYTE_ARRAY,
        BASE64URL,
        JWS_OBJECT,
        SIGNED_JWT
    }

    public p(d dVar) {
        if (dVar != null) {
            this.x = dVar;
            this.y = null;
            this.z = null;
            this.A = null;
            this.B = null;
            a aVar = a.JSON;
            return;
        }
        throw new IllegalArgumentException("The JSON object must not be null");
    }

    public c a() {
        c cVar = this.A;
        if (cVar != null) {
            return cVar;
        }
        byte[] bArr = this.z;
        if (bArr == null) {
            if (cVar != null) {
                bArr = cVar.b();
            } else {
                String pVar = toString();
                bArr = pVar != null ? pVar.getBytes(e.e.a.v.d.a) : null;
            }
        }
        return c.a(bArr);
    }

    public d b() {
        d dVar = this.x;
        if (dVar != null) {
            return dVar;
        }
        String pVar = toString();
        if (pVar == null) {
            return null;
        }
        try {
            return e.c.a.a.b.l.c.b(pVar);
        } catch (ParseException unused) {
            return null;
        }
    }

    public String toString() {
        String str = this.y;
        if (str != null) {
            return str;
        }
        n nVar = this.B;
        if (nVar == null) {
            d dVar = this.x;
            if (dVar != null) {
                return dVar.toString();
            }
            byte[] bArr = this.z;
            if (bArr == null) {
                c cVar = this.A;
                if (cVar != null) {
                    return cVar.e();
                }
                return null;
            } else if (bArr != null) {
                return new String(bArr, e.e.a.v.d.a);
            } else {
                return null;
            }
        } else if (nVar.a() != null) {
            return this.B.a();
        } else {
            return this.B.b();
        }
    }

    public p(c cVar) {
        if (cVar != null) {
            this.x = null;
            this.y = null;
            this.z = null;
            this.A = cVar;
            this.B = null;
            a aVar = a.BASE64URL;
            return;
        }
        throw new IllegalArgumentException("The Base64URL-encoded object must not be null");
    }
}
