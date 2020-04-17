package k.b.a;

public class e0 extends a {
    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public e0(int r5, k.b.a.f r6) {
        /*
            r4 = this;
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream
            r0.<init>()
            r1 = 0
        L_0x0006:
            int r2 = r6.b
            if (r1 == r2) goto L_0x0034
            k.b.a.e r2 = r6.a((int) r1)     // Catch:{ IOException -> 0x001c }
            k.b.a.n r2 = (k.b.a.n) r2     // Catch:{ IOException -> 0x001c }
            java.lang.String r3 = "BER"
            byte[] r2 = r2.a((java.lang.String) r3)     // Catch:{ IOException -> 0x001c }
            r0.write(r2)     // Catch:{ IOException -> 0x001c }
            int r1 = r1 + 1
            goto L_0x0006
        L_0x001c:
            r5 = move-exception
            k.b.a.s r6 = new k.b.a.s
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "malformed object: "
            r0.append(r1)
            r0.append(r5)
            java.lang.String r0 = r0.toString()
            r6.<init>(r0, r5)
            throw r6
        L_0x0034:
            byte[] r6 = r0.toByteArray()
            r0 = 1
            r4.<init>(r0, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.b.a.e0.<init>(int, k.b.a.f):void");
    }

    public void a(r rVar, boolean z) {
        int i2 = this.x ? 96 : 64;
        int i3 = this.y;
        byte[] bArr = this.z;
        rVar.a(z, i2, i3);
        rVar.a.write(128);
        rVar.a.write(bArr, 0, bArr.length);
        rVar.a.write(0);
        rVar.a.write(0);
    }
}
