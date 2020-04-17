package k.b.a.m2;

import k.b.a.n;
import k.b.a.o;
import k.b.f.a.b;
import k.b.f.b.e;

public class a extends n implements f {
    public b x;
    public byte[] y;
    public o z = null;

    /* JADX WARNING: type inference failed for: r1v1, types: [k.b.f.a.b] */
    /* JADX WARNING: type inference failed for: r7v9, types: [k.b.f.a.b$c] */
    /* JADX WARNING: type inference failed for: r7v10, types: [k.b.f.a.b$d] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public a(k.b.a.m2.e r17, java.math.BigInteger r18, java.math.BigInteger r19, k.b.a.u r20) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            r2 = r20
            r16.<init>()
            r3 = 0
            r0.z = r3
            k.b.a.o r3 = r1.x
            r0.z = r3
            k.b.a.o r4 = k.b.a.m2.f.f1999g
            boolean r3 = r3.b(r4)
            r4 = 0
            r5 = 2
            r6 = 1
            if (r3 == 0) goto L_0x0051
            k.b.a.t r1 = r1.y
            k.b.a.l r1 = (k.b.a.l) r1
            java.math.BigInteger r8 = r1.j()
            java.math.BigInteger r9 = new java.math.BigInteger
            k.b.a.e r1 = r2.a((int) r4)
            k.b.a.p r1 = k.b.a.p.a((java.lang.Object) r1)
            byte[] r1 = r1.j()
            r9.<init>(r6, r1)
            java.math.BigInteger r10 = new java.math.BigInteger
            k.b.a.e r1 = r2.a((int) r6)
            k.b.a.p r1 = k.b.a.p.a((java.lang.Object) r1)
            byte[] r1 = r1.j()
            r10.<init>(r6, r1)
            k.b.f.a.b$d r1 = new k.b.f.a.b$d
            r7 = r1
            r11 = r18
            r12 = r19
            r7.<init>(r8, r9, r10, r11, r12)
            goto L_0x00ec
        L_0x0051:
            k.b.a.o r3 = r0.z
            k.b.a.o r7 = k.b.a.m2.f.f2000h
            boolean r3 = r3.b(r7)
            if (r3 == 0) goto L_0x010a
            k.b.a.t r1 = r1.y
            k.b.a.u r1 = k.b.a.u.a((java.lang.Object) r1)
            k.b.a.e r3 = r1.a((int) r4)
            k.b.a.l r3 = (k.b.a.l) r3
            int r8 = r3.k()
            k.b.a.e r3 = r1.a((int) r6)
            k.b.a.o r3 = (k.b.a.o) r3
            k.b.a.o r7 = k.b.a.m2.f.f2001i
            boolean r7 = r3.b(r7)
            if (r7 == 0) goto L_0x0089
            k.b.a.e r1 = r1.a((int) r5)
            k.b.a.l r1 = k.b.a.l.a((java.lang.Object) r1)
            int r1 = r1.k()
            r9 = r1
            r10 = 0
            r11 = 0
            goto L_0x00c0
        L_0x0089:
            k.b.a.o r7 = k.b.a.m2.f.f2002j
            boolean r3 = r3.b(r7)
            if (r3 == 0) goto L_0x0102
            k.b.a.e r1 = r1.a((int) r5)
            k.b.a.u r1 = k.b.a.u.a((java.lang.Object) r1)
            k.b.a.e r3 = r1.a((int) r4)
            k.b.a.l r3 = k.b.a.l.a((java.lang.Object) r3)
            int r3 = r3.k()
            k.b.a.e r7 = r1.a((int) r6)
            k.b.a.l r7 = k.b.a.l.a((java.lang.Object) r7)
            int r7 = r7.k()
            k.b.a.e r1 = r1.a((int) r5)
            k.b.a.l r1 = k.b.a.l.a((java.lang.Object) r1)
            int r1 = r1.k()
            r11 = r1
            r9 = r3
            r10 = r7
        L_0x00c0:
            java.math.BigInteger r12 = new java.math.BigInteger
            k.b.a.e r1 = r2.a((int) r4)
            k.b.a.p r1 = k.b.a.p.a((java.lang.Object) r1)
            byte[] r1 = r1.j()
            r12.<init>(r6, r1)
            java.math.BigInteger r13 = new java.math.BigInteger
            k.b.a.e r1 = r2.a((int) r6)
            k.b.a.p r1 = k.b.a.p.a((java.lang.Object) r1)
            byte[] r1 = r1.j()
            r13.<init>(r6, r1)
            k.b.f.a.b$c r1 = new k.b.f.a.b$c
            r7 = r1
            r14 = r18
            r15 = r19
            r7.<init>(r8, r9, r10, r11, r12, r13, r14, r15)
        L_0x00ec:
            r0.x = r1
            int r1 = r20.size()
            r3 = 3
            if (r1 != r3) goto L_0x0101
            k.b.a.e r1 = r2.a((int) r5)
            k.b.a.r0 r1 = (k.b.a.r0) r1
            byte[] r1 = r1.j()
            r0.y = r1
        L_0x0101:
            return
        L_0x0102:
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
            java.lang.String r2 = "This type of EC basis is not implemented"
            r1.<init>(r2)
            throw r1
        L_0x010a:
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
            java.lang.String r2 = "This type of ECCurve is not implemented"
            r1.<init>(r2)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: k.b.a.m2.a.<init>(k.b.a.m2.e, java.math.BigInteger, java.math.BigInteger, k.b.a.u):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:9:0x0059  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public k.b.a.t c() {
        /*
            r3 = this;
            k.b.a.f r0 = new k.b.a.f
            r1 = 3
            r0.<init>(r1)
            k.b.a.o r1 = r3.z
            k.b.a.o r2 = k.b.a.m2.f.f1999g
            boolean r1 = r1.b(r2)
            if (r1 == 0) goto L_0x0031
            k.b.a.m2.d r1 = new k.b.a.m2.d
            k.b.f.a.b r2 = r3.x
            k.b.f.a.c r2 = r2.b
            r1.<init>(r2)
            k.b.a.t r1 = r1.c()
            r0.a((k.b.a.e) r1)
            k.b.a.m2.d r1 = new k.b.a.m2.d
            k.b.f.a.b r2 = r3.x
            k.b.f.a.c r2 = r2.f2048c
            r1.<init>(r2)
        L_0x0029:
            k.b.a.t r1 = r1.c()
            r0.a((k.b.a.e) r1)
            goto L_0x0055
        L_0x0031:
            k.b.a.o r1 = r3.z
            k.b.a.o r2 = k.b.a.m2.f.f2000h
            boolean r1 = r1.b(r2)
            if (r1 == 0) goto L_0x0055
            k.b.a.m2.d r1 = new k.b.a.m2.d
            k.b.f.a.b r2 = r3.x
            k.b.f.a.c r2 = r2.b
            r1.<init>(r2)
            k.b.a.t r1 = r1.c()
            r0.a((k.b.a.e) r1)
            k.b.a.m2.d r1 = new k.b.a.m2.d
            k.b.f.a.b r2 = r3.x
            k.b.f.a.c r2 = r2.f2048c
            r1.<init>(r2)
            goto L_0x0029
        L_0x0055:
            byte[] r1 = r3.y
            if (r1 == 0) goto L_0x0061
            k.b.a.r0 r2 = new k.b.a.r0
            r2.<init>((byte[]) r1)
            r0.a((k.b.a.e) r2)
        L_0x0061:
            k.b.a.e1 r1 = new k.b.a.e1
            r1.<init>((k.b.a.f) r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: k.b.a.m2.a.c():k.b.a.t");
    }

    public a(b bVar, byte[] bArr) {
        o oVar;
        this.x = bVar;
        this.y = k.b.c.e.a.a(bArr);
        boolean z2 = false;
        if (this.x.a.a() == 1) {
            oVar = f.f1999g;
        } else {
            k.b.f.b.a aVar = this.x.a;
            if (aVar.a() > 1 && aVar.b().equals(k.b.f.a.a.f2047c) && (aVar instanceof e)) {
                z2 = true;
            }
            if (z2) {
                oVar = f.f2000h;
            } else {
                throw new IllegalArgumentException("This type of ECCurve is not implemented");
            }
        }
        this.z = oVar;
    }
}
