package i.a.b.l;

import com.microsoft.azure.storage.Constants;
import i.a.b.n.f;
import java.math.BigDecimal;

public abstract class b {
    public static boolean[] r;
    public static boolean[] s;
    public static boolean[] t;
    public static boolean[] u;
    public static boolean[] v;
    public char a;
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public final a f1415c = new a(15);

    /* renamed from: d  reason: collision with root package name */
    public Object f1416d;

    /* renamed from: e  reason: collision with root package name */
    public String f1417e;

    /* renamed from: f  reason: collision with root package name */
    public int f1418f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f1419g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f1420h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f1421i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f1422j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f1423k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f1424l;
    public final boolean m;
    public final boolean n;
    public final boolean o;
    public final boolean p;
    public final boolean q;

    public static class a {
        public char[] a;
        public int b = -1;

        public a(int i2) {
            this.a = new char[i2];
        }

        public void a(char c2) {
            int i2 = this.b + 1;
            this.b = i2;
            char[] cArr = this.a;
            if (cArr.length <= i2) {
                char[] cArr2 = new char[((cArr.length * 2) + 1)];
                System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                this.a = cArr2;
            }
            this.a[this.b] = c2;
        }

        public String toString() {
            return new String(this.a, 0, this.b + 1);
        }
    }

    static {
        boolean[] zArr = new boolean[126];
        r = zArr;
        boolean[] zArr2 = new boolean[126];
        s = zArr2;
        boolean[] zArr3 = new boolean[126];
        t = zArr3;
        boolean[] zArr4 = new boolean[126];
        u = zArr4;
        boolean[] zArr5 = new boolean[126];
        v = zArr5;
        zArr3[26] = true;
        zArr3[58] = true;
        zArr4[26] = true;
        zArr4[125] = true;
        zArr4[44] = true;
        zArr2[26] = true;
        zArr2[93] = true;
        zArr2[44] = true;
        zArr5[26] = true;
        zArr[58] = true;
        zArr[44] = true;
        zArr[26] = true;
        zArr[125] = true;
        zArr[93] = true;
    }

    public b(int i2) {
        boolean z = false;
        this.f1420h = (i2 & 4) > 0;
        this.f1421i = (i2 & 2) > 0;
        this.f1422j = (i2 & 1) > 0;
        this.n = (i2 & 8) > 0;
        this.p = (i2 & 16) > 0;
        this.f1419g = (i2 & 32) > 0;
        this.f1423k = (i2 & 64) > 0;
        this.o = (i2 & 128) > 0;
        this.f1424l = (i2 & 768) != 768;
        this.m = (i2 & Constants.PAGE_SIZE) == 0;
        this.q = (i2 & 1024) > 0 ? true : z;
    }

    public abstract Object a(boolean[] zArr);

    public void a() {
        int length = this.f1417e.length();
        if (length != 1) {
            if (length != 2) {
                char charAt = this.f1417e.charAt(0);
                char charAt2 = this.f1417e.charAt(1);
                if (charAt == '-') {
                    char charAt3 = this.f1417e.charAt(2);
                    if (charAt2 == '0' && charAt3 >= '0' && charAt3 <= '9') {
                        throw new e(this.f1418f, 6, this.f1417e);
                    }
                } else if (charAt == '0' && charAt2 >= '0' && charAt2 <= '9') {
                    throw new e(this.f1418f, 6, this.f1417e);
                }
            } else if (this.f1417e.equals("00")) {
                throw new e(this.f1418f, 6, this.f1417e);
            }
        }
    }

    public Number b() {
        if (!this.f1419g) {
            a();
        }
        if (!this.o) {
            return Float.valueOf(Float.parseFloat(this.f1417e));
        }
        if (this.f1417e.length() > 18) {
            return new BigDecimal(this.f1417e);
        }
        return Double.valueOf(Double.parseDouble(this.f1417e));
    }

