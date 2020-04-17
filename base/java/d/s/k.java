package d.s;

import android.os.Bundle;
import d.s.p;
import e.a.a.a.a;

@p.b("navigation")
public class k extends p<j> {
    public final q a;

    public k(q qVar) {
        this.a = qVar;
    }

    public i a(i iVar, Bundle bundle, n nVar, p.a aVar) {
        String str;
        j jVar = (j) iVar;
        int i2 = jVar.G;
        if (i2 == 0) {
            StringBuilder a2 = a.a("no start destination defined via app:startDestination for ");
            int i3 = jVar.z;
            if (i3 != 0) {
                if (jVar.A == null) {
                    jVar.A = Integer.toString(i3);
                }
                str = jVar.A;
            } else {
                str = "the root navigation";
            }
            a2.append(str);
            throw new IllegalStateException(a2.toString());
        }
        i a3 = jVar.a(i2, false);
        if (a3 != null) {
            return this.a.a(a3.x).a(a3, a3.a(bundle), nVar, aVar);
        }
        if (jVar.H == null) {
            jVar.H = Integer.toString(jVar.G);
        }
        throw new IllegalArgumentException(a.a("navigation destination ", jVar.H, " is not a direct child of this NavGraph"));
    }

    public boolean c() {
        return true;
    }

    public i a() {
        return new j(this);
    }
}
