package e.c.a.a.b.i.k;

import d.b.a.r;
import e.c.a.a.b.i.a;
import e.c.a.a.b.i.a.d;
import java.util.Arrays;

public final class h0<O extends a.d> {
    public final boolean a = false;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final a<O> f1156c;

    /* renamed from: d  reason: collision with root package name */
    public final O f1157d;

    public h0(a<O> aVar, O o) {
        this.f1156c = aVar;
        this.f1157d = o;
        this.b = Arrays.hashCode(new Object[]{aVar, o});
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h0)) {
            return false;
        }
        h0 h0Var = (h0) obj;
        return !this.a && !h0Var.a && r.c((Object) this.f1156c, (Object) h0Var.f1156c) && r.c((Object) this.f1157d, (Object) h0Var.f1157d);
    }

    public final int hashCode() {
        return this.b;
    }
}
