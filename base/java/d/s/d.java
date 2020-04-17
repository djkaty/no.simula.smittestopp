package d.s;

import e.a.a.a.a;

public final class d {
    public final o a;
    public final boolean b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f730c;

    /* renamed from: d  reason: collision with root package name */
    public final Object f731d;

    public d(o<?> oVar, boolean z, Object obj, boolean z2) {
        if (!oVar.a && z) {
            throw new IllegalArgumentException(oVar.a() + " does not allow nullable values");
        } else if (z || !z2 || obj != null) {
            this.a = oVar;
            this.b = z;
            this.f731d = obj;
            this.f730c = z2;
        } else {
            StringBuilder a2 = a.a("Argument with type ");
            a2.append(oVar.a());
            a2.append(" has null value but is not nullable.");
            throw new IllegalArgumentException(a2.toString());
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (this.b != dVar.b || this.f730c != dVar.f730c || !this.a.equals(dVar.a)) {
            return false;
        }
        Object obj2 = this.f731d;
        Object obj3 = dVar.f731d;
        if (obj2 != null) {
            return obj2.equals(obj3);
        }
        if (obj3 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((((this.a.hashCode() * 31) + (this.b ? 1 : 0)) * 31) + (this.f730c ? 1 : 0)) * 31;
        Object obj = this.f731d;
        return hashCode + (obj != null ? obj.hashCode() : 0);
    }
}
