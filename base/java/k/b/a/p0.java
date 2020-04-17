package k.b.a;

import java.io.InputStream;

public class p0 extends InputStream {
    public final z x;
    public boolean y = true;
    public InputStream z;

    public p0(z zVar) {
        this.x = zVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0041  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int read() {
        /*
            r6 = this;
            java.io.InputStream r0 = r6.z
            java.lang.String r1 = "unknown object encountered: "
            r2 = -1
            if (r0 != 0) goto L_0x0037
            boolean r0 = r6.y
            if (r0 != 0) goto L_0x000c
            return r2
        L_0x000c:
            k.b.a.z r0 = r6.x
            k.b.a.e r0 = r0.a()
            if (r0 != 0) goto L_0x0015
            return r2
        L_0x0015:
            boolean r3 = r0 instanceof k.b.a.q
            if (r3 == 0) goto L_0x0022
            k.b.a.q r0 = (k.b.a.q) r0
            r3 = 0
            r6.y = r3
            r3 = -1
            r2 = r1
            r1 = r6
            goto L_0x0058
        L_0x0022:
            java.io.IOException r2 = new java.io.IOException
            java.lang.StringBuilder r1 = e.a.a.a.a.a(r1)
            java.lang.Class r0 = r0.getClass()
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            r2.<init>(r0)
            throw r2
        L_0x0037:
            r0 = r6
        L_0x0038:
            java.io.InputStream r3 = r0.z
            int r3 = r3.read()
            if (r3 < 0) goto L_0x0041
            return r3
        L_0x0041:
            k.b.a.z r3 = r0.x
            k.b.a.e r3 = r3.a()
            if (r3 != 0) goto L_0x004d
            r1 = 0
            r0.z = r1
            return r2
        L_0x004d:
            boolean r4 = r3 instanceof k.b.a.q
            if (r4 == 0) goto L_0x0062
            k.b.a.q r3 = (k.b.a.q) r3
            r5 = r1
            r1 = r0
            r0 = r3
            r3 = r2
            r2 = r5
        L_0x0058:
            java.io.InputStream r0 = r0.b()
            r1.z = r0
            r0 = r1
            r1 = r2
            r2 = r3
            goto L_0x0038
        L_0x0062:
            java.io.IOException r0 = new java.io.IOException
            java.lang.StringBuilder r1 = e.a.a.a.a.a(r1)
            java.lang.Class r2 = r3.getClass()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k.b.a.p0.read():int");
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:47)
        	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:81)
        */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0049 A[EDGE_INSN: B:30:0x0049->B:19:0x0049 ?: BREAK  , SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0048 A[SYNTHETIC] */
    public int read(byte[] r9, int r10, int r11) {
        /*
            r8 = this;
            java.io.InputStream r0 = r8.z
            java.lang.String r1 = "unknown object encountered: "
            r2 = 0
            r3 = -1
            if (r0 != 0) goto L_0x0038
            boolean r0 = r8.y
            if (r0 != 0) goto L_0x000d
            return r3
        L_0x000d:
            k.b.a.z r0 = r8.x
            k.b.a.e r0 = r0.a()
            if (r0 != 0) goto L_0x0016
            return r3
        L_0x0016:
            boolean r4 = r0 instanceof k.b.a.q
            if (r4 == 0) goto L_0x0023
            k.b.a.q r0 = (k.b.a.q) r0
            r8.y = r2
            r3 = 0
            r4 = -1
            r2 = r1
            r1 = r8
            goto L_0x0065
        L_0x0023:
            java.io.IOException r9 = new java.io.IOException
            java.lang.StringBuilder r10 = e.a.a.a.a.a(r1)
            java.lang.Class r11 = r0.getClass()
            r10.append(r11)
            java.lang.String r10 = r10.toString()
            r9.<init>(r10)
            throw r9
        L_0x0038:
            r0 = r8
        L_0x0039:
            java.io.InputStream r4 = r0.z
            int r5 = r10 + r2
            int r6 = r11 - r2
            int r4 = r4.read(r9, r5, r6)
            if (r4 < 0) goto L_0x0049
            int r2 = r2 + r4
            if (r2 != r11) goto L_0x0039
            return r2
        L_0x0049:
            k.b.a.z r4 = r0.x
            k.b.a.e r4 = r4.a()
            if (r4 != 0) goto L_0x0059
            r9 = 0
            r0.z = r9
            r9 = 1
            if (r2 >= r9) goto L_0x0058
            r2 = r3
        L_0x0058:
            return r2
        L_0x0059:
            boolean r5 = r4 instanceof k.b.a.q
            if (r5 == 0) goto L_0x0070
            k.b.a.q r4 = (k.b.a.q) r4
            r7 = r1
            r1 = r0
            r0 = r4
            r4 = r3
            r3 = r2
            r2 = r7
        L_0x0065:
            java.io.InputStream r0 = r0.b()
            r1.z = r0
            r0 = r1
            r1 = r2
            r2 = r3
            r3 = r4
            goto L_0x0039
        L_0x0070:
            java.io.IOException r9 = new java.io.IOException
            java.lang.StringBuilder r10 = e.a.a.a.a.a(r1)
            java.lang.Class r11 = r4.getClass()
            r10.append(r11)
            java.lang.String r10 = r10.toString()
            r9.<init>(r10)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: k.b.a.p0.read(byte[], int, int):int");
    }
}
