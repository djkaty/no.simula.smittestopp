package k.b.a.k2.d;

import e.c.a.a.b.l.c;
import java.util.Enumeration;
import java.util.Hashtable;
import k.b.a.k2.b;

public abstract class a {
    public static Hashtable a(Hashtable hashtable) {
        Hashtable hashtable2 = new Hashtable();
        Enumeration keys = hashtable.keys();
        while (keys.hasMoreElements()) {
            Object nextElement = keys.nextElement();
            hashtable2.put(nextElement, hashtable.get(nextElement));
        }
        return hashtable2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:35:0x0070 A[LOOP:0: B:10:0x0037->B:35:0x0070, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x006f A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(k.b.a.k2.c r9, k.b.a.k2.c r10) {
        /*
            r8 = this;
            k.b.a.k2.b[] r9 = r9.f()
            k.b.a.k2.b[] r10 = r10.f()
            int r0 = r9.length
            int r1 = r10.length
            r2 = 0
            if (r0 == r1) goto L_0x000e
            return r2
        L_0x000e:
            r0 = r9[r2]
            k.b.a.k2.a r0 = r0.f()
            r1 = 1
            if (r0 == 0) goto L_0x0035
            r0 = r10[r2]
            k.b.a.k2.a r0 = r0.f()
            if (r0 == 0) goto L_0x0035
            r0 = r9[r2]
            k.b.a.k2.a r0 = r0.f()
            k.b.a.o r0 = r0.x
            r3 = r10[r2]
            k.b.a.k2.a r3 = r3.f()
            k.b.a.o r3 = r3.x
            boolean r0 = r0.b(r3)
            r0 = r0 ^ r1
            goto L_0x0036
        L_0x0035:
            r0 = 0
        L_0x0036:
            r3 = 0
        L_0x0037:
            int r4 = r9.length
            if (r3 == r4) goto L_0x0073
            r4 = r9[r3]
            r5 = 0
            if (r0 == 0) goto L_0x0055
            int r6 = r10.length
            int r6 = r6 - r1
        L_0x0041:
            if (r6 < 0) goto L_0x006c
            r7 = r10[r6]
            if (r7 == 0) goto L_0x0052
            r7 = r10[r6]
            boolean r7 = r8.a((k.b.a.k2.b) r4, (k.b.a.k2.b) r7)
            if (r7 == 0) goto L_0x0052
            r10[r6] = r5
            goto L_0x0067
        L_0x0052:
            int r6 = r6 + -1
            goto L_0x0041
        L_0x0055:
            r6 = 0
        L_0x0056:
            int r7 = r10.length
            if (r6 == r7) goto L_0x006c
            r7 = r10[r6]
            if (r7 == 0) goto L_0x0069
            r7 = r10[r6]
            boolean r7 = r8.a((k.b.a.k2.b) r4, (k.b.a.k2.b) r7)
            if (r7 == 0) goto L_0x0069
            r10[r6] = r5
        L_0x0067:
            r4 = 1
            goto L_0x006d
        L_0x0069:
            int r6 = r6 + 1
            goto L_0x0056
        L_0x006c:
            r4 = 0
        L_0x006d:
            if (r4 != 0) goto L_0x0070
            return r2
        L_0x0070:
            int r3 = r3 + 1
            goto L_0x0037
        L_0x0073:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: k.b.a.k2.d.a.a(k.b.a.k2.c, k.b.a.k2.c):boolean");
    }

    public boolean a(b bVar, b bVar2) {
        if (bVar.x.x.length == bVar2.x.x.length) {
            k.b.a.k2.a[] g2 = bVar.g();
            k.b.a.k2.a[] g3 = bVar2.g();
            if (g2.length == g3.length) {
                int i2 = 0;
                while (i2 != g2.length) {
                    k.b.a.k2.a aVar = g2[i2];
                    k.b.a.k2.a aVar2 = g3[i2];
                    if (aVar == aVar2 || (aVar != null && aVar2 != null && aVar.x.b(aVar2.x) && c.a(aVar.y).equals(c.a(aVar2.y)))) {
                        i2++;
                    }
                }
                return true;
            }
        }
        return false;
    }
}
