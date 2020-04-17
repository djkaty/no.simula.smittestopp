package d.g.a.h;

import d.b.a.r;
import d.g.a.h.c;
import d.g.a.h.d;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class e extends n {
    public int A0 = 0;
    public int B0 = 0;
    public int C0 = 7;
    public boolean D0 = false;
    public boolean E0 = false;
    public boolean F0 = false;
    public boolean l0 = false;
    public d.g.a.e m0 = new d.g.a.e();
    public m n0;
    public int o0;
    public int p0;
    public int q0;
    public int r0;
    public int s0 = 0;
    public int t0 = 0;
    public b[] u0 = new b[4];
    public b[] v0 = new b[4];
    public List<f> w0 = new ArrayList();
    public boolean x0 = false;
    public boolean y0 = false;
    public boolean z0 = false;

    public void a(int i2) {
        super.a(i2);
        int size = this.k0.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.k0.get(i3).a(i2);
        }
    }

    public boolean d(d.g.a.e eVar) {
        a(eVar);
        int size = this.k0.size();
        for (int i2 = 0; i2 < size; i2++) {
            d dVar = this.k0.get(i2);
            if (dVar instanceof e) {
                d.a[] aVarArr = dVar.C;
                d.a aVar = aVarArr[0];
                d.a aVar2 = aVarArr[1];
                if (aVar == d.a.WRAP_CONTENT) {
                    dVar.a(d.a.FIXED);
                }
                if (aVar2 == d.a.WRAP_CONTENT) {
                    dVar.b(d.a.FIXED);
                }
                dVar.a(eVar);
                if (aVar == d.a.WRAP_CONTENT) {
                    dVar.a(aVar);
                }
                if (aVar2 == d.a.WRAP_CONTENT) {
                    dVar.b(aVar2);
                }
            } else {
                if (this.C[0] != d.a.WRAP_CONTENT && dVar.C[0] == d.a.MATCH_PARENT) {
                    int i3 = dVar.s.f478e;
                    int i4 = i() - dVar.u.f478e;
                    c cVar = dVar.s;
                    cVar.f482i = eVar.a((Object) cVar);
                    c cVar2 = dVar.u;
                    cVar2.f482i = eVar.a((Object) cVar2);
                    eVar.a(dVar.s.f482i, i3);
                    eVar.a(dVar.u.f482i, i4);
                    dVar.a = 2;
                    dVar.a(i3, i4);
                }
                if (this.C[1] != d.a.WRAP_CONTENT && dVar.C[1] == d.a.MATCH_PARENT) {
                    int i5 = dVar.t.f478e;
                    int d2 = d() - dVar.v.f478e;
                    c cVar3 = dVar.t;
                    cVar3.f482i = eVar.a((Object) cVar3);
                    c cVar4 = dVar.v;
                    cVar4.f482i = eVar.a((Object) cVar4);
                    eVar.a(dVar.t.f482i, i5);
                    eVar.a(dVar.v.f482i, d2);
                    if (dVar.Q > 0 || dVar.Y == 8) {
                        c cVar5 = dVar.w;
                        cVar5.f482i = eVar.a((Object) cVar5);
                        eVar.a(dVar.w.f482i, dVar.Q + i5);
                    }
                    dVar.b = 2;
                    dVar.c(i5, d2);
                }
                dVar.a(eVar);
            }
        }
        if (this.s0 > 0) {
            r.a(this, eVar, 0);
        }
        if (this.t0 > 0) {
            r.a(this, eVar, 1);
        }
        return true;
    }

    public boolean g(int i2) {
        return (this.C0 & i2) == i2;
    }

    public void k() {
        this.m0.f();
        this.o0 = 0;
        this.q0 = 0;
        this.p0 = 0;
        this.r0 = 0;
        this.w0.clear();
        this.D0 = false;
        super.k();
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v4, resolved type: d.g.a.h.e} */
    /* JADX WARNING: type inference failed for: r8v12, types: [boolean] */
    /* JADX WARNING: type inference failed for: r8v16 */
    /* JADX WARNING: type inference failed for: r8v17 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:113:0x025e  */
    /* JADX WARNING: Removed duplicated region for block: B:128:0x02bb  */
    /* JADX WARNING: Removed duplicated region for block: B:146:0x030c  */
    /* JADX WARNING: Removed duplicated region for block: B:160:0x0372  */
    /* JADX WARNING: Removed duplicated region for block: B:163:0x0383  */
    /* JADX WARNING: Removed duplicated region for block: B:166:0x03a0  */
    /* JADX WARNING: Removed duplicated region for block: B:167:0x03ad  */
    /* JADX WARNING: Removed duplicated region for block: B:169:0x03b2  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void o() {
        /*
            r25 = this;
            r1 = r25
            int r2 = r1.I
            int r3 = r1.J
            int r0 = r25.i()
            r4 = 0
            int r5 = java.lang.Math.max(r4, r0)
            int r0 = r25.d()
            int r6 = java.lang.Math.max(r4, r0)
            r1.E0 = r4
            r1.F0 = r4
            d.g.a.h.d r0 = r1.D
            if (r0 == 0) goto L_0x00b4
            d.g.a.h.m r0 = r1.n0
            if (r0 != 0) goto L_0x002a
            d.g.a.h.m r0 = new d.g.a.h.m
            r0.<init>(r1)
            r1.n0 = r0
        L_0x002a:
            d.g.a.h.m r0 = r1.n0
            r7 = 0
            if (r0 == 0) goto L_0x00b3
            int r8 = r1.I
            r0.a = r8
            int r8 = r1.J
            r0.b = r8
            int r8 = r25.i()
            r0.f513c = r8
            int r8 = r25.d()
            r0.f514d = r8
            java.util.ArrayList<d.g.a.h.m$a> r8 = r0.f515e
            int r8 = r8.size()
            r9 = 0
        L_0x004a:
            if (r9 >= r8) goto L_0x0082
            java.util.ArrayList<d.g.a.h.m$a> r10 = r0.f515e
            java.lang.Object r10 = r10.get(r9)
            d.g.a.h.m$a r10 = (d.g.a.h.m.a) r10
            d.g.a.h.c r11 = r10.a
            d.g.a.h.c$c r11 = r11.f476c
            d.g.a.h.c r11 = r1.a((d.g.a.h.c.C0020c) r11)
            r10.a = r11
            if (r11 == 0) goto L_0x0075
            d.g.a.h.c r12 = r11.f477d
            r10.b = r12
            int r11 = r11.a()
            r10.f516c = r11
            d.g.a.h.c r11 = r10.a
            d.g.a.h.c$b r12 = r11.f480g
            r10.f517d = r12
            int r11 = r11.f481h
            r10.f518e = r11
            goto L_0x007f
        L_0x0075:
            r10.b = r7
            r10.f516c = r4
            d.g.a.h.c$b r11 = d.g.a.h.c.b.STRONG
            r10.f517d = r11
            r10.f518e = r4
        L_0x007f:
            int r9 = r9 + 1
            goto L_0x004a
        L_0x0082:
            int r0 = r1.o0
            r1.I = r0
            int r0 = r1.p0
            r1.J = r0
            d.g.a.h.d r0 = r1.D
            if (r0 == 0) goto L_0x0094
            boolean r7 = r0 instanceof d.g.a.h.e
            if (r7 == 0) goto L_0x0094
            d.g.a.h.e r0 = (d.g.a.h.e) r0
        L_0x0094:
            java.util.ArrayList<d.g.a.h.c> r0 = r1.B
            int r0 = r0.size()
            r7 = 0
        L_0x009b:
            if (r7 >= r0) goto L_0x00ab
            java.util.ArrayList<d.g.a.h.c> r8 = r1.B
            java.lang.Object r8 = r8.get(r7)
            d.g.a.h.c r8 = (d.g.a.h.c) r8
            r8.c()
            int r7 = r7 + 1
            goto L_0x009b
        L_0x00ab:
            d.g.a.e r0 = r1.m0
            d.g.a.c r0 = r0.f456l
            r1.a(r0)
            goto L_0x00b8
        L_0x00b3:
            throw r7
        L_0x00b4:
            r1.I = r4
            r1.J = r4
        L_0x00b8:
            int r0 = r1.C0
            r7 = 8
            r8 = 32
            r9 = 1
            if (r0 == 0) goto L_0x00e3
            boolean r0 = r1.g(r7)
            if (r0 != 0) goto L_0x00ca
            r25.p()
        L_0x00ca:
            boolean r0 = r1.g(r8)
            if (r0 != 0) goto L_0x00de
            boolean r0 = r1.g(r7)
            if (r0 != 0) goto L_0x00db
            int r0 = r1.C0
            r1.a(r0)
        L_0x00db:
            r25.r()
        L_0x00de:
            d.g.a.e r0 = r1.m0
            r0.f451g = r9
            goto L_0x00e7
        L_0x00e3:
            d.g.a.e r0 = r1.m0
            r0.f451g = r4
        L_0x00e7:
            d.g.a.h.d$a[] r0 = r1.C
            r10 = r0[r9]
            r11 = r0[r4]
            r25.q()
            java.util.List<d.g.a.h.f> r0 = r1.w0
            int r0 = r0.size()
            if (r0 != 0) goto L_0x0109
            java.util.List<d.g.a.h.f> r0 = r1.w0
            r0.clear()
            java.util.List<d.g.a.h.f> r0 = r1.w0
            d.g.a.h.f r12 = new d.g.a.h.f
            java.util.ArrayList<d.g.a.h.d> r13 = r1.k0
            r12.<init>(r13)
            r0.add(r4, r12)
        L_0x0109:
            java.util.List<d.g.a.h.f> r0 = r1.w0
            int r12 = r0.size()
            java.util.ArrayList<d.g.a.h.d> r13 = r1.k0
            d.g.a.h.d$a r0 = r25.e()
            d.g.a.h.d$a r14 = d.g.a.h.d.a.WRAP_CONTENT
            if (r0 == r14) goto L_0x0124
            d.g.a.h.d$a r0 = r25.h()
            d.g.a.h.d$a r14 = d.g.a.h.d.a.WRAP_CONTENT
            if (r0 != r14) goto L_0x0122
            goto L_0x0124
        L_0x0122:
            r14 = 0
            goto L_0x0125
        L_0x0124:
            r14 = 1
        L_0x0125:
            r0 = 0
            r15 = 0
        L_0x0127:
            if (r15 >= r12) goto L_0x0438
            boolean r7 = r1.D0
            if (r7 != 0) goto L_0x0438
            java.util.List<d.g.a.h.f> r7 = r1.w0
            java.lang.Object r7 = r7.get(r15)
            d.g.a.h.f r7 = (d.g.a.h.f) r7
            boolean r7 = r7.f494d
            if (r7 == 0) goto L_0x013f
            r22 = r3
            r19 = r12
            goto L_0x042a
        L_0x013f:
            boolean r7 = r1.g(r8)
            if (r7 == 0) goto L_0x01b3
            d.g.a.h.d$a r7 = r25.e()
            d.g.a.h.d$a r8 = d.g.a.h.d.a.FIXED
            if (r7 != r8) goto L_0x01a5
            d.g.a.h.d$a r7 = r25.h()
            d.g.a.h.d$a r8 = d.g.a.h.d.a.FIXED
            if (r7 != r8) goto L_0x01a5
            java.util.List<d.g.a.h.f> r7 = r1.w0
            java.lang.Object r7 = r7.get(r15)
            d.g.a.h.f r7 = (d.g.a.h.f) r7
            java.util.List<d.g.a.h.d> r8 = r7.f500j
            boolean r8 = r8.isEmpty()
            if (r8 != 0) goto L_0x0168
            java.util.List<d.g.a.h.d> r7 = r7.f500j
            goto L_0x01a0
        L_0x0168:
            java.util.List<d.g.a.h.d> r8 = r7.a
            int r8 = r8.size()
        L_0x016e:
            if (r4 >= r8) goto L_0x018b
            java.util.List<d.g.a.h.d> r9 = r7.a
            java.lang.Object r9 = r9.get(r4)
            d.g.a.h.d r9 = (d.g.a.h.d) r9
            r17 = r8
            boolean r8 = r9.b0
            if (r8 != 0) goto L_0x0185
            java.util.List<d.g.a.h.d> r8 = r7.f500j
            java.util.ArrayList r8 = (java.util.ArrayList) r8
            r7.a((java.util.ArrayList<d.g.a.h.d>) r8, (d.g.a.h.d) r9)
        L_0x0185:
            int r4 = r4 + 1
            r8 = r17
            r9 = 1
            goto L_0x016e
        L_0x018b:
            java.util.List<d.g.a.h.d> r4 = r7.f501k
            r4.clear()
            java.util.List<d.g.a.h.d> r4 = r7.f501k
            java.util.List<d.g.a.h.d> r8 = r7.a
            r4.addAll(r8)
            java.util.List<d.g.a.h.d> r4 = r7.f501k
            java.util.List<d.g.a.h.d> r8 = r7.f500j
            r4.removeAll(r8)
            java.util.List<d.g.a.h.d> r7 = r7.f500j
        L_0x01a0:
            java.util.ArrayList r7 = (java.util.ArrayList) r7
            r1.k0 = r7
            goto L_0x01b3
        L_0x01a5:
            java.util.List<d.g.a.h.f> r4 = r1.w0
            java.lang.Object r4 = r4.get(r15)
            d.g.a.h.f r4 = (d.g.a.h.f) r4
            java.util.List<d.g.a.h.d> r4 = r4.a
            java.util.ArrayList r4 = (java.util.ArrayList) r4
            r1.k0 = r4
        L_0x01b3:
            r25.q()
            java.util.ArrayList<d.g.a.h.d> r4 = r1.k0
            int r4 = r4.size()
            r7 = 0
        L_0x01bd:
            if (r7 >= r4) goto L_0x01d3
            java.util.ArrayList<d.g.a.h.d> r8 = r1.k0
            java.lang.Object r8 = r8.get(r7)
            d.g.a.h.d r8 = (d.g.a.h.d) r8
            boolean r9 = r8 instanceof d.g.a.h.n
            if (r9 == 0) goto L_0x01d0
            d.g.a.h.n r8 = (d.g.a.h.n) r8
            r8.o()
        L_0x01d0:
            int r7 = r7 + 1
            goto L_0x01bd
        L_0x01d3:
            r7 = r0
            r0 = 0
            r8 = 1
        L_0x01d6:
            if (r8 == 0) goto L_0x0403
            r17 = r7
            r9 = 1
            int r7 = r0 + 1
            d.g.a.e r0 = r1.m0     // Catch:{ Exception -> 0x023d }
            r0.f()     // Catch:{ Exception -> 0x023d }
            r25.q()     // Catch:{ Exception -> 0x023d }
            d.g.a.e r0 = r1.m0     // Catch:{ Exception -> 0x023d }
            r1.b((d.g.a.e) r0)     // Catch:{ Exception -> 0x023d }
            r0 = 0
        L_0x01eb:
            if (r0 >= r4) goto L_0x0201
            java.util.ArrayList<d.g.a.h.d> r9 = r1.k0     // Catch:{ Exception -> 0x023d }
            java.lang.Object r9 = r9.get(r0)     // Catch:{ Exception -> 0x023d }
            d.g.a.h.d r9 = (d.g.a.h.d) r9     // Catch:{ Exception -> 0x023d }
            r18 = r8
            d.g.a.e r8 = r1.m0     // Catch:{ Exception -> 0x023b }
            r9.b((d.g.a.e) r8)     // Catch:{ Exception -> 0x023b }
            int r0 = r0 + 1
            r8 = r18
            goto L_0x01eb
        L_0x0201:
            r18 = r8
            d.g.a.e r0 = r1.m0     // Catch:{ Exception -> 0x023b }
            r1.d(r0)     // Catch:{ Exception -> 0x023b }
            d.g.a.e r0 = r1.m0     // Catch:{ Exception -> 0x0237 }
            boolean r8 = r0.f451g     // Catch:{ Exception -> 0x0237 }
            if (r8 == 0) goto L_0x022d
            r8 = 0
        L_0x020f:
            int r9 = r0.f454j     // Catch:{ Exception -> 0x0237 }
            if (r8 >= r9) goto L_0x0220
            d.g.a.b[] r9 = r0.f450f     // Catch:{ Exception -> 0x0237 }
            r9 = r9[r8]     // Catch:{ Exception -> 0x0237 }
            boolean r9 = r9.f445e     // Catch:{ Exception -> 0x0237 }
            if (r9 != 0) goto L_0x021d
            r8 = 0
            goto L_0x0221
        L_0x021d:
            int r8 = r8 + 1
            goto L_0x020f
        L_0x0220:
            r8 = 1
        L_0x0221:
            if (r8 != 0) goto L_0x0229
            d.g.a.e$a r8 = r0.f447c     // Catch:{ Exception -> 0x0237 }
            r0.a((d.g.a.e.a) r8)     // Catch:{ Exception -> 0x0237 }
            goto L_0x0232
        L_0x0229:
            r0.a()     // Catch:{ Exception -> 0x0237 }
            goto L_0x0232
        L_0x022d:
            d.g.a.e$a r8 = r0.f447c     // Catch:{ Exception -> 0x0237 }
            r0.a((d.g.a.e.a) r8)     // Catch:{ Exception -> 0x0237 }
        L_0x0232:
            r19 = r12
            r18 = 1
            goto L_0x025b
        L_0x0237:
            r0 = move-exception
            r18 = 1
            goto L_0x0240
        L_0x023b:
            r0 = move-exception
            goto L_0x0240
        L_0x023d:
            r0 = move-exception
            r18 = r8
        L_0x0240:
            r0.printStackTrace()
            java.io.PrintStream r8 = java.lang.System.out
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            r19 = r12
            java.lang.String r12 = "EXCEPTION : "
            r9.append(r12)
            r9.append(r0)
            java.lang.String r0 = r9.toString()
            r8.println(r0)
        L_0x025b:
            r0 = 2
            if (r18 == 0) goto L_0x02bb
            d.g.a.e r8 = r1.m0
            boolean[] r9 = d.g.a.h.i.a
            r16 = 0
            r9[r0] = r16
            r1.c((d.g.a.e) r8)
            java.util.ArrayList<d.g.a.h.d> r12 = r1.k0
            int r12 = r12.size()
            r0 = 0
        L_0x0270:
            if (r0 >= r12) goto L_0x02b8
            r20 = r12
            java.util.ArrayList<d.g.a.h.d> r12 = r1.k0
            java.lang.Object r12 = r12.get(r0)
            d.g.a.h.d r12 = (d.g.a.h.d) r12
            r12.c((d.g.a.e) r8)
            r21 = r8
            d.g.a.h.d$a[] r8 = r12.C
            r8 = r8[r16]
            r22 = r3
            d.g.a.h.d$a r3 = d.g.a.h.d.a.MATCH_CONSTRAINT
            if (r8 != r3) goto L_0x0298
            int r3 = r12.i()
            int r8 = r12.T
            if (r3 >= r8) goto L_0x0298
            r3 = 2
            r8 = 1
            r9[r3] = r8
            goto L_0x0299
        L_0x0298:
            r8 = 1
        L_0x0299:
            d.g.a.h.d$a[] r3 = r12.C
            r3 = r3[r8]
            d.g.a.h.d$a r8 = d.g.a.h.d.a.MATCH_CONSTRAINT
            if (r3 != r8) goto L_0x02ad
            int r3 = r12.d()
            int r8 = r12.U
            if (r3 >= r8) goto L_0x02ad
            r3 = 2
            r8 = 1
            r9[r3] = r8
        L_0x02ad:
            int r0 = r0 + 1
            r12 = r20
            r8 = r21
            r3 = r22
            r16 = 0
            goto L_0x0270
        L_0x02b8:
            r22 = r3
            goto L_0x02ff
        L_0x02bb:
            r22 = r3
            d.g.a.e r0 = r1.m0
            r1.c((d.g.a.e) r0)
            r0 = 0
        L_0x02c3:
            if (r0 >= r4) goto L_0x02ff
            java.util.ArrayList<d.g.a.h.d> r3 = r1.k0
            java.lang.Object r3 = r3.get(r0)
            d.g.a.h.d r3 = (d.g.a.h.d) r3
            d.g.a.h.d$a[] r8 = r3.C
            r9 = 0
            r8 = r8[r9]
            d.g.a.h.d$a r9 = d.g.a.h.d.a.MATCH_CONSTRAINT
            if (r8 != r9) goto L_0x02e5
            int r8 = r3.i()
            int r9 = r3.T
            if (r8 >= r9) goto L_0x02e5
            boolean[] r0 = d.g.a.h.i.a
            r3 = 2
            r8 = 1
            r0[r3] = r8
            goto L_0x02ff
        L_0x02e5:
            r8 = 1
            d.g.a.h.d$a[] r9 = r3.C
            r9 = r9[r8]
            d.g.a.h.d$a r12 = d.g.a.h.d.a.MATCH_CONSTRAINT
            if (r9 != r12) goto L_0x02fc
            int r9 = r3.d()
            int r3 = r3.U
            if (r9 >= r3) goto L_0x02fc
            boolean[] r0 = d.g.a.h.i.a
            r3 = 2
            r0[r3] = r8
            goto L_0x02ff
        L_0x02fc:
            int r0 = r0 + 1
            goto L_0x02c3
        L_0x02ff:
            if (r14 == 0) goto L_0x0372
            r3 = 8
            if (r7 >= r3) goto L_0x0372
            boolean[] r0 = d.g.a.h.i.a
            r8 = 2
            boolean r0 = r0[r8]
            if (r0 == 0) goto L_0x0372
            r0 = 0
            r8 = 0
            r9 = 0
        L_0x030f:
            if (r0 >= r4) goto L_0x0335
            java.util.ArrayList<d.g.a.h.d> r12 = r1.k0
            java.lang.Object r12 = r12.get(r0)
            d.g.a.h.d r12 = (d.g.a.h.d) r12
            int r3 = r12.I
            int r18 = r12.i()
            int r3 = r18 + r3
            int r8 = java.lang.Math.max(r8, r3)
            int r3 = r12.J
            int r12 = r12.d()
            int r12 = r12 + r3
            int r9 = java.lang.Math.max(r9, r12)
            int r0 = r0 + 1
            r3 = 8
            goto L_0x030f
        L_0x0335:
            int r0 = r1.R
            int r0 = java.lang.Math.max(r0, r8)
            int r3 = r1.S
            int r3 = java.lang.Math.max(r3, r9)
            d.g.a.h.d$a r8 = d.g.a.h.d.a.WRAP_CONTENT
            if (r11 != r8) goto L_0x0359
            int r8 = r25.i()
            if (r8 >= r0) goto L_0x0359
            r1.f(r0)
            d.g.a.h.d$a[] r0 = r1.C
            d.g.a.h.d$a r8 = d.g.a.h.d.a.WRAP_CONTENT
            r9 = 0
            r0[r9] = r8
            r0 = 1
            r17 = 1
            goto L_0x035a
        L_0x0359:
            r0 = 0
        L_0x035a:
            d.g.a.h.d$a r8 = d.g.a.h.d.a.WRAP_CONTENT
            if (r10 != r8) goto L_0x0373
            int r8 = r25.d()
            if (r8 >= r3) goto L_0x0373
            r1.e(r3)
            d.g.a.h.d$a[] r0 = r1.C
            d.g.a.h.d$a r3 = d.g.a.h.d.a.WRAP_CONTENT
            r8 = 1
            r0[r8] = r3
            r0 = 1
            r17 = 1
            goto L_0x0373
        L_0x0372:
            r0 = 0
        L_0x0373:
            int r3 = r1.R
            int r8 = r25.i()
            int r3 = java.lang.Math.max(r3, r8)
            int r8 = r25.i()
            if (r3 <= r8) goto L_0x0390
            r1.f(r3)
            d.g.a.h.d$a[] r0 = r1.C
            d.g.a.h.d$a r3 = d.g.a.h.d.a.FIXED
            r8 = 0
            r0[r8] = r3
            r0 = 1
            r17 = 1
        L_0x0390:
            int r3 = r1.S
            int r8 = r25.d()
            int r3 = java.lang.Math.max(r3, r8)
            int r8 = r25.d()
            if (r3 <= r8) goto L_0x03ad
            r1.e(r3)
            d.g.a.h.d$a[] r0 = r1.C
            d.g.a.h.d$a r3 = d.g.a.h.d.a.FIXED
            r8 = 1
            r0[r8] = r3
            r0 = 1
            r9 = 1
            goto L_0x03b0
        L_0x03ad:
            r8 = 1
            r9 = r17
        L_0x03b0:
            if (r9 != 0) goto L_0x03fa
            d.g.a.h.d$a[] r3 = r1.C
            r12 = 0
            r3 = r3[r12]
            d.g.a.h.d$a r12 = d.g.a.h.d.a.WRAP_CONTENT
            if (r3 != r12) goto L_0x03d2
            if (r5 <= 0) goto L_0x03d2
            int r3 = r25.i()
            if (r3 <= r5) goto L_0x03d2
            r1.E0 = r8
            d.g.a.h.d$a[] r0 = r1.C
            d.g.a.h.d$a r3 = d.g.a.h.d.a.FIXED
            r9 = 0
            r0[r9] = r3
            r1.f(r5)
            r0 = 1
            r9 = 1
            goto L_0x03d7
        L_0x03d2:
            r24 = r9
            r9 = r0
            r0 = r24
        L_0x03d7:
            d.g.a.h.d$a[] r3 = r1.C
            r3 = r3[r8]
            d.g.a.h.d$a r12 = d.g.a.h.d.a.WRAP_CONTENT
            if (r3 != r12) goto L_0x03f5
            if (r6 <= 0) goto L_0x03f5
            int r3 = r25.d()
            if (r3 <= r6) goto L_0x03f5
            r1.F0 = r8
            d.g.a.h.d$a[] r0 = r1.C
            d.g.a.h.d$a r3 = d.g.a.h.d.a.FIXED
            r0[r8] = r3
            r1.e(r6)
            r8 = 1
            r9 = 1
            goto L_0x03fb
        L_0x03f5:
            r24 = r9
            r9 = r0
            r0 = r24
        L_0x03fa:
            r8 = r0
        L_0x03fb:
            r0 = r7
            r7 = r9
            r12 = r19
            r3 = r22
            goto L_0x01d6
        L_0x0403:
            r22 = r3
            r17 = r7
            r19 = r12
            java.util.List<d.g.a.h.f> r0 = r1.w0
            java.lang.Object r0 = r0.get(r15)
            d.g.a.h.f r0 = (d.g.a.h.f) r0
            java.util.List<d.g.a.h.d> r3 = r0.f501k
            int r3 = r3.size()
            r4 = 0
        L_0x0418:
            if (r4 >= r3) goto L_0x0428
            java.util.List<d.g.a.h.d> r7 = r0.f501k
            java.lang.Object r7 = r7.get(r4)
            d.g.a.h.d r7 = (d.g.a.h.d) r7
            r0.a(r7)
            int r4 = r4 + 1
            goto L_0x0418
        L_0x0428:
            r0 = r17
        L_0x042a:
            int r15 = r15 + 1
            r12 = r19
            r3 = r22
            r4 = 0
            r7 = 8
            r8 = 32
            r9 = 1
            goto L_0x0127
        L_0x0438:
            r22 = r3
            r1.k0 = r13
            d.g.a.h.d r3 = r1.D
            if (r3 == 0) goto L_0x04ae
            int r2 = r1.R
            int r3 = r25.i()
            int r2 = java.lang.Math.max(r2, r3)
            int r3 = r1.S
            int r4 = r25.d()
            int r3 = java.lang.Math.max(r3, r4)
            d.g.a.h.m r4 = r1.n0
            int r5 = r4.a
            r1.I = r5
            int r5 = r4.b
            r1.J = r5
            int r5 = r4.f513c
            r1.f(r5)
            int r5 = r4.f514d
            r1.e(r5)
            java.util.ArrayList<d.g.a.h.m$a> r5 = r4.f515e
            int r5 = r5.size()
            r6 = 0
        L_0x046f:
            if (r6 >= r5) goto L_0x049b
            java.util.ArrayList<d.g.a.h.m$a> r7 = r4.f515e
            java.lang.Object r7 = r7.get(r6)
            d.g.a.h.m$a r7 = (d.g.a.h.m.a) r7
            d.g.a.h.c r8 = r7.a
            d.g.a.h.c$c r8 = r8.f476c
            d.g.a.h.c r17 = r1.a((d.g.a.h.c.C0020c) r8)
            d.g.a.h.c r8 = r7.b
            int r9 = r7.f516c
            d.g.a.h.c$b r12 = r7.f517d
            int r7 = r7.f518e
            r20 = -1
            r23 = 0
            r18 = r8
            r19 = r9
            r21 = r12
            r22 = r7
            r17.a(r18, r19, r20, r21, r22, r23)
            int r6 = r6 + 1
            goto L_0x046f
        L_0x049b:
            int r4 = r1.o0
            int r2 = r2 + r4
            int r4 = r1.q0
            int r2 = r2 + r4
            r1.f(r2)
            int r2 = r1.p0
            int r3 = r3 + r2
            int r2 = r1.r0
            int r3 = r3 + r2
            r1.e(r3)
            goto L_0x04b4
        L_0x04ae:
            r1.I = r2
            r2 = r22
            r1.J = r2
        L_0x04b4:
            if (r0 == 0) goto L_0x04be
            d.g.a.h.d$a[] r0 = r1.C
            r2 = 0
            r0[r2] = r11
            r2 = 1
            r0[r2] = r10
        L_0x04be:
            d.g.a.e r0 = r1.m0
            d.g.a.c r0 = r0.f456l
            r1.a(r0)
            d.g.a.h.d r0 = r1.D
            r2 = r1
        L_0x04c8:
            if (r0 == 0) goto L_0x04d5
            d.g.a.h.d r3 = r0.D
            boolean r4 = r0 instanceof d.g.a.h.e
            if (r4 == 0) goto L_0x04d3
            r2 = r0
            d.g.a.h.e r2 = (d.g.a.h.e) r2
        L_0x04d3:
            r0 = r3
            goto L_0x04c8
        L_0x04d5:
            if (r1 != r2) goto L_0x04da
            r25.n()
        L_0x04da:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.g.a.h.e.o():void");
    }

    public void p() {
        int size = this.k0.size();
        l();
        for (int i2 = 0; i2 < size; i2++) {
            this.k0.get(i2).l();
        }
    }

    public final void q() {
        this.s0 = 0;
        this.t0 = 0;
    }

    public void r() {
        j jVar = a(c.C0020c.LEFT).a;
        j jVar2 = a(c.C0020c.TOP).a;
        jVar.a((j) null, 0.0f);
        jVar2.a((j) null, 0.0f);
    }

    public void a(d dVar, int i2) {
        if (i2 == 0) {
            int i3 = this.s0 + 1;
            b[] bVarArr = this.v0;
            if (i3 >= bVarArr.length) {
                this.v0 = (b[]) Arrays.copyOf(bVarArr, bVarArr.length * 2);
            }
            this.v0[this.s0] = new b(dVar, 0, this.l0);
            this.s0++;
        } else if (i2 == 1) {
            int i4 = this.t0 + 1;
            b[] bVarArr2 = this.u0;
            if (i4 >= bVarArr2.length) {
                this.u0 = (b[]) Arrays.copyOf(bVarArr2, bVarArr2.length * 2);
            }
            this.u0[this.t0] = new b(dVar, 1, this.l0);
            this.t0++;
        }
    }
}