    public <T> T c(f<T> fVar) {
        if (this.a == '{') {
            Object b2 = fVar.b();
            boolean z = false;
            while (true) {
                c();
                char c2 = this.a;
                if (!(c2 == 9 || c2 == 10 || c2 == 13 || c2 == ' ')) {
                    if (c2 != ',') {
                        if (c2 != ':' && c2 != '[' && c2 != ']' && c2 != '{') {
                            if (c2 != '}') {
                                if (c2 == '\"' || c2 == '\'') {
                                    e();
                                } else {
                                    boolean[] zArr = t;
                                    c cVar = (c) this;
                                    int i2 = cVar.f1418f;
                                    cVar.b(zArr);
                                    cVar.a(i2, cVar.f1418f);
                                    if (!this.f1421i) {
                                        throw new e(this.f1418f, 1, this.f1417e);
                                    }
                                }
                                String str = this.f1417e;
                                g();
                                char c3 = this.a;
                                if (c3 == ':') {
                                    d dVar = (d) this;
                                    int i3 = dVar.f1418f + 1;
                                    dVar.f1418f = i3;
                                    if (i3 < dVar.w) {
                                        dVar.a = dVar.x.charAt(i3);
                                        this.b = str;
                                        fVar.a(b2, str, a(fVar, u));
                                        this.b = null;
                                        g();
                                        char c4 = this.a;
                                        if (c4 == '}') {
                                            c();
                                            return fVar.a(b2);
                                        } else if (c4 == 26) {
                                            throw new e(this.f1418f - 1, 3, (Object) null);
                                        } else if (c4 != ',') {
                                            throw new e(this.f1418f - 1, 1, Character.valueOf(this.a));
                                        }
                                    } else {
                                        dVar.a = 26;
                                        throw new e(dVar.f1418f - 1, 3, "EOF");
                                    }
                                } else if (c3 == 26) {
                                    throw new e(this.f1418f - 1, 3, (Object) null);
                                } else {
                                    throw new e(this.f1418f - 1, 0, Character.valueOf(this.a));
                                }
                            } else if (!z || this.f1423k) {
                                c();
                                return fVar.a(b2);
                            } else {
                                throw new e(this.f1418f, 0, Character.valueOf(this.a));
                            }
                        }
                    } else if (z && !this.f1423k) {
                        throw new e(this.f1418f, 0, Character.valueOf(this.a));
                    }
                    z = true;
                }
            }
            throw new e(this.f1418f, 0, Character.valueOf(this.a));
        }
        throw new RuntimeException("Internal Error");
    }

    public abstract void c();

    public abstract void d();

    public abstract void e();

    public void f() {
        while (true) {
            char c2 = this.a;
            if (c2 >= '0' && c2 <= '9') {
                d();
            } else {
                return;
            }
        }
    }

