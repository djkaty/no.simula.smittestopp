package j.b.a;

import e.a.a.a.a;
import h.k.b.g;

public final class p {
    public final o a;
    public final o b;

    public p(o oVar, o oVar2) {
        if (oVar == null) {
            g.a("gps");
            throw null;
        } else if (oVar2 != null) {
            this.a = oVar;
            this.b = oVar2;
        } else {
            g.a("bluetooth");
            throw null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return g.a((Object) this.a, (Object) pVar.a) && g.a((Object) this.b, (Object) pVar.b);
    }

    public int hashCode() {
        o oVar = this.a;
        int i2 = 0;
        int hashCode = (oVar != null ? oVar.hashCode() : 0) * 31;
        o oVar2 = this.b;
        if (oVar2 != null) {
            i2 = oVar2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        StringBuilder a2 = a.a("JsonChunks(gps=");
        a2.append(this.a);
        a2.append(", bluetooth=");
        a2.append(this.b);
        a2.append(")");
        return a2.toString();
    }
}
