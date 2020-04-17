package i.a.b.l;

import i.a.b.i;
import i.a.b.n.e;
import i.a.b.n.f;
import java.io.IOException;

public class a {
    public int a;
    public d b;

    static {
        String property = System.getProperty("JSON_SMART_SIMPLE");
    }

    public a(int i2) {
        this.a = i2;
    }

    public Object a(String str) {
        if (this.b == null) {
            this.b = new d(this.a);
        }
        d dVar = this.b;
        if (dVar != null) {
            f fVar = i.f1411c.b;
            e eVar = fVar.a;
            dVar.x = str;
            dVar.w = str.length();
            dVar.f1418f = -1;
            try {
                dVar.c();
                Object b2 = dVar.b(fVar);
                if (dVar.f1424l) {
                    if (!dVar.m) {
                        dVar.g();
                    }
                    if (dVar.a != 26) {
                        throw new e(dVar.f1418f - 1, 1, Character.valueOf(dVar.a));
                    }
                }
                dVar.f1417e = null;
                dVar.f1416d = null;
                return b2;
            } catch (IOException e2) {
                throw new e(dVar.f1418f, e2);
            }
        } else {
            throw null;
        }
    }
}
