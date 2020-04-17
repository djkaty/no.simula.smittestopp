package h.k.b;

import h.m.a;
import h.m.e;

public abstract class j extends b implements e {
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j) {
            j jVar = (j) obj;
            i iVar = (i) this;
            i iVar2 = (i) jVar;
            if (!iVar.A.equals(iVar2.A) || !iVar.B.equals(iVar2.B) || !iVar.C.equals(iVar2.C) || !g.a(this.y, jVar.y)) {
                return false;
            }
            return true;
        } else if (obj instanceof e) {
            return obj.equals(a());
        } else {
            return false;
        }
    }

    public int hashCode() {
        i iVar = (i) this;
        int hashCode = iVar.B.hashCode();
        return iVar.C.hashCode() + ((hashCode + (iVar.A.hashCode() * 31)) * 31);
    }

    public String toString() {
        a a = a();
        if (a != this) {
            return a.toString();
        }
        return e.a.a.a.a.a(e.a.a.a.a.a("property "), ((i) this).B, " (Kotlin reflection is not available)");
    }
}
