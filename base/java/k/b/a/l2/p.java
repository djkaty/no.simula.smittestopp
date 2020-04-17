package k.b.a.l2;

import k.b.a.b0;
import k.b.a.c;
import k.b.a.n;
import k.b.a.r0;
import k.b.a.t;
import k.b.a.u;
import k.b.j.f;

public class p extends n {
    public r A;
    public boolean B;
    public boolean C;
    public u D;
    public i x;
    public boolean y;
    public boolean z;

    public p(u uVar) {
        this.D = uVar;
        for (int i2 = 0; i2 != uVar.size(); i2++) {
            b0 a = b0.a((Object) uVar.a(i2));
            int i3 = a.x;
            if (i3 == 0) {
                b0 a2 = b0.a((Object) a.j());
                this.x = (a2 == null || (a2 instanceof i)) ? (i) a2 : new i(a2);
            } else if (i3 == 1) {
                this.y = c.a(a, false).j();
            } else if (i3 == 2) {
                this.z = c.a(a, false).j();
            } else if (i3 == 3) {
                this.A = new r(r0.a(a, false));
            } else if (i3 == 4) {
                this.B = c.a(a, false).j();
            } else if (i3 == 5) {
                this.C = c.a(a, false).j();
            } else {
                throw new IllegalArgumentException("unknown tag in IssuingDistributionPoint");
            }
        }
    }

    public final String a(boolean z2) {
        return z2 ? "true" : "false";
    }

    public final void a(StringBuffer stringBuffer, String str, String str2, String str3) {
        stringBuffer.append("    ");
        stringBuffer.append(str2);
        stringBuffer.append(":");
        stringBuffer.append(str);
        stringBuffer.append("    ");
        stringBuffer.append("    ");
        stringBuffer.append(str3);
        stringBuffer.append(str);
    }

    public t c() {
        return this.D;
    }

    public String toString() {
        String str = f.a;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("IssuingDistributionPoint: [");
        stringBuffer.append(str);
        i iVar = this.x;
        if (iVar != null) {
            a(stringBuffer, str, "distributionPoint", iVar.toString());
        }
        boolean z2 = this.y;
        if (z2) {
            a(stringBuffer, str, "onlyContainsUserCerts", a(z2));
        }
        boolean z3 = this.z;
        if (z3) {
            a(stringBuffer, str, "onlyContainsCACerts", a(z3));
        }
        r rVar = this.A;
        if (rVar != null) {
            a(stringBuffer, str, "onlySomeReasons", rVar.d());
        }
        boolean z4 = this.C;
        if (z4) {
            a(stringBuffer, str, "onlyContainsAttributeCerts", a(z4));
        }
        boolean z5 = this.B;
        if (z5) {
            a(stringBuffer, str, "indirectCRL", a(z5));
        }
        stringBuffer.append("]");
        stringBuffer.append(str);
        return stringBuffer.toString();
    }
}
