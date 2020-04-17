package k.a.b.a.d.g0;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import k.a.b.a.d.b;
import k.a.b.a.d.c0;
import k.a.b.a.d.h;
import k.a.b.a.d.o;
import k.a.b.a.d.y;

public class d extends f implements o {
    public List<y> H = new ArrayList();
    public f I;
    public f J;
    public int K = 65535;
    public n<y> L;
    public n<y> M;
    public n<m> N;
    public n<m> O;
    public e P;
    public e Q;
    public a0 R;
    public e S;
    public e T;
    public int U = 0;
    public String V = "";
    public String W;
    public c X;
    public k.a.b.a.g.d Y;

    public void B() {
        a(h.b.CONNECTION_LOCAL_CLOSE, this);
    }

    public y D() {
        y yVar = new y(this);
        this.H.add(yVar);
        return yVar;
    }

    public void F() {
        a(h.b.CONNECTION_LOCAL_OPEN, this);
    }

    public void S() {
        a(h.b.CONNECTION_FINAL, this);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x002b, code lost:
        if (r6.R == false) goto L_0x0047;
     */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0029  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(k.a.b.a.d.g0.e r6) {
        /*
            r5 = this;
            if (r6 == 0) goto L_0x0079
            boolean r0 = r6.J
            r1 = 0
            r2 = 0
            if (r0 != 0) goto L_0x0047
            boolean r0 = r6.t()
            r3 = 1
            if (r0 != 0) goto L_0x002d
            k.a.b.a.d.g0.m r0 = r6.H
            boolean r4 = r0 instanceof k.a.b.a.d.g0.x
            if (r4 == 0) goto L_0x0026
            k.a.b.a.d.g0.e r4 = r0.K
            if (r4 != r6) goto L_0x0026
            k.a.b.a.d.g0.x r0 = (k.a.b.a.d.g0.x) r0
            int r0 = r0.R
            if (r0 <= 0) goto L_0x0021
            r0 = 1
            goto L_0x0022
        L_0x0021:
            r0 = 0
        L_0x0022:
            if (r0 == 0) goto L_0x0026
            r0 = 1
            goto L_0x0027
        L_0x0026:
            r0 = 0
        L_0x0027:
            if (r0 != 0) goto L_0x002d
            boolean r0 = r6.R
            if (r0 == 0) goto L_0x0047
        L_0x002d:
            boolean r0 = r6.B
            if (r0 == 0) goto L_0x0032
            goto L_0x0079
        L_0x0032:
            r6.z = r1
            k.a.b.a.d.g0.e r0 = r5.Q
            r6.A = r0
            if (r0 == 0) goto L_0x003c
            r0.z = r6
        L_0x003c:
            r5.Q = r6
            k.a.b.a.d.g0.e r0 = r5.P
            if (r0 != 0) goto L_0x0044
            r5.P = r6
        L_0x0044:
            r6.B = r3
            goto L_0x0079
        L_0x0047:
            boolean r0 = r6.B
            if (r0 != 0) goto L_0x004c
            goto L_0x0079
        L_0x004c:
            k.a.b.a.d.g0.e r3 = r6.z
            if (r3 == 0) goto L_0x0051
            goto L_0x005d
        L_0x0051:
            if (r0 != 0) goto L_0x005c
            k.a.b.a.d.g0.m r0 = r6.H
            k.a.b.a.d.g0.y r0 = r0.H
            k.a.b.a.d.g0.d r0 = r0.H
            k.a.b.a.d.g0.e r3 = r0.P
            goto L_0x005d
        L_0x005c:
            r3 = r1
        L_0x005d:
            k.a.b.a.d.g0.e r0 = r6.A
            if (r0 == 0) goto L_0x0063
            r0.z = r3
        L_0x0063:
            if (r3 == 0) goto L_0x0067
            r3.A = r0
        L_0x0067:
            r6.z = r1
            r6.A = r1
            k.a.b.a.d.g0.e r1 = r5.P
            if (r1 != r6) goto L_0x0071
            r5.P = r3
        L_0x0071:
            k.a.b.a.d.g0.e r1 = r5.Q
            if (r1 != r6) goto L_0x0077
            r5.Q = r0
        L_0x0077:
            r6.B = r2
        L_0x0079:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.d.g0.d.a(k.a.b.a.d.g0.e):void");
    }

    public k.a.b.a.g.d b() {
        return this.Y;
    }

    public void c(String str) {
        this.W = str;
    }

    public String f() {
        return this.W;
    }

    public c0 l() {
        return this.R;
    }

    public void n() {
        Iterator it = new ArrayList(this.H).iterator();
        while (it.hasNext()) {
            ((y) it.next()).a();
        }
        this.H = null;
    }

    public d o() {
        return this;
    }

    public void a(b bVar) {
        this.X = (c) bVar;
        a(h.b.CONNECTION_INIT, this);
        for (n nVar = this.L; nVar != null; nVar = nVar.f1911c) {
            a(h.b.SESSION_INIT, nVar.a);
        }
        for (n nVar2 = this.N; nVar2 != null; nVar2 = nVar2.f1911c) {
            a(h.b.LINK_INIT, nVar2.a);
        }
    }

    public g a(h.b bVar, Object obj) {
        c cVar = this.X;
        if (cVar != null) {
            return cVar.a(bVar, obj);
        }
        return null;
    }
}
