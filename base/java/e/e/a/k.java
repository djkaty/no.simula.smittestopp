package e.e.a;

import e.e.a.v.c;
import java.text.ParseException;

public class k extends g {
    public c A;
    public c B;
    public c C;
    public c D;
    public a E;
    public j z;

    public enum a {
        UNENCRYPTED,
        ENCRYPTED,
        DECRYPTED
    }

    public k(c cVar, c cVar2, c cVar3, c cVar4, c cVar5) {
        if (cVar != null) {
            try {
                this.z = j.a(cVar);
                if (cVar2 == null || cVar2.x.isEmpty()) {
                    this.A = null;
                } else {
                    this.A = cVar2;
                }
                if (cVar3 == null || cVar3.x.isEmpty()) {
                    this.B = null;
                } else {
                    this.B = cVar3;
                }
                if (cVar4 != null) {
                    this.C = cVar4;
                    if (cVar5 == null || cVar5.x.isEmpty()) {
                        this.D = null;
                    } else {
                        this.D = cVar5;
                    }
                    this.E = a.ENCRYPTED;
                    this.y = new c[]{cVar, cVar2, cVar3, cVar4, cVar5};
                    return;
                }
                throw new IllegalArgumentException("The fourth part must not be null");
            } catch (ParseException e2) {
                StringBuilder a2 = e.a.a.a.a.a("Invalid JWE header: ");
                a2.append(e2.getMessage());
                throw new ParseException(a2.toString(), 0);
            }
        } else {
            throw new IllegalArgumentException("The first part must not be null");
        }
    }
}
