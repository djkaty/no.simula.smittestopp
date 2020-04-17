package e.b.a.a;

import java.io.Serializable;

public class g implements Serializable {
    public final int A;
    public final transient Object B;
    public final long x;
    public final long y;
    public final int z;

    static {
        new g((Object) null, -1, -1, -1, -1);
    }

    public g(Object obj, long j2, int i2, int i3) {
        this.B = obj;
        this.x = -1;
        this.y = j2;
        this.z = i2;
        this.A = i3;
    }

    public final int a(StringBuilder sb, String str) {
        sb.append('\"');
        sb.append(str);
        sb.append('\"');
        return str.length();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        Object obj2 = this.B;
        if (obj2 == null) {
            if (gVar.B != null) {
                return false;
            }
        } else if (!obj2.equals(gVar.B)) {
            return false;
        }
        if (this.z == gVar.z && this.A == gVar.A && this.y == gVar.y && this.x == gVar.x) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        Object obj = this.B;
        return ((((obj == null ? 1 : obj.hashCode()) ^ this.z) + this.A) ^ ((int) this.y)) + ((int) this.x);
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x00bb  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String toString() {
        /*
            r9 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = 80
            r0.<init>(r1)
            java.lang.String r1 = "[Source: "
            r0.append(r1)
            java.lang.Object r1 = r9.B
            r2 = 93
            if (r1 != 0) goto L_0x0019
            java.lang.String r1 = "UNKNOWN"
            r0.append(r1)
            goto L_0x00c9
        L_0x0019:
            boolean r3 = r1 instanceof java.lang.Class
            if (r3 == 0) goto L_0x0021
            r3 = r1
            java.lang.Class r3 = (java.lang.Class) r3
            goto L_0x0025
        L_0x0021:
            java.lang.Class r3 = r1.getClass()
        L_0x0025:
            java.lang.String r4 = r3.getName()
            java.lang.String r5 = "java."
            boolean r5 = r4.startsWith(r5)
            if (r5 == 0) goto L_0x0036
            java.lang.String r4 = r3.getSimpleName()
            goto L_0x0043
        L_0x0036:
            boolean r3 = r1 instanceof byte[]
            if (r3 == 0) goto L_0x003d
            java.lang.String r4 = "byte[]"
            goto L_0x0043
        L_0x003d:
            boolean r3 = r1 instanceof char[]
            if (r3 == 0) goto L_0x0043
            java.lang.String r4 = "char[]"
        L_0x0043:
            r3 = 40
            r0.append(r3)
            r0.append(r4)
            r3 = 41
            r0.append(r3)
            boolean r3 = r1 instanceof java.lang.CharSequence
            r4 = 500(0x1f4, float:7.0E-43)
            r5 = 0
            java.lang.String r6 = " chars"
            if (r3 == 0) goto L_0x0070
            java.lang.CharSequence r1 = (java.lang.CharSequence) r1
            int r3 = r1.length()
            int r4 = java.lang.Math.min(r3, r4)
            java.lang.CharSequence r1 = r1.subSequence(r5, r4)
            java.lang.String r1 = r1.toString()
            int r1 = r9.a(r0, r1)
            goto L_0x008f
        L_0x0070:
            boolean r3 = r1 instanceof char[]
            r7 = 34
            if (r3 == 0) goto L_0x0092
            char[] r1 = (char[]) r1
            int r3 = r1.length
            java.lang.String r8 = new java.lang.String
            int r4 = java.lang.Math.min(r3, r4)
            r8.<init>(r1, r5, r4)
            r0.append(r7)
            r0.append(r8)
            r0.append(r7)
            int r1 = r8.length()
        L_0x008f:
            int r5 = r3 - r1
            goto L_0x00b9
        L_0x0092:
            boolean r3 = r1 instanceof byte[]
            if (r3 == 0) goto L_0x00b9
            byte[] r1 = (byte[]) r1
            int r3 = r1.length
            int r3 = java.lang.Math.min(r3, r4)
            java.lang.String r4 = new java.lang.String
            java.lang.String r6 = "UTF-8"
            java.nio.charset.Charset r6 = java.nio.charset.Charset.forName(r6)
            r4.<init>(r1, r5, r3, r6)
            r0.append(r7)
            r0.append(r4)
            r0.append(r7)
            r4.length()
            int r1 = r1.length
            int r5 = r1 - r3
            java.lang.String r6 = " bytes"
        L_0x00b9:
            if (r5 <= 0) goto L_0x00c9
            java.lang.String r1 = "[truncated "
            r0.append(r1)
            r0.append(r5)
            r0.append(r6)
            r0.append(r2)
        L_0x00c9:
            java.lang.String r1 = "; line: "
            r0.append(r1)
            int r1 = r9.z
            r0.append(r1)
            java.lang.String r1 = ", column: "
            r0.append(r1)
            int r1 = r9.A
            r0.append(r1)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: e.b.a.a.g.toString():java.lang.String");
    }

    public g(Object obj, long j2, long j3, int i2, int i3) {
        this.B = obj;
        this.x = j2;
        this.y = j3;
        this.z = i2;
        this.A = i3;
    }
}