    public void g() {
        while (true) {
            char c2 = this.a;
            if (c2 <= ' ' && c2 != 26) {
                d();
            } else {
                return;
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00e2, code lost:
        throw new i.a.b.l.e(r4.f1418f, 0, java.lang.Character.valueOf(r4.a));
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public <T> T b(i.a.b.n.f<T> r5) {
        /*
            r4 = this;
        L_0x0000:
            char r0 = r4.a
            r1 = 9
            if (r0 == r1) goto L_0x0146
            r1 = 10
            if (r0 == r1) goto L_0x0146
            r1 = 1
            switch(r0) {
                case 13: goto L_0x0146;
                case 32: goto L_0x0146;
                case 34: goto L_0x013c;
                case 39: goto L_0x013c;
                case 45: goto L_0x012f;
                case 78: goto L_0x00e8;
                case 91: goto L_0x00e3;
                case 93: goto L_0x00d4;
                case 102: goto L_0x009f;
                case 110: goto L_0x006f;
                case 116: goto L_0x003a;
                case 123: goto L_0x0035;
                case 125: goto L_0x00d4;
                default: goto L_0x000e;
            }
        L_0x000e:
            switch(r0) {
                case 48: goto L_0x012f;
                case 49: goto L_0x012f;
                case 50: goto L_0x012f;
                case 51: goto L_0x012f;
                case 52: goto L_0x012f;
                case 53: goto L_0x012f;
                case 54: goto L_0x012f;
                case 55: goto L_0x012f;
                case 56: goto L_0x012f;
                case 57: goto L_0x012f;
                case 58: goto L_0x00d4;
                default: goto L_0x0011;
            }
        L_0x0011:
            boolean[] r0 = v
            r2 = r4
            i.a.b.l.c r2 = (i.a.b.l.c) r2
            int r3 = r2.f1418f
            r2.b((boolean[]) r0)
            int r0 = r2.f1418f
            r2.a(r3, r0)
            boolean r0 = r4.f1421i
            if (r0 == 0) goto L_0x002b
            java.lang.String r0 = r4.f1417e
            java.lang.Object r5 = r5.a((java.lang.Object) r0)
            return r5
        L_0x002b:
            i.a.b.l.e r5 = new i.a.b.l.e
            int r0 = r4.f1418f
            java.lang.String r2 = r4.f1417e
            r5.<init>(r0, r1, r2)
            throw r5
        L_0x0035:
            java.lang.Object r5 = r4.c(r5)
            return r5
        L_0x003a:
            boolean[] r0 = v
            r2 = r4
            i.a.b.l.c r2 = (i.a.b.l.c) r2
            int r3 = r2.f1418f
            r2.b((boolean[]) r0)
            int r0 = r2.f1418f
            r2.a(r3, r0)
            java.lang.String r0 = r4.f1417e
            java.lang.String r2 = "true"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L_0x005a
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            java.lang.Object r5 = r5.a((java.lang.Object) r0)
            return r5
        L_0x005a:
            boolean r0 = r4.f1421i
            if (r0 == 0) goto L_0x0065
            java.lang.String r0 = r4.f1417e
            java.lang.Object r5 = r5.a((java.lang.Object) r0)
            return r5
        L_0x0065:
            i.a.b.l.e r5 = new i.a.b.l.e
            int r0 = r4.f1418f
            java.lang.String r2 = r4.f1417e
            r5.<init>(r0, r1, r2)
            throw r5
        L_0x006f:
            boolean[] r0 = v
            r2 = r4
            i.a.b.l.c r2 = (i.a.b.l.c) r2
            int r3 = r2.f1418f
            r2.b((boolean[]) r0)
            int r0 = r2.f1418f
            r2.a(r3, r0)
            java.lang.String r0 = r4.f1417e
            java.lang.String r2 = "null"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L_0x008a
            r5 = 0
            return r5
        L_0x008a:
            boolean r0 = r4.f1421i
            if (r0 == 0) goto L_0x0095
            java.lang.String r0 = r4.f1417e
            java.lang.Object r5 = r5.a((java.lang.Object) r0)
            return r5
        L_0x0095:
            i.a.b.l.e r5 = new i.a.b.l.e
            int r0 = r4.f1418f
            java.lang.String r2 = r4.f1417e
            r5.<init>(r0, r1, r2)
            throw r5
        L_0x009f:
            boolean[] r0 = v
            r2 = r4
            i.a.b.l.c r2 = (i.a.b.l.c) r2
            int r3 = r2.f1418f
            r2.b((boolean[]) r0)
            int r0 = r2.f1418f
            r2.a(r3, r0)
            java.lang.String r0 = r4.f1417e
            java.lang.String r2 = "false"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L_0x00bf
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
            java.lang.Object r5 = r5.a((java.lang.Object) r0)
            return r5
        L_0x00bf:
            boolean r0 = r4.f1421i
            if (r0 == 0) goto L_0x00ca
            java.lang.String r0 = r4.f1417e
            java.lang.Object r5 = r5.a((java.lang.Object) r0)
            return r5
        L_0x00ca:
            i.a.b.l.e r5 = new i.a.b.l.e
            int r0 = r4.f1418f
            java.lang.String r2 = r4.f1417e
            r5.<init>(r0, r1, r2)
            throw r5
        L_0x00d4:
            i.a.b.l.e r5 = new i.a.b.l.e
            int r0 = r4.f1418f
            r1 = 0
            char r2 = r4.a
            java.lang.Character r2 = java.lang.Character.valueOf(r2)
            r5.<init>(r0, r1, r2)
            throw r5
        L_0x00e3:
            java.lang.Object r5 = r4.a(r5)
            return r5
        L_0x00e8:
            boolean[] r0 = v
            r2 = r4
            i.a.b.l.c r2 = (i.a.b.l.c) r2
            int r3 = r2.f1418f
            r2.b((boolean[]) r0)
            int r0 = r2.f1418f
            r2.a(r3, r0)
            boolean r0 = r4.f1420h
            if (r0 == 0) goto L_0x0125
            java.lang.String r0 = r4.f1417e
            java.lang.String r2 = "NaN"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L_0x0110
            r0 = 2143289344(0x7fc00000, float:NaN)
            java.lang.Float r0 = java.lang.Float.valueOf(r0)
            java.lang.Object r5 = r5.a((java.lang.Object) r0)
            return r5
        L_0x0110:
            boolean r0 = r4.f1421i
            if (r0 == 0) goto L_0x011b
            java.lang.String r0 = r4.f1417e
            java.lang.Object r5 = r5.a((java.lang.Object) r0)
            return r5
        L_0x011b:
            i.a.b.l.e r5 = new i.a.b.l.e
            int r0 = r4.f1418f
            java.lang.String r2 = r4.f1417e
            r5.<init>(r0, r1, r2)
            throw r5
        L_0x0125:
            i.a.b.l.e r5 = new i.a.b.l.e
            int r0 = r4.f1418f
            java.lang.String r2 = r4.f1417e
            r5.<init>(r0, r1, r2)
            throw r5
        L_0x012f:
            boolean[] r0 = v
            java.lang.Object r0 = r4.a((boolean[]) r0)
            r4.f1416d = r0
            java.lang.Object r5 = r5.a((java.lang.Object) r0)
            return r5
        L_0x013c:
            r4.e()
            java.lang.String r0 = r4.f1417e
            java.lang.Object r5 = r5.a((java.lang.Object) r0)
            return r5
        L_0x0146:
            r4.c()
            goto L_0x0000
        */
        throw new UnsupportedOperationException("Method not decompiled: i.a.b.l.b.b(i.a.b.n.f):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0043, code lost:
        if (r5 == ':') goto L_0x0074;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0047, code lost:
        if (r5 == ']') goto L_0x0057;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x004b, code lost:
        if (r5 == '}') goto L_0x0074;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0057, code lost:
        if (r4 == false) goto L_0x006c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x005b, code lost:
        if (r7.f1423k == false) goto L_0x005e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x006b, code lost:
        throw new i.a.b.l.e(r7.f1418f, 0, java.lang.Character.valueOf(r7.a));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x006c, code lost:
        c();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x0073, code lost:
        return r8.a(r0);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public <T> T a(i.a.b.n.f<T> r8) {
        /*
            r7 = this;
            java.lang.Object r0 = r8.a()
            char r1 = r7.a
            r2 = 91
            if (r1 != r2) goto L_0x00ad
            r7.c()
            char r1 = r7.a
            r2 = 44
            r3 = 0
            if (r1 != r2) goto L_0x0027
            boolean r1 = r7.f1423k
            if (r1 == 0) goto L_0x0019
            goto L_0x0027
        L_0x0019:
            i.a.b.l.e r8 = new i.a.b.l.e
            int r0 = r7.f1418f
            char r1 = r7.a
            java.lang.Character r1 = java.lang.Character.valueOf(r1)
            r8.<init>(r0, r3, r1)
            throw r8
        L_0x0027:
            r1 = 1
        L_0x0028:
            r4 = 0
        L_0x0029:
            char r5 = r7.a
            r6 = 9
            if (r5 == r6) goto L_0x00a8
            r6 = 10
            if (r5 == r6) goto L_0x00a8
            r6 = 13
            if (r5 == r6) goto L_0x00a8
            r6 = 26
            if (r5 == r6) goto L_0x009c
            r6 = 32
            if (r5 == r6) goto L_0x00a8
            if (r5 == r2) goto L_0x0082
            r6 = 58
            if (r5 == r6) goto L_0x0074
            r6 = 93
            if (r5 == r6) goto L_0x0057
            r4 = 125(0x7d, float:1.75E-43)
            if (r5 == r4) goto L_0x0074
            boolean[] r4 = s
            java.lang.Object r4 = r7.a(r8, r4)
            r8.a(r0, r4)
            goto L_0x0028
        L_0x0057:
            if (r4 == 0) goto L_0x006c
            boolean r1 = r7.f1423k
            if (r1 == 0) goto L_0x005e
            goto L_0x006c
        L_0x005e:
            i.a.b.l.e r8 = new i.a.b.l.e
            int r0 = r7.f1418f
            char r1 = r7.a
            java.lang.Character r1 = java.lang.Character.valueOf(r1)
            r8.<init>(r0, r3, r1)
            throw r8
        L_0x006c:
            r7.c()
            java.lang.Object r8 = r8.a((java.lang.Object) r0)
            return r8
        L_0x0074:
            i.a.b.l.e r8 = new i.a.b.l.e
            int r0 = r7.f1418f
            char r1 = r7.a
            java.lang.Character r1 = java.lang.Character.valueOf(r1)
            r8.<init>(r0, r3, r1)
            throw r8
        L_0x0082:
            if (r4 == 0) goto L_0x0097
            boolean r4 = r7.f1423k
            if (r4 == 0) goto L_0x0089
            goto L_0x0097
        L_0x0089:
            i.a.b.l.e r8 = new i.a.b.l.e
            int r0 = r7.f1418f
            char r1 = r7.a
            java.lang.Character r1 = java.lang.Character.valueOf(r1)
            r8.<init>(r0, r3, r1)
            throw r8
        L_0x0097:
            r7.c()
            r4 = 1
            goto L_0x0029
        L_0x009c:
            i.a.b.l.e r8 = new i.a.b.l.e
            int r0 = r7.f1418f
            int r0 = r0 - r1
            r1 = 3
            java.lang.String r2 = "EOF"
            r8.<init>(r0, r1, r2)
            throw r8
        L_0x00a8:
            r7.c()
            goto L_0x0029
        L_0x00ad:
            java.lang.RuntimeException r8 = new java.lang.RuntimeException
            java.lang.String r0 = "Internal Error"
            r8.<init>(r0)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: i.a.b.l.b.a(i.a.b.n.f):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00c8, code lost:
        throw new i.a.b.l.e(r2.f1418f, 0, java.lang.Character.valueOf(r2.a));
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object a(i.a.b.n.f<?> r3, boolean[] r4) {
        /*
            r2 = this;
        L_0x0000:
            char r0 = r2.a
            r1 = 9
            if (r0 == r1) goto L_0x011c
            r1 = 10
            if (r0 == r1) goto L_0x011c
            r1 = 1
            switch(r0) {
                case 13: goto L_0x011c;
                case 32: goto L_0x011c;
                case 34: goto L_0x0116;
                case 39: goto L_0x0116;
                case 45: goto L_0x0111;
                case 78: goto L_0x00d4;
                case 91: goto L_0x00c9;
                case 93: goto L_0x00ba;
                case 102: goto L_0x008f;
                case 110: goto L_0x0065;
                case 116: goto L_0x003a;
                case 123: goto L_0x002f;
                case 125: goto L_0x00ba;
                default: goto L_0x000e;
            }
        L_0x000e:
            switch(r0) {
                case 48: goto L_0x0111;
                case 49: goto L_0x0111;
                case 50: goto L_0x0111;
                case 51: goto L_0x0111;
                case 52: goto L_0x0111;
                case 53: goto L_0x0111;
                case 54: goto L_0x0111;
                case 55: goto L_0x0111;
                case 56: goto L_0x0111;
                case 57: goto L_0x0111;
                case 58: goto L_0x00ba;
                default: goto L_0x0011;
            }
        L_0x0011:
            r3 = r2
            i.a.b.l.c r3 = (i.a.b.l.c) r3
            int r0 = r3.f1418f
            r3.b((boolean[]) r4)
            int r4 = r3.f1418f
            r3.a(r0, r4)
            boolean r3 = r2.f1421i
            if (r3 == 0) goto L_0x0025
            java.lang.String r3 = r2.f1417e
            return r3
        L_0x0025:
            i.a.b.l.e r3 = new i.a.b.l.e
            int r4 = r2.f1418f
            java.lang.String r0 = r2.f1417e
            r3.<init>(r4, r1, r0)
            throw r3
        L_0x002f:
            java.lang.String r4 = r2.b
            i.a.b.n.f r3 = r3.b(r4)
            java.lang.Object r3 = r2.c(r3)
            return r3
        L_0x003a:
            r3 = r2
            i.a.b.l.c r3 = (i.a.b.l.c) r3
            int r0 = r3.f1418f
            r3.b((boolean[]) r4)
            int r4 = r3.f1418f
            r3.a(r0, r4)
            java.lang.String r3 = r2.f1417e
            java.lang.String r4 = "true"
            boolean r3 = r4.equals(r3)
            if (r3 == 0) goto L_0x0054
            java.lang.Boolean r3 = java.lang.Boolean.TRUE
            return r3
        L_0x0054:
            boolean r3 = r2.f1421i
            if (r3 == 0) goto L_0x005b
            java.lang.String r3 = r2.f1417e
            return r3
        L_0x005b:
            i.a.b.l.e r3 = new i.a.b.l.e
            int r4 = r2.f1418f
            java.lang.String r0 = r2.f1417e
            r3.<init>(r4, r1, r0)
            throw r3
        L_0x0065:
            r3 = r2
            i.a.b.l.c r3 = (i.a.b.l.c) r3
            int r0 = r3.f1418f
            r3.b((boolean[]) r4)
            int r4 = r3.f1418f
            r3.a(r0, r4)
            java.lang.String r3 = r2.f1417e
            java.lang.String r4 = "null"
            boolean r3 = r4.equals(r3)
            if (r3 == 0) goto L_0x007e
            r3 = 0
            return r3
        L_0x007e:
            boolean r3 = r2.f1421i
            if (r3 == 0) goto L_0x0085
            java.lang.String r3 = r2.f1417e
            return r3
        L_0x0085:
            i.a.b.l.e r3 = new i.a.b.l.e
            int r4 = r2.f1418f
            java.lang.String r0 = r2.f1417e
            r3.<init>(r4, r1, r0)
            throw r3
        L_0x008f:
            r3 = r2
            i.a.b.l.c r3 = (i.a.b.l.c) r3
            int r0 = r3.f1418f
            r3.b((boolean[]) r4)
            int r4 = r3.f1418f
            r3.a(r0, r4)
            java.lang.String r3 = r2.f1417e
            java.lang.String r4 = "false"
            boolean r3 = r4.equals(r3)
            if (r3 == 0) goto L_0x00a9
            java.lang.Boolean r3 = java.lang.Boolean.FALSE
            return r3
        L_0x00a9:
            boolean r3 = r2.f1421i
            if (r3 == 0) goto L_0x00b0
            java.lang.String r3 = r2.f1417e
            return r3
        L_0x00b0:
            i.a.b.l.e r3 = new i.a.b.l.e
            int r4 = r2.f1418f
            java.lang.String r0 = r2.f1417e
            r3.<init>(r4, r1, r0)
            throw r3
        L_0x00ba:
            i.a.b.l.e r3 = new i.a.b.l.e
            int r4 = r2.f1418f
            r0 = 0
            char r1 = r2.a
            java.lang.Character r1 = java.lang.Character.valueOf(r1)
            r3.<init>(r4, r0, r1)
            throw r3
        L_0x00c9:
            java.lang.String r4 = r2.b
            i.a.b.n.f r3 = r3.a((java.lang.String) r4)
            java.lang.Object r3 = r2.a(r3)
            return r3
        L_0x00d4:
            r3 = r2
            i.a.b.l.c r3 = (i.a.b.l.c) r3
            int r0 = r3.f1418f
            r3.b((boolean[]) r4)
            int r4 = r3.f1418f
            r3.a(r0, r4)
            boolean r3 = r2.f1420h
            if (r3 == 0) goto L_0x0107
            java.lang.String r3 = r2.f1417e
            java.lang.String r4 = "NaN"
            boolean r3 = r4.equals(r3)
            if (r3 == 0) goto L_0x00f6
            r3 = 2143289344(0x7fc00000, float:NaN)
            java.lang.Float r3 = java.lang.Float.valueOf(r3)
            return r3
        L_0x00f6:
            boolean r3 = r2.f1421i
            if (r3 == 0) goto L_0x00fd
            java.lang.String r3 = r2.f1417e
            return r3
        L_0x00fd:
            i.a.b.l.e r3 = new i.a.b.l.e
            int r4 = r2.f1418f
            java.lang.String r0 = r2.f1417e
            r3.<init>(r4, r1, r0)
            throw r3
        L_0x0107:
            i.a.b.l.e r3 = new i.a.b.l.e
            int r4 = r2.f1418f
            java.lang.String r0 = r2.f1417e
            r3.<init>(r4, r1, r0)
            throw r3
        L_0x0111:
            java.lang.Object r3 = r2.a((boolean[]) r4)
            return r3
        L_0x0116:
            r2.e()
            java.lang.String r3 = r2.f1417e
            return r3
        L_0x011c:
            r2.c()
            goto L_0x0000
        */
        throw new UnsupportedOperationException("Method not decompiled: i.a.b.l.b.a(i.a.b.n.f, boolean[]):java.lang.Object");
    }

    public void b(boolean[] zArr) {
        while (true) {
            char c2 = this.a;
            if (c2 == 26) {
                return;
            }
            if (c2 < 0 || c2 >= '~' || !zArr[c2]) {
                d();
            } else {
                return;
            }
        }
    }

    public char a(int i2) {
        int i3;
        int i4;
        int i5 = 0;
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = i5 * 16;
            c();
            char c2 = this.a;
            if (c2 > '9' || c2 < '0') {
                char c3 = this.a;
                if (c3 > 'F' || c3 < 'A') {
                    char c4 = this.a;
                    if (c4 >= 'a' && c4 <= 'f') {
                        i3 = c4 - 'a';
                    } else if (this.a == 26) {
                        throw new e(this.f1418f, 3, "EOF");
                    } else {
                        throw new e(this.f1418f, 4, Character.valueOf(this.a));
                    }
                } else {
                    i3 = c3 - 'A';
                }
                i4 = i3 + 10;
            } else {
                i4 = c2 - '0';
            }
            i5 = i4 + i7;
        }
        return (char) i5;
    }
}
