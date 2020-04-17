package i.a.b;

import i.a.b.m.l;
import i.a.b.m.n;
import i.a.b.n.e;
import java.util.Iterator;

public class i {
    public static g a = g.f1405h;
    public static final l b = new l();

    /* renamed from: c  reason: collision with root package name */
    public static final e f1411c = new e();

    public static void a(String str, Appendable appendable, g gVar) {
        if (str != null) {
            gVar.f1410g.a(str, appendable);
        }
    }

    public static void a(Object obj, Appendable appendable, g gVar) {
        if (obj == null) {
            appendable.append("null");
            return;
        }
        Class<?> cls = obj.getClass();
        n nVar = b.a.get(cls);
        if (nVar == null) {
            if (cls.isArray()) {
                nVar = l.f1433k;
            } else {
                l lVar = b;
                Class<?> cls2 = obj.getClass();
                Iterator it = lVar.b.iterator();
                while (true) {
                    if (it.hasNext()) {
                        l.i iVar = (l.i) it.next();
                        if (iVar.a.isAssignableFrom(cls2)) {
                            nVar = iVar.b;
                            break;
                        }
                    } else {
                        nVar = null;
                        break;
                    }
                }
                if (nVar == null) {
                    nVar = l.f1432j;
                }
            }
            b.a(nVar, cls);
        }
        nVar.a(obj, appendable, gVar);
    }

    public static String a(String str) {
        g gVar = a;
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        gVar.f1410g.a(str, sb);
        return sb.toString();
    }
}
