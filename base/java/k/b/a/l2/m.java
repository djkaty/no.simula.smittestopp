package k.b.a.l2;

import k.b.a.b0;
import k.b.a.e;
import k.b.a.e1;
import k.b.a.n;
import k.b.a.t;
import k.b.a.u;
import k.b.j.f;

public class m extends n {
    public final l[] x;

    public m(u uVar) {
        this.x = new l[uVar.size()];
        for (int i2 = 0; i2 != uVar.size(); i2++) {
            this.x[i2] = l.a(uVar.a(i2));
        }
    }

    public static m a(Object obj) {
        if (obj instanceof m) {
            return (m) obj;
        }
        if (obj != null) {
            return new m(u.a(obj));
        }
        return null;
    }

    public static m a(b0 b0Var, boolean z) {
        return new m(u.a(b0Var, z));
    }

    public t c() {
        return new e1((e[]) this.x);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String str = f.a;
        stringBuffer.append("GeneralNames:");
        stringBuffer.append(str);
        for (int i2 = 0; i2 != this.x.length; i2++) {
            stringBuffer.append("    ");
            stringBuffer.append(this.x[i2]);
            stringBuffer.append(str);
        }
        return stringBuffer.toString();
    }
}
