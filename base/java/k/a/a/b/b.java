package k.a.a.b;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import k.a.a.b.d.a.d;
import k.a.a.b.d.a.e;
import k.a.a.b.d.a.f;
import k.a.a.b.d.a.g;
import k.a.a.b.d.a.h;
import k.a.a.b.d.a.i;
import k.a.a.b.d.a.j;
import k.a.a.b.d.a.k;

public class b {
    public static final k.a.a.b.d.a.b a = new k.a.a.b.d.a.a(new i(), new j(), new f((String[][]) d.f1561j.clone()), new f(new String[]{"\\\\", "\\"}, new String[]{"\\\"", "\""}, new String[]{"\\'", "'"}, new String[]{"\\", ""}));
    public static final k.a.a.b.d.a.b b = new k.a.a.b.d.a.a(new f(d.c()), new f((String[][]) d.b.clone()), new f((String[][]) d.f1555d.clone()), new h(new h.a[0]));

    public static class a extends k.a.a.b.d.a.b {
        public static final String b = String.valueOf('\"');

        /* renamed from: c  reason: collision with root package name */
        public static final char[] f1552c = {WWWAuthenticateHeader.COMMA, '\"', 13, 10};

        /* JADX WARNING: Removed duplicated region for block: B:21:0x0047  */
        /* JADX WARNING: Removed duplicated region for block: B:22:0x004f  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public int a(java.lang.CharSequence r12, int r13, java.io.Writer r14) {
            /*
                r11 = this;
                if (r13 != 0) goto L_0x0080
                java.lang.String r13 = r12.toString()
                char[] r0 = f1552c
                r1 = 0
                if (r13 == 0) goto L_0x0044
                if (r0 != 0) goto L_0x000e
                goto L_0x0044
            L_0x000e:
                int r2 = r13.length()
                int r3 = r2 + -1
                int r4 = r0.length
                int r5 = r4 + -1
                r6 = 0
            L_0x0018:
                if (r6 >= r2) goto L_0x0044
                char r7 = r13.charAt(r6)
                r8 = 0
            L_0x001f:
                if (r8 >= r4) goto L_0x0041
                char r9 = r0[r8]
                if (r9 != r7) goto L_0x003e
                boolean r9 = java.lang.Character.isHighSurrogate(r7)
                if (r9 == 0) goto L_0x003c
                if (r8 != r5) goto L_0x002e
                goto L_0x003c
            L_0x002e:
                if (r6 >= r3) goto L_0x003e
                int r9 = r8 + 1
                char r9 = r0[r9]
                int r10 = r6 + 1
                char r10 = r13.charAt(r10)
                if (r9 != r10) goto L_0x003e
            L_0x003c:
                r13 = 0
                goto L_0x0045
            L_0x003e:
                int r8 = r8 + 1
                goto L_0x001f
            L_0x0041:
                int r6 = r6 + 1
                goto L_0x0018
            L_0x0044:
                r13 = 1
            L_0x0045:
                if (r13 == 0) goto L_0x004f
                java.lang.String r13 = r12.toString()
                r14.write(r13)
                goto L_0x0077
            L_0x004f:
                r13 = 34
                r14.write(r13)
                java.lang.String r0 = r12.toString()
                java.lang.String r2 = b
                java.lang.StringBuilder r3 = new java.lang.StringBuilder
                r3.<init>()
                java.lang.String r4 = b
                r3.append(r4)
                java.lang.String r4 = b
                r3.append(r4)
                java.lang.String r3 = r3.toString()
                java.lang.String r0 = e.c.a.a.b.l.c.a((java.lang.String) r0, (java.lang.String) r2, (java.lang.String) r3)
                r14.write(r0)
                r14.write(r13)
            L_0x0077:
                int r13 = r12.length()
                int r12 = java.lang.Character.codePointCount(r12, r1, r13)
                return r12
            L_0x0080:
                java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
                java.lang.String r13 = "CsvEscaper should never reach the [1] index"
                r12.<init>(r13)
                throw r12
            */
            throw new UnsupportedOperationException("Method not decompiled: k.a.a.b.b.a.a(java.lang.CharSequence, int, java.io.Writer):int");
        }
    }

    /* renamed from: k.a.a.b.b$b  reason: collision with other inner class name */
    public static class C0094b extends k.a.a.b.d.a.b {
        public static final String b = String.valueOf('\"');

        /* renamed from: c  reason: collision with root package name */
        public static final char[] f1553c = {WWWAuthenticateHeader.COMMA, '\"', 13, 10};

        /* JADX WARNING: Removed duplicated region for block: B:29:0x0072  */
        /* JADX WARNING: Removed duplicated region for block: B:30:0x008f  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public int a(java.lang.CharSequence r13, int r14, java.io.Writer r15) {
            /*
                r12 = this;
                if (r14 != 0) goto L_0x00af
                r14 = 0
                char r0 = r13.charAt(r14)
                r1 = 34
                if (r0 != r1) goto L_0x009f
                int r0 = r13.length()
                r2 = 1
                int r0 = r0 - r2
                char r0 = r13.charAt(r0)
                if (r0 == r1) goto L_0x0019
                goto L_0x009f
            L_0x0019:
                int r0 = r13.length()
                int r0 = r0 - r2
                java.lang.CharSequence r0 = r13.subSequence(r2, r0)
                java.lang.String r0 = r0.toString()
                char[] r1 = f1553c
                boolean r3 = e.c.a.a.b.l.c.a((java.lang.CharSequence) r0)
                if (r3 != 0) goto L_0x006f
                if (r1 == 0) goto L_0x0036
                int r3 = r1.length
                if (r3 != 0) goto L_0x0034
                goto L_0x0036
            L_0x0034:
                r3 = 0
                goto L_0x0037
            L_0x0036:
                r3 = 1
            L_0x0037:
                if (r3 == 0) goto L_0x003a
                goto L_0x006f
            L_0x003a:
                int r3 = r0.length()
                int r4 = r1.length
                int r5 = r3 + -1
                int r6 = r4 + -1
                r7 = 0
            L_0x0044:
                if (r7 >= r3) goto L_0x006f
                char r8 = r0.charAt(r7)
                r9 = 0
            L_0x004b:
                if (r9 >= r4) goto L_0x006c
                char r10 = r1[r9]
                if (r10 != r8) goto L_0x0069
                boolean r10 = java.lang.Character.isHighSurrogate(r8)
                if (r10 == 0) goto L_0x0070
                if (r9 != r6) goto L_0x005a
                goto L_0x0070
            L_0x005a:
                if (r7 >= r5) goto L_0x0069
                int r10 = r9 + 1
                char r10 = r1[r10]
                int r11 = r7 + 1
                char r11 = r0.charAt(r11)
                if (r10 != r11) goto L_0x0069
                goto L_0x0070
            L_0x0069:
                int r9 = r9 + 1
                goto L_0x004b
            L_0x006c:
                int r7 = r7 + 1
                goto L_0x0044
            L_0x006f:
                r2 = 0
            L_0x0070:
                if (r2 == 0) goto L_0x008f
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = b
                r1.append(r2)
                java.lang.String r2 = b
                r1.append(r2)
                java.lang.String r1 = r1.toString()
                java.lang.String r2 = b
                java.lang.String r0 = e.c.a.a.b.l.c.a((java.lang.String) r0, (java.lang.String) r1, (java.lang.String) r2)
                r15.write(r0)
                goto L_0x0096
            L_0x008f:
                java.lang.String r0 = r13.toString()
                r15.write(r0)
            L_0x0096:
                int r15 = r13.length()
                int r13 = java.lang.Character.codePointCount(r13, r14, r15)
                return r13
            L_0x009f:
                java.lang.String r0 = r13.toString()
                r15.write(r0)
                int r15 = r13.length()
                int r13 = java.lang.Character.codePointCount(r13, r14, r15)
                return r13
            L_0x00af:
                java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
                java.lang.String r14 = "CsvUnescaper should never reach the [1] index"
                r13.<init>(r14)
                throw r13
            */
            throw new UnsupportedOperationException("Method not decompiled: k.a.a.b.b.C0094b.a(java.lang.CharSequence, int, java.io.Writer):int");
        }
    }

    static {
        new f(new String[]{"\"", "\\\""}, new String[]{"\\", "\\\\"}).a(new f(d.d())).a(e.a(32, 127));
        k.a.a.b.d.a.b[] bVarArr = (k.a.a.b.d.a.b[]) ((Object[]) new k.a.a.b.d.a.b[]{new f(new String[]{"'", "\\'"}, new String[]{"\"", "\\\""}, new String[]{"\\", "\\\\"}, new String[]{"/", "\\/"}), new f(d.d()), e.a(32, 127)}.clone());
        k.a.a.b.d.a.b[] bVarArr2 = (k.a.a.b.d.a.b[]) ((Object[]) new k.a.a.b.d.a.b[]{new f(new String[]{"\"", "\\\""}, new String[]{"\\", "\\\\"}, new String[]{"/", "\\/"}), new f(d.d()), e.a(32, 127)}.clone());
        k.a.a.b.d.a.b[] bVarArr3 = (k.a.a.b.d.a.b[]) ((Object[]) new k.a.a.b.d.a.b[]{new f(d.b()), new f(d.a())}.clone());
        k.a.a.b.d.a.b[] bVarArr4 = (k.a.a.b.d.a.b[]) ((Object[]) new k.a.a.b.d.a.b[]{new f(d.b()), new f(d.a()), new f(new String[]{"\u0000", ""}, new String[]{"\u0001", ""}, new String[]{"\u0002", ""}, new String[]{"\u0003", ""}, new String[]{"\u0004", ""}, new String[]{"\u0005", ""}, new String[]{"\u0006", ""}, new String[]{"\u0007", ""}, new String[]{"\b", ""}, new String[]{"\u000b", ""}, new String[]{"\f", ""}, new String[]{"\u000e", ""}, new String[]{"\u000f", ""}, new String[]{"\u0010", ""}, new String[]{"\u0011", ""}, new String[]{"\u0012", ""}, new String[]{"\u0013", ""}, new String[]{"\u0014", ""}, new String[]{"\u0015", ""}, new String[]{"\u0016", ""}, new String[]{"\u0017", ""}, new String[]{"\u0018", ""}, new String[]{"\u0019", ""}, new String[]{"\u001a", ""}, new String[]{"\u001b", ""}, new String[]{"\u001c", ""}, new String[]{"\u001d", ""}, new String[]{"\u001e", ""}, new String[]{"\u001f", ""}, new String[]{"￾", ""}, new String[]{"￿", ""}), g.a(127, 132), g.a(134, 159), new k()}.clone());
        k.a.a.b.d.a.b[] bVarArr5 = (k.a.a.b.d.a.b[]) ((Object[]) new k.a.a.b.d.a.b[]{new f(d.b()), new f(d.a()), new f(new String[]{"\u0000", ""}, new String[]{"\u000b", "&#11;"}, new String[]{"\f", "&#12;"}, new String[]{"￾", ""}, new String[]{"￿", ""}), g.a(1, 8), g.a(14, 31), g.a(127, 132), g.a(134, 159), new k()}.clone());
        k.a.a.b.d.a.b[] bVarArr6 = (k.a.a.b.d.a.b[]) ((Object[]) new k.a.a.b.d.a.b[]{new f(d.b()), new f((String[][]) d.a.clone())}.clone());
        k.a.a.b.d.a.b[] bVarArr7 = (k.a.a.b.d.a.b[]) ((Object[]) new k.a.a.b.d.a.b[]{new f(d.b()), new f((String[][]) d.a.clone()), new f((String[][]) d.f1554c.clone())}.clone());
        k.a.a.b.d.a.b[] bVarArr8 = (k.a.a.b.d.a.b[]) ((Object[]) new k.a.a.b.d.a.b[]{new f(d.c()), new f((String[][]) d.b.clone()), new h(new h.a[0])}.clone());
        k.a.a.b.d.a.b[] bVarArr9 = (k.a.a.b.d.a.b[]) ((Object[]) new k.a.a.b.d.a.b[]{new f(d.c()), new f((String[][]) d.f1559h.clone()), new h(new h.a[0])}.clone());
    }
}
