package h.o;

import h.c;
import h.k.a.p;
import java.util.List;

public final class h extends h.k.b.h implements p<CharSequence, Integer, c<? extends Integer, ? extends Integer>> {
    public final /* synthetic */ List x;
    public final /* synthetic */ boolean y;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public h(List list, boolean z) {
        super(2);
        this.x = list;
        this.y = z;
    }

    /* JADX WARNING: Removed duplicated region for block: B:52:0x00df  */
    /* JADX WARNING: Removed duplicated region for block: B:66:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object a(java.lang.Object r14, java.lang.Object r15) {
        /*
            r13 = this;
            java.lang.CharSequence r14 = (java.lang.CharSequence) r14
            java.lang.Number r15 = (java.lang.Number) r15
            int r15 = r15.intValue()
            r6 = 0
            if (r14 == 0) goto L_0x00f3
            java.util.List r7 = r13.x
            boolean r8 = r13.y
            r0 = 0
            if (r8 != 0) goto L_0x004a
            int r1 = r7.size()
            r2 = 1
            if (r1 != r2) goto L_0x004a
            int r1 = r7.size()
            if (r1 == 0) goto L_0x0042
            if (r1 != r2) goto L_0x003a
            java.lang.Object r1 = r7.get(r0)
            java.lang.String r1 = (java.lang.String) r1
            int r14 = h.o.g.a((java.lang.CharSequence) r14, (java.lang.String) r1, (int) r15, (boolean) r0)
            if (r14 >= 0) goto L_0x002f
            goto L_0x00dc
        L_0x002f:
            java.lang.Integer r14 = java.lang.Integer.valueOf(r14)
            h.c r15 = new h.c
            r15.<init>(r14, r1)
            goto L_0x00dd
        L_0x003a:
            java.lang.IllegalArgumentException r14 = new java.lang.IllegalArgumentException
            java.lang.String r15 = "List has more than one element."
            r14.<init>(r15)
            throw r14
        L_0x0042:
            java.util.NoSuchElementException r14 = new java.util.NoSuchElementException
            java.lang.String r15 = "List is empty."
            r14.<init>(r15)
            throw r14
        L_0x004a:
            if (r15 >= 0) goto L_0x004d
            r15 = 0
        L_0x004d:
            h.l.c r0 = new h.l.c
            int r1 = r14.length()
            r0.<init>(r15, r1)
            boolean r15 = r14 instanceof java.lang.String
            if (r15 == 0) goto L_0x009c
            int r15 = r0.x
            int r9 = r0.y
            int r10 = r0.z
            if (r10 < 0) goto L_0x0065
            if (r15 > r9) goto L_0x00dc
            goto L_0x0067
        L_0x0065:
            if (r15 < r9) goto L_0x00dc
        L_0x0067:
            java.util.Iterator r11 = r7.iterator()
        L_0x006b:
            boolean r0 = r11.hasNext()
            if (r0 == 0) goto L_0x0089
            java.lang.Object r12 = r11.next()
            r0 = r12
            java.lang.String r0 = (java.lang.String) r0
            r1 = 0
            r2 = r14
            java.lang.String r2 = (java.lang.String) r2
            int r4 = r0.length()
            r3 = r15
            r5 = r8
            boolean r0 = h.o.g.a((java.lang.String) r0, (int) r1, (java.lang.String) r2, (int) r3, (int) r4, (boolean) r5)
            if (r0 == 0) goto L_0x006b
            goto L_0x008a
        L_0x0089:
            r12 = r6
        L_0x008a:
            java.lang.String r12 = (java.lang.String) r12
            if (r12 == 0) goto L_0x0098
            java.lang.Integer r14 = java.lang.Integer.valueOf(r15)
            h.c r15 = new h.c
            r15.<init>(r14, r12)
            goto L_0x00dd
        L_0x0098:
            if (r15 == r9) goto L_0x00dc
            int r15 = r15 + r10
            goto L_0x0067
        L_0x009c:
            int r15 = r0.x
            int r9 = r0.y
            int r10 = r0.z
            if (r10 < 0) goto L_0x00a7
            if (r15 > r9) goto L_0x00dc
            goto L_0x00a9
        L_0x00a7:
            if (r15 < r9) goto L_0x00dc
        L_0x00a9:
            java.util.Iterator r11 = r7.iterator()
        L_0x00ad:
            boolean r0 = r11.hasNext()
            if (r0 == 0) goto L_0x00c9
            java.lang.Object r12 = r11.next()
            r0 = r12
            java.lang.String r0 = (java.lang.String) r0
            r1 = 0
            int r4 = r0.length()
            r2 = r14
            r3 = r15
            r5 = r8
            boolean r0 = h.o.g.a((java.lang.CharSequence) r0, (int) r1, (java.lang.CharSequence) r2, (int) r3, (int) r4, (boolean) r5)
            if (r0 == 0) goto L_0x00ad
            goto L_0x00ca
        L_0x00c9:
            r12 = r6
        L_0x00ca:
            java.lang.String r12 = (java.lang.String) r12
            if (r12 == 0) goto L_0x00d8
            java.lang.Integer r14 = java.lang.Integer.valueOf(r15)
            h.c r15 = new h.c
            r15.<init>(r14, r12)
            goto L_0x00dd
        L_0x00d8:
            if (r15 == r9) goto L_0x00dc
            int r15 = r15 + r10
            goto L_0x00a9
        L_0x00dc:
            r15 = r6
        L_0x00dd:
            if (r15 == 0) goto L_0x00f2
            A r14 = r15.x
            B r15 = r15.y
            java.lang.String r15 = (java.lang.String) r15
            int r15 = r15.length()
            java.lang.Integer r15 = java.lang.Integer.valueOf(r15)
            h.c r6 = new h.c
            r6.<init>(r14, r15)
        L_0x00f2:
            return r6
        L_0x00f3:
            java.lang.String r14 = "$receiver"
            h.k.b.g.a((java.lang.String) r14)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: h.o.h.a(java.lang.Object, java.lang.Object):java.lang.Object");
    }
}
