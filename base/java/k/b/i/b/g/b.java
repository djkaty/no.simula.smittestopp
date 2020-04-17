package k.b.i.b.g;

import java.io.Serializable;
import java.util.Map;
import java.util.TreeMap;
import k.b.a.o;

public class b implements Serializable {
    public final Map<Integer, a> x = new TreeMap();
    public transient long y;

    public b(long j2) {
        this.y = j2;
    }

    public b(b bVar, long j2) {
        for (Integer next : bVar.x.keySet()) {
            this.x.put(next, new a(bVar.x.get(next)));
        }
        this.y = j2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x00e1  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0116  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0136 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public b(k.b.i.b.g.r r28, long r29, byte[] r31, byte[] r32) {
        /*
            r27 = this;
            r0 = r27
            r1 = r28
            r2 = r31
            r3 = r32
            r27.<init>()
            java.util.TreeMap r4 = new java.util.TreeMap
            r4.<init>()
            r0.x = r4
            int r4 = r1.f2134c
            r5 = 1
            long r7 = r5 << r4
            long r7 = r7 - r5
            r0.y = r7
            r9 = 0
        L_0x001d:
            int r4 = (r9 > r29 ? 1 : (r9 == r29 ? 0 : -1))
            if (r4 >= 0) goto L_0x0151
            k.b.i.b.g.w r4 = r1.b
            int r11 = r4.b
            long r12 = r9 >> r11
            long r14 = r5 << r11
            long r14 = r14 - r5
            long r5 = r9 & r14
            int r6 = (int) r5
            k.b.i.b.g.j$b r5 = new k.b.i.b.g.j$b
            r5.<init>()
            k.b.i.b.g.o$a r5 = r5.a((long) r12)
            k.b.i.b.g.j$b r5 = (k.b.i.b.g.j.b) r5
            r5.f2119e = r6
            k.b.i.b.g.o r5 = r5.b()
            k.b.i.b.g.j r5 = (k.b.i.b.g.j) r5
            r16 = 1
            int r7 = r16 << r11
            int r8 = r7 + -1
            r19 = r12
            r12 = 0
            if (r6 >= r8) goto L_0x0086
            java.util.Map<java.lang.Integer, k.b.i.b.g.a> r13 = r0.x
            r21 = r8
            java.lang.Integer r8 = java.lang.Integer.valueOf(r12)
            java.lang.Object r8 = r13.get(r8)
            k.b.i.b.g.a r8 = (k.b.i.b.g.a) r8
            if (r8 == 0) goto L_0x0062
            if (r6 != 0) goto L_0x005e
            goto L_0x0062
        L_0x005e:
            r23 = r4
            r8 = 0
            goto L_0x0082
        L_0x0062:
            k.b.i.b.g.a r6 = new k.b.i.b.g.a
            k.b.i.b.g.k r8 = r4.a()
            int r13 = r4.b
            int r12 = r4.f2155c
            int r22 = r16 << r13
            r23 = r4
            int r4 = r22 + -1
            r6.<init>((k.b.i.b.g.k) r8, (int) r13, (int) r12, (int) r4)
            r6.a(r2, r3, r5)
            java.util.Map<java.lang.Integer, k.b.i.b.g.a> r4 = r0.x
            r8 = 0
            java.lang.Integer r12 = java.lang.Integer.valueOf(r8)
            r4.put(r12, r6)
        L_0x0082:
            r0.a(r8, r2, r3, r5)
            goto L_0x008b
        L_0x0086:
            r23 = r4
            r21 = r8
            r8 = 0
        L_0x008b:
            r12 = r19
            r4 = 1
        L_0x008e:
            int r5 = r1.f2135d
            if (r4 >= r5) goto L_0x0147
            long r5 = r12 & r14
            int r6 = (int) r5
            long r12 = r12 >> r11
            k.b.i.b.g.j$b r5 = new k.b.i.b.g.j$b
            r5.<init>()
            k.b.i.b.g.o$a r5 = r5.b(r4)
            k.b.i.b.g.j$b r5 = (k.b.i.b.g.j.b) r5
            k.b.i.b.g.o$a r5 = r5.a((long) r12)
            k.b.i.b.g.j$b r5 = (k.b.i.b.g.j.b) r5
            r5.f2119e = r6
            k.b.i.b.g.o r5 = r5.b()
            k.b.i.b.g.j r5 = (k.b.i.b.g.j) r5
            java.util.Map<java.lang.Integer, k.b.i.b.g.a> r8 = r0.x
            java.lang.Integer r1 = java.lang.Integer.valueOf(r4)
            java.lang.Object r1 = r8.get(r1)
            if (r1 == 0) goto L_0x00e8
            r17 = 0
            int r1 = (r9 > r17 ? 1 : (r9 == r17 ? 0 : -1))
            if (r1 != 0) goto L_0x00c7
            r1 = r11
            r19 = r12
            r24 = r14
            goto L_0x00dd
        L_0x00c7:
            r1 = r11
            r19 = r12
            double r11 = (double) r7
            int r8 = r4 + 1
            r24 = r14
            double r13 = (double) r8
            double r11 = java.lang.Math.pow(r11, r13)
            long r11 = (long) r11
            long r11 = r9 % r11
            int r8 = (r11 > r17 ? 1 : (r11 == r17 ? 0 : -1))
            if (r8 != 0) goto L_0x00dd
            r8 = 1
            goto L_0x00de
        L_0x00dd:
            r8 = 0
        L_0x00de:
            if (r8 == 0) goto L_0x00e1
            goto L_0x00ed
        L_0x00e1:
            r22 = r1
            r1 = r21
            r26 = r23
            goto L_0x0112
        L_0x00e8:
            r1 = r11
            r19 = r12
            r24 = r14
        L_0x00ed:
            java.util.Map<java.lang.Integer, k.b.i.b.g.a> r8 = r0.x
            java.lang.Integer r11 = java.lang.Integer.valueOf(r4)
            k.b.i.b.g.a r12 = new k.b.i.b.g.a
            k.b.i.b.g.k r13 = r23.a()
            r14 = r23
            int r15 = r14.b
            r22 = r1
            int r1 = r14.f2155c
            int r23 = r16 << r15
            r26 = r14
            int r14 = r23 + -1
            r12.<init>((k.b.i.b.g.k) r13, (int) r15, (int) r1, (int) r14)
            r12.a(r2, r3, r5)
            r8.put(r11, r12)
            r1 = r21
        L_0x0112:
            r11 = 0
            if (r6 >= r1) goto L_0x0136
            int r6 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r6 != 0) goto L_0x011b
            goto L_0x0130
        L_0x011b:
            r13 = 1
            long r17 = r9 + r13
            double r13 = (double) r7
            double r11 = (double) r4
            double r11 = java.lang.Math.pow(r13, r11)
            long r11 = (long) r11
            long r17 = r17 % r11
            r11 = 0
            int r6 = (r17 > r11 ? 1 : (r17 == r11 ? 0 : -1))
            if (r6 != 0) goto L_0x0130
            r6 = 1
            goto L_0x0131
        L_0x0130:
            r6 = 0
        L_0x0131:
            if (r6 == 0) goto L_0x0136
            r0.a(r4, r2, r3, r5)
        L_0x0136:
            int r4 = r4 + 1
            r21 = r1
            r12 = r19
            r11 = r22
            r14 = r24
            r23 = r26
            r8 = 0
            r1 = r28
            goto L_0x008e
        L_0x0147:
            r11 = 0
            r4 = 1
            long r9 = r9 + r4
            r1 = r28
            r5 = r4
            goto L_0x001d
        L_0x0151:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.b.i.b.g.b.<init>(k.b.i.b.g.r, long, byte[], byte[]):void");
    }

    public a a(int i2, byte[] bArr, byte[] bArr2, j jVar) {
        Map<Integer, a> map = this.x;
        Integer valueOf = Integer.valueOf(i2);
        a aVar = this.x.get(Integer.valueOf(i2));
        if (aVar != null) {
            return map.put(valueOf, new a(aVar, bArr, bArr2, jVar));
        }
        throw null;
    }

    public b a(o oVar) {
        b bVar = new b(this.y);
        for (Integer next : this.x.keySet()) {
            Map<Integer, a> map = bVar.x;
            a aVar = this.x.get(next);
            if (aVar != null) {
                map.put(next, new a(aVar, oVar));
            } else {
                throw null;
            }
        }
        return bVar;
    }
}
