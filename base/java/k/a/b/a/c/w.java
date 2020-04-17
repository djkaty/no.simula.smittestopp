package k.a.b.a.c;

import e.a.a.a.a;

public class w implements q0 {
    public final s a;
    public final q0 b;

    public w(s sVar, q0 q0Var) {
        this.a = sVar;
        this.b = q0Var;
    }

    public Class a() {
        return this.a.a();
    }

    public boolean e() {
        return false;
    }

    public Object k() {
        try {
            return this.a.b(this.b.k());
        } catch (NullPointerException e2) {
            StringBuilder a2 = a.a("Unexpected null value - mandatory field not set? (");
            a2.append(e2.getMessage());
            a2.append(")");
            throw new q(a2.toString(), e2);
        } catch (ClassCastException e3) {
            throw new q("Incorrect type used", e3);
        }
    }
}
