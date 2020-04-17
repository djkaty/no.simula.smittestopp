package e.b.a.a.q;

import e.b.a.a.e;
import e.b.a.a.f;
import e.b.a.a.n;
import e.b.a.a.o.a;
import e.b.a.a.p.b;
import e.b.a.a.s.d;

public abstract class c extends a {
    public static final int[] F = e.b.a.a.p.a.f1053h;
    public final b A;
    public int[] B = F;
    public int C;
    public n D = d.x;
    public boolean E;

    public c(b bVar, int i2) {
        super(i2);
        this.A = bVar;
        if (f.a.ESCAPE_NON_ASCII.enabledIn(i2)) {
            this.C = 127;
        }
        this.E = !f.a.QUOTE_FIELD_NAMES.enabledIn(i2);
    }

    public void c(String str) {
        throw new e(String.format("Can not %s, expecting field name (context: %s)", new Object[]{str, this.z.e()}), this);
    }
}
