package e.b.a.a.p;

import e.b.a.a.n;
import java.io.Serializable;

public class g implements n, Serializable {
    public final String x;
    public byte[] y;

    public g(String str) {
        if (str != null) {
            this.x = str;
            return;
        }
        throw new IllegalStateException("Null String illegal for SerializedString");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:62:0x014d, code lost:
        r0 = r1.a;
        r0.A = r8;
        r0 = r0.c();
        r14.y = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:73:?, code lost:
        return r0;
     */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x013a  */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x0141 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final byte[] a() {
        /*
            r14 = this;
            byte[] r0 = r14.y
            if (r0 != 0) goto L_0x0157
            java.lang.String r0 = r14.x
            java.lang.ThreadLocal<java.lang.ref.SoftReference<e.b.a.a.p.d>> r1 = e.b.a.a.s.b.b
            java.lang.Object r1 = r1.get()
            java.lang.ref.SoftReference r1 = (java.lang.ref.SoftReference) r1
            r2 = 0
            if (r1 != 0) goto L_0x0013
            r1 = r2
            goto L_0x0019
        L_0x0013:
            java.lang.Object r1 = r1.get()
            e.b.a.a.p.d r1 = (e.b.a.a.p.d) r1
        L_0x0019:
            if (r1 != 0) goto L_0x002a
            e.b.a.a.p.d r1 = new e.b.a.a.p.d
            r1.<init>()
            java.lang.ThreadLocal<java.lang.ref.SoftReference<e.b.a.a.p.d>> r3 = e.b.a.a.s.b.b
            java.lang.ref.SoftReference r4 = new java.lang.ref.SoftReference
            r4.<init>(r1)
            r3.set(r4)
        L_0x002a:
            e.b.a.a.s.c r3 = r1.a
            if (r3 != 0) goto L_0x0035
            e.b.a.a.s.c r3 = new e.b.a.a.s.c
            r3.<init>(r2)
            r1.a = r3
        L_0x0035:
            int r4 = r0.length()
            r3.b()
            byte[] r5 = r3.z
            int r6 = r5.length
            r7 = 0
            r8 = 0
        L_0x0041:
            if (r7 >= r4) goto L_0x014d
            int r9 = r7 + 1
            char r7 = r0.charAt(r7)
        L_0x0049:
            r10 = 127(0x7f, float:1.78E-43)
            if (r7 > r10) goto L_0x006a
            if (r8 < r6) goto L_0x0056
            r3.a()
            byte[] r5 = r3.z
            int r6 = r5.length
            r8 = 0
        L_0x0056:
            int r10 = r8 + 1
            byte r7 = (byte) r7
            r5[r8] = r7
            if (r9 < r4) goto L_0x0060
            r8 = r10
            goto L_0x014d
        L_0x0060:
            int r7 = r9 + 1
            char r8 = r0.charAt(r9)
            r9 = r7
            r7 = r8
            r8 = r10
            goto L_0x0049
        L_0x006a:
            if (r8 < r6) goto L_0x0073
            r3.a()
            byte[] r5 = r3.z
            int r6 = r5.length
            r8 = 0
        L_0x0073:
            r10 = 2048(0x800, float:2.87E-42)
            if (r7 >= r10) goto L_0x0082
            int r10 = r8 + 1
            int r11 = r7 >> 6
            r11 = r11 | 192(0xc0, float:2.69E-43)
            byte r11 = (byte) r11
            r5[r8] = r11
            goto L_0x0135
        L_0x0082:
            r10 = 55296(0xd800, float:7.7486E-41)
            if (r7 < r10) goto L_0x0117
            r11 = 57343(0xdfff, float:8.0355E-41)
            if (r7 <= r11) goto L_0x008e
            goto L_0x0117
        L_0x008e:
            r12 = 56319(0xdbff, float:7.892E-41)
            if (r7 > r12) goto L_0x0113
            if (r9 >= r4) goto L_0x010f
            int r12 = r9 + 1
            char r9 = r0.charAt(r9)
            r13 = 56320(0xdc00, float:7.8921E-41)
            if (r9 < r13) goto L_0x00e7
            if (r9 > r11) goto L_0x00e7
            r11 = 65536(0x10000, float:9.18355E-41)
            int r7 = r7 - r10
            int r7 = r7 << 10
            int r7 = r7 + r11
            int r9 = r9 - r13
            int r7 = r7 + r9
            r9 = 1114111(0x10ffff, float:1.561202E-39)
            if (r7 > r9) goto L_0x00e3
            int r9 = r8 + 1
            int r10 = r7 >> 18
            r10 = r10 | 240(0xf0, float:3.36E-43)
            byte r10 = (byte) r10
            r5[r8] = r10
            if (r9 < r6) goto L_0x00c1
            r3.a()
            byte[] r5 = r3.z
            int r6 = r5.length
            r9 = 0
        L_0x00c1:
            int r8 = r9 + 1
            int r10 = r7 >> 12
            r10 = r10 & 63
            r10 = r10 | 128(0x80, float:1.794E-43)
            byte r10 = (byte) r10
            r5[r9] = r10
            if (r8 < r6) goto L_0x00d5
            r3.a()
            byte[] r5 = r3.z
            int r6 = r5.length
            r8 = 0
        L_0x00d5:
            int r9 = r8 + 1
            int r10 = r7 >> 6
            r10 = r10 & 63
            r10 = r10 | 128(0x80, float:1.794E-43)
            byte r10 = (byte) r10
            r5[r8] = r10
            r8 = r7
            r7 = r12
            goto L_0x0138
        L_0x00e3:
            e.b.a.a.p.d.a(r7)
            throw r2
        L_0x00e7:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "Broken surrogate pair: first char 0x"
            java.lang.StringBuilder r1 = e.a.a.a.a.a(r1)
            java.lang.String r2 = java.lang.Integer.toHexString(r7)
            r1.append(r2)
            java.lang.String r2 = ", second 0x"
            r1.append(r2)
            java.lang.String r2 = java.lang.Integer.toHexString(r9)
            r1.append(r2)
            java.lang.String r2 = "; illegal combination"
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x010f:
            e.b.a.a.p.d.a(r7)
            throw r2
        L_0x0113:
            e.b.a.a.p.d.a(r7)
            throw r2
        L_0x0117:
            int r10 = r8 + 1
            int r11 = r7 >> 12
            r11 = r11 | 224(0xe0, float:3.14E-43)
            byte r11 = (byte) r11
            r5[r8] = r11
            if (r10 < r6) goto L_0x0129
            r3.a()
            byte[] r5 = r3.z
            int r6 = r5.length
            r10 = 0
        L_0x0129:
            int r8 = r10 + 1
            int r11 = r7 >> 6
            r11 = r11 & 63
            r11 = r11 | 128(0x80, float:1.794E-43)
            byte r11 = (byte) r11
            r5[r10] = r11
            r10 = r8
        L_0x0135:
            r8 = r7
            r7 = r9
            r9 = r10
        L_0x0138:
            if (r9 < r6) goto L_0x0141
            r3.a()
            byte[] r5 = r3.z
            int r6 = r5.length
            r9 = 0
        L_0x0141:
            int r10 = r9 + 1
            r8 = r8 & 63
            r8 = r8 | 128(0x80, float:1.794E-43)
            byte r8 = (byte) r8
            r5[r9] = r8
            r8 = r10
            goto L_0x0041
        L_0x014d:
            e.b.a.a.s.c r0 = r1.a
            r0.A = r8
            byte[] r0 = r0.c()
            r14.y = r0
        L_0x0157:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: e.b.a.a.p.g.a():byte[]");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != g.class) {
            return false;
        }
        return this.x.equals(((g) obj).x);
    }

    public final int hashCode() {
        return this.x.hashCode();
    }

    public final String toString() {
        return this.x;
    }
}
