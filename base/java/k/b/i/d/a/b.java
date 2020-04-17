package k.b.i.d.a;

import com.microsoft.identity.common.internal.eststelemetry.Schema;
import k.b.c.e.a;

public class b {
    public int a = 0;
    public int b;

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v1, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v2, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v0, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v3, resolved type: byte} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public b(byte[] r10) {
        /*
            r9 = this;
            r9.<init>()
            r0 = 0
            r9.a = r0
            int r1 = r10.length
            java.lang.String r2 = "byte array is not an encoded finite field"
            r3 = 4
            if (r1 != r3) goto L_0x005f
            byte r1 = r10[r0]
            r1 = r1 & 255(0xff, float:3.57E-43)
            r3 = 1
            byte r4 = r10[r3]
            r4 = r4 & 255(0xff, float:3.57E-43)
            int r4 = r4 << 8
            r1 = r1 | r4
            r4 = 2
            byte r5 = r10[r4]
            r5 = r5 & 255(0xff, float:3.57E-43)
            int r5 = r5 << 16
            r1 = r1 | r5
            r5 = 3
            byte r10 = r10[r5]
            r10 = r10 & 255(0xff, float:3.57E-43)
            int r10 = r10 << 24
            r10 = r10 | r1
            r9.b = r10
            if (r10 != 0) goto L_0x002d
            goto L_0x004e
        L_0x002d:
            int r1 = k.b.c.e.a.b((int) r10)
            int r1 = r1 >>> r3
            r5 = 0
        L_0x0033:
            if (r5 >= r1) goto L_0x004d
            int r4 = k.b.c.e.a.a((int) r4, (int) r4, (int) r10)
            r6 = r4 ^ 2
            r7 = r6
            r6 = r10
        L_0x003d:
            if (r6 == 0) goto L_0x0047
            int r7 = k.b.c.e.a.a((int) r7, (int) r6)
            r8 = r7
            r7 = r6
            r6 = r8
            goto L_0x003d
        L_0x0047:
            if (r7 == r3) goto L_0x004a
            goto L_0x004e
        L_0x004a:
            int r5 = r5 + 1
            goto L_0x0033
        L_0x004d:
            r0 = 1
        L_0x004e:
            if (r0 == 0) goto L_0x0059
            int r10 = r9.b
            int r10 = k.b.c.e.a.b((int) r10)
            r9.a = r10
            return
        L_0x0059:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            r10.<init>(r2)
            throw r10
        L_0x005f:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            r10.<init>(r2)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: k.b.i.d.a.b.<init>(byte[]):void");
    }

    public int a(int i2) {
        int i3 = (1 << this.a) - 2;
        if (i3 == 0) {
            return 1;
        }
        if (i2 == 0) {
            return 0;
        }
        if (i2 == 1) {
            return 1;
        }
        if (i3 < 0) {
            i2 = a(i2);
            i3 = -i3;
        }
        int i4 = 1;
        while (i3 != 0) {
            if ((i3 & 1) == 1) {
                i4 = a(i4, i2);
            }
            i2 = a(i2, i2);
            i3 >>>= 1;
        }
        return i4;
    }

    public int a(int i2, int i3) {
        return a.a(i2, i3, this.b);
    }

    public byte[] a() {
        int i2 = this.b;
        return new byte[]{(byte) i2, (byte) (i2 >>> 8), (byte) (i2 >>> 16), (byte) (i2 >>> 24)};
    }

    public boolean b(int i2) {
        int i3 = this.a;
        return i3 == 31 ? i2 >= 0 : i2 >= 0 && i2 < (1 << i3);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof b)) {
            b bVar = (b) obj;
            return this.a == bVar.a && this.b == bVar.b;
        }
    }

    public int hashCode() {
        return this.b;
    }

    public String toString() {
        String str;
        StringBuilder a2 = e.a.a.a.a.a("Finite Field GF(2^");
        a2.append(this.a);
        a2.append(") = GF(2)[X]/<");
        int i2 = this.b;
        if (i2 == 0) {
            str = Schema.Value.FALSE;
        } else {
            String str2 = ((byte) (i2 & 1)) == 1 ? "1" : "";
            int i3 = i2 >>> 1;
            int i4 = 1;
            while (i3 != 0) {
                if (((byte) (i3 & 1)) == 1) {
                    str2 = str2 + "+x^" + i4;
                }
                i3 >>>= 1;
                i4++;
            }
            str = str2;
        }
        return e.a.a.a.a.a(a2, str, "> ");
    }
}
