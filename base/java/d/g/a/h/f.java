package d.g.a.h;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

public class f {
    public List<d> a;
    public int b = -1;

    /* renamed from: c  reason: collision with root package name */
    public int f493c = -1;

    /* renamed from: d  reason: collision with root package name */
    public boolean f494d = false;

    /* renamed from: e  reason: collision with root package name */
    public final int[] f495e = {-1, -1};

    /* renamed from: f  reason: collision with root package name */
    public List<d> f496f = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    public List<d> f497g = new ArrayList();

    /* renamed from: h  reason: collision with root package name */
    public HashSet<d> f498h = new HashSet<>();

    /* renamed from: i  reason: collision with root package name */
    public HashSet<d> f499i = new HashSet<>();

    /* renamed from: j  reason: collision with root package name */
    public List<d> f500j = new ArrayList();

    /* renamed from: k  reason: collision with root package name */
    public List<d> f501k = new ArrayList();

    public f(List<d> list) {
        this.a = list;
    }

    public void a(d dVar, int i2) {
        if (i2 == 0) {
            this.f498h.add(dVar);
        } else if (i2 == 1) {
            this.f499i.add(dVar);
        }
    }

    public final void a(ArrayList<d> arrayList, d dVar) {
        d dVar2;
        if (!dVar.d0) {
            arrayList.add(dVar);
            dVar.d0 = true;
            if (!dVar.j()) {
                if (dVar instanceof h) {
                    h hVar = (h) dVar;
                    int i2 = hVar.l0;
                    for (int i3 = 0; i3 < i2; i3++) {
                        a(arrayList, hVar.k0[i3]);
                    }
                }
                for (c cVar : dVar.A) {
                    c cVar2 = cVar.f477d;
                    if (!(cVar2 == null || (dVar2 = cVar2.b) == dVar.D)) {
                        a(arrayList, dVar2);
                    }
                }
            }
        }
    }

    public f(List<d> list, boolean z) {
        this.a = list;
        this.f494d = z;
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x0048  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0050  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x006b  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0087  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(d.g.a.h.d r7) {
        /*
            r6 = this;
            boolean r0 = r7.b0
            if (r0 == 0) goto L_0x00dd
            boolean r0 = r7.j()
            if (r0 == 0) goto L_0x000b
            return
        L_0x000b:
            d.g.a.h.c r0 = r7.u
            d.g.a.h.c r0 = r0.f477d
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L_0x0015
            r0 = 1
            goto L_0x0016
        L_0x0015:
            r0 = 0
        L_0x0016:
            if (r0 == 0) goto L_0x001d
            d.g.a.h.c r3 = r7.u
            d.g.a.h.c r3 = r3.f477d
            goto L_0x0021
        L_0x001d:
            d.g.a.h.c r3 = r7.s
            d.g.a.h.c r3 = r3.f477d
        L_0x0021:
            if (r3 == 0) goto L_0x0045
            d.g.a.h.d r4 = r3.b
            boolean r5 = r4.c0
            if (r5 != 0) goto L_0x002c
            r6.a(r4)
        L_0x002c:
            d.g.a.h.c$c r4 = r3.f476c
            d.g.a.h.c$c r5 = d.g.a.h.c.C0020c.RIGHT
            if (r4 != r5) goto L_0x003c
            d.g.a.h.d r3 = r3.b
            int r4 = r3.I
            int r3 = r3.i()
            int r3 = r3 + r4
            goto L_0x0046
        L_0x003c:
            d.g.a.h.c$c r5 = d.g.a.h.c.C0020c.LEFT
            if (r4 != r5) goto L_0x0045
            d.g.a.h.d r3 = r3.b
            int r3 = r3.I
            goto L_0x0046
        L_0x0045:
            r3 = 0
        L_0x0046:
            if (r0 == 0) goto L_0x0050
            d.g.a.h.c r0 = r7.u
            int r0 = r0.a()
            int r3 = r3 - r0
            goto L_0x005c
        L_0x0050:
            d.g.a.h.c r0 = r7.s
            int r0 = r0.a()
            int r4 = r7.i()
            int r4 = r4 + r0
            int r3 = r3 + r4
        L_0x005c:
            int r0 = r7.i()
            int r0 = r3 - r0
            r7.a(r0, r3)
            d.g.a.h.c r0 = r7.w
            d.g.a.h.c r0 = r0.f477d
            if (r0 == 0) goto L_0x0087
            d.g.a.h.d r1 = r0.b
            boolean r3 = r1.c0
            if (r3 != 0) goto L_0x0074
            r6.a(r1)
        L_0x0074:
            d.g.a.h.d r0 = r0.b
            int r1 = r0.J
            int r0 = r0.Q
            int r1 = r1 + r0
            int r0 = r7.Q
            int r1 = r1 - r0
            int r0 = r7.F
            int r0 = r0 + r1
            r7.c(r1, r0)
            r7.c0 = r2
            return
        L_0x0087:
            d.g.a.h.c r0 = r7.v
            d.g.a.h.c r0 = r0.f477d
            if (r0 == 0) goto L_0x008e
            r1 = 1
        L_0x008e:
            if (r1 == 0) goto L_0x0095
            d.g.a.h.c r0 = r7.v
            d.g.a.h.c r0 = r0.f477d
            goto L_0x0099
        L_0x0095:
            d.g.a.h.c r0 = r7.t
            d.g.a.h.c r0 = r0.f477d
        L_0x0099:
            if (r0 == 0) goto L_0x00bc
            d.g.a.h.d r4 = r0.b
            boolean r5 = r4.c0
            if (r5 != 0) goto L_0x00a4
            r6.a(r4)
        L_0x00a4:
            d.g.a.h.c$c r4 = r0.f476c
            d.g.a.h.c$c r5 = d.g.a.h.c.C0020c.BOTTOM
            if (r4 != r5) goto L_0x00b4
            d.g.a.h.d r0 = r0.b
            int r3 = r0.J
            int r0 = r0.d()
            int r3 = r3 + r0
            goto L_0x00bc
        L_0x00b4:
            d.g.a.h.c$c r5 = d.g.a.h.c.C0020c.TOP
            if (r4 != r5) goto L_0x00bc
            d.g.a.h.d r0 = r0.b
            int r3 = r0.J
        L_0x00bc:
            if (r1 == 0) goto L_0x00c6
            d.g.a.h.c r0 = r7.v
            int r0 = r0.a()
            int r3 = r3 - r0
            goto L_0x00d2
        L_0x00c6:
            d.g.a.h.c r0 = r7.t
            int r0 = r0.a()
            int r1 = r7.d()
            int r1 = r1 + r0
            int r3 = r3 + r1
        L_0x00d2:
            int r0 = r7.d()
            int r0 = r3 - r0
            r7.c(r0, r3)
            r7.c0 = r2
        L_0x00dd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.g.a.h.f.a(d.g.a.h.d):void");
    }
}
