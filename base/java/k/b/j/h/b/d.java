package k.b.j.h.b;

import java.io.BufferedReader;
import java.io.Reader;

public class d extends BufferedReader {
    public d(Reader reader) {
        super(reader);
    }

    /*  JADX ERROR: StackOverflow in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: 
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:47)
        	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:81)
        */
    public k.b.j.h.b.b a() {
        /*
            r8 = this;
        L_0x0000:
            java.lang.String r0 = r8.readLine()
            if (r0 == 0) goto L_0x000f
            java.lang.String r1 = "-----BEGIN "
            boolean r1 = r0.startsWith(r1)
            if (r1 != 0) goto L_0x000f
            goto L_0x0000
        L_0x000f:
            if (r0 == 0) goto L_0x009b
            r1 = 11
            java.lang.String r0 = r0.substring(r1)
            r1 = 45
            int r1 = r0.indexOf(r1)
            if (r1 <= 0) goto L_0x009b
            java.lang.String r2 = "-----"
            boolean r2 = r0.endsWith(r2)
            if (r2 == 0) goto L_0x009b
            int r2 = r0.length()
            int r2 = r2 - r1
            r3 = 5
            if (r2 != r3) goto L_0x009b
            r2 = 0
            java.lang.String r0 = r0.substring(r2, r1)
            java.lang.String r1 = "-----END "
            java.lang.String r1 = e.a.a.a.a.b(r1, r0)
            java.lang.StringBuffer r3 = new java.lang.StringBuffer
            r3.<init>()
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
        L_0x0044:
            java.lang.String r5 = r8.readLine()
            if (r5 == 0) goto L_0x007f
            java.lang.String r6 = ":"
            int r6 = r5.indexOf(r6)
            if (r6 < 0) goto L_0x006f
            r6 = 58
            int r6 = r5.indexOf(r6)
            java.lang.String r7 = r5.substring(r2, r6)
            int r6 = r6 + 1
            java.lang.String r5 = r5.substring(r6)
            java.lang.String r5 = r5.trim()
            k.b.j.h.b.a r6 = new k.b.j.h.b.a
            r6.<init>(r7, r5)
            r4.add(r6)
            goto L_0x0044
        L_0x006f:
            int r6 = r5.indexOf(r1)
            r7 = -1
            if (r6 == r7) goto L_0x0077
            goto L_0x007f
        L_0x0077:
            java.lang.String r5 = r5.trim()
            r3.append(r5)
            goto L_0x0044
        L_0x007f:
            if (r5 == 0) goto L_0x008f
            k.b.j.h.b.b r1 = new k.b.j.h.b.b
            java.lang.String r2 = r3.toString()
            byte[] r2 = k.b.j.g.a.a(r2)
            r1.<init>(r0, r4, r2)
            return r1
        L_0x008f:
            java.io.IOException r0 = new java.io.IOException
            java.lang.String r2 = " not found"
            java.lang.String r1 = e.a.a.a.a.b(r1, r2)
            r0.<init>(r1)
            throw r0
        L_0x009b:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k.b.j.h.b.d.a():k.b.j.h.b.b");
    }
}
