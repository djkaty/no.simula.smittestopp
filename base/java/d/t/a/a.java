package d.t.a;

import d.t.a.o;
import java.util.ArrayList;
import java.util.List;

public class a implements o.a {
    public d.i.h.b<b> a = new d.i.h.b<>(30);
    public final ArrayList<b> b = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    public final ArrayList<b> f760c = new ArrayList<>();

    /* renamed from: d  reason: collision with root package name */
    public final C0041a f761d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f762e;

    /* renamed from: f  reason: collision with root package name */
    public final o f763f;

    /* renamed from: g  reason: collision with root package name */
    public int f764g = 0;

    /* renamed from: d.t.a.a$a  reason: collision with other inner class name */
    public interface C0041a {
    }

    public static class b {
        public int a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public Object f765c;

        /* renamed from: d  reason: collision with root package name */
        public int f766d;

        public b(int i2, int i3, int i4, Object obj) {
            this.a = i2;
            this.b = i3;
            this.f766d = i4;
            this.f765c = obj;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            int i2 = this.a;
            if (i2 != bVar.a) {
                return false;
            }
            if (i2 == 8 && Math.abs(this.f766d - this.b) == 1 && this.f766d == bVar.b && this.b == bVar.f766d) {
                return true;
            }
            if (this.f766d != bVar.f766d || this.b != bVar.b) {
                return false;
            }
            Object obj2 = this.f765c;
            if (obj2 != null) {
                if (!obj2.equals(bVar.f765c)) {
                    return false;
                }
            } else if (bVar.f765c != null) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.a * 31) + this.b) * 31) + this.f766d;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append("[");
            int i2 = this.a;
            sb.append(i2 != 1 ? i2 != 2 ? i2 != 4 ? i2 != 8 ? "??" : "mv" : "up" : "rm" : "add");
            sb.append(",s:");
            sb.append(this.b);
            sb.append("c:");
            sb.append(this.f766d);
            sb.append(",p:");
            sb.append(this.f765c);
            sb.append("]");
            return sb.toString();
        }
    }

    public a(C0041a aVar) {
        this.f761d = aVar;
        this.f762e = false;
        this.f763f = new o(this);
    }

    public void a() {
        int size = this.f760c.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((u) this.f761d).a(this.f760c.get(i2));
        }
        a((List<b>) this.f760c);
        this.f764g = 0;
    }

    public final int b(int i2, int i3) {
        for (int size = this.f760c.size() - 1; size >= 0; size--) {
            b bVar = this.f760c.get(size);
            int i4 = bVar.a;
            if (i4 == 8) {
                int i5 = bVar.b;
                int i6 = bVar.f766d;
                if (i5 >= i6) {
                    int i7 = i6;
                    i6 = i5;
                    i5 = i7;
                }
                if (i2 < i5 || i2 > i6) {
                    int i8 = bVar.b;
                    if (i2 < i8) {
                        if (i3 == 1) {
                            bVar.b = i8 + 1;
                            bVar.f766d++;
                        } else if (i3 == 2) {
                            bVar.b = i8 - 1;
                            bVar.f766d--;
                        }
                    }
                } else {
                    int i9 = bVar.b;
                    if (i5 == i9) {
                        if (i3 == 1) {
                            bVar.f766d++;
                        } else if (i3 == 2) {
                            bVar.f766d--;
                        }
                        i2++;
                    } else {
                        if (i3 == 1) {
                            bVar.b = i9 + 1;
                        } else if (i3 == 2) {
                            bVar.b = i9 - 1;
                        }
                        i2--;
                    }
                }
            } else {
                int i10 = bVar.b;
                if (i10 <= i2) {
                    if (i4 == 1) {
                        i2 -= bVar.f766d;
                    } else if (i4 == 2) {
                        i2 += bVar.f766d;
                    }
                } else if (i3 == 1) {
                    bVar.b = i10 + 1;
                } else if (i3 == 2) {
                    bVar.b = i10 - 1;
                }
            }
        }
        for (int size2 = this.f760c.size() - 1; size2 >= 0; size2--) {
            b bVar2 = this.f760c.get(size2);
            if (bVar2.a == 8) {
                int i11 = bVar2.f766d;
                if (i11 == bVar2.b || i11 < 0) {
                    this.f760c.remove(size2);
                    if (!this.f762e) {
                        bVar2.f765c = null;
                        this.a.a(bVar2);
                    }
                }
            } else if (bVar2.f766d <= 0) {
                this.f760c.remove(size2);
                if (!this.f762e) {
                    bVar2.f765c = null;
                    this.a.a(bVar2);
                }
            }
        }
        return i2;
    }

    public boolean c() {
        return this.b.size() > 0;
    }

    /* JADX WARNING: Removed duplicated region for block: B:189:0x0009 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x006a  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x006f  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x008f  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0093  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00a7  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00ac  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00dc  */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x00e1  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x010c  */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x0111  */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x012c  */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x0143  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void d() {
        /*
            r16 = this;
            r0 = r16
            d.t.a.o r1 = r0.f763f
            java.util.ArrayList<d.t.a.a$b> r2 = r0.b
            r3 = 0
            if (r1 == 0) goto L_0x02d7
        L_0x0009:
            int r4 = r2.size()
            r5 = 1
            int r4 = r4 - r5
            r7 = 0
        L_0x0010:
            r8 = 8
            r9 = -1
            if (r4 < 0) goto L_0x0026
            java.lang.Object r10 = r2.get(r4)
            d.t.a.a$b r10 = (d.t.a.a.b) r10
            int r10 = r10.a
            if (r10 != r8) goto L_0x0022
            if (r7 == 0) goto L_0x0023
            goto L_0x0027
        L_0x0022:
            r7 = 1
        L_0x0023:
            int r4 = r4 + -1
            goto L_0x0010
        L_0x0026:
            r4 = -1
        L_0x0027:
            r7 = 4
            r10 = 2
            if (r4 == r9) goto L_0x01ed
            int r8 = r4 + 1
            java.lang.Object r11 = r2.get(r4)
            d.t.a.a$b r11 = (d.t.a.a.b) r11
            java.lang.Object r12 = r2.get(r8)
            d.t.a.a$b r12 = (d.t.a.a.b) r12
            int r13 = r12.a
            if (r13 == r5) goto L_0x01b9
            if (r13 == r10) goto L_0x00b1
            if (r13 == r7) goto L_0x0042
            goto L_0x0009
        L_0x0042:
            int r6 = r11.f766d
            int r9 = r12.b
            if (r6 >= r9) goto L_0x004d
            int r9 = r9 + -1
            r12.b = r9
            goto L_0x0063
        L_0x004d:
            int r10 = r12.f766d
            int r9 = r9 + r10
            if (r6 >= r9) goto L_0x0063
            int r10 = r10 + -1
            r12.f766d = r10
            d.t.a.o$a r6 = r1.a
            int r9 = r11.b
            java.lang.Object r10 = r12.f765c
            d.t.a.a r6 = (d.t.a.a) r6
            d.t.a.a$b r5 = r6.a(r7, r9, r5, r10)
            goto L_0x0064
        L_0x0063:
            r5 = r3
        L_0x0064:
            int r6 = r11.b
            int r9 = r12.b
            if (r6 > r9) goto L_0x006f
            int r9 = r9 + 1
            r12.b = r9
            goto L_0x0087
        L_0x006f:
            int r10 = r12.f766d
            int r9 = r9 + r10
            if (r6 >= r9) goto L_0x0087
            int r9 = r9 - r6
            d.t.a.o$a r10 = r1.a
            int r6 = r6 + 1
            java.lang.Object r13 = r12.f765c
            d.t.a.a r10 = (d.t.a.a) r10
            d.t.a.a$b r6 = r10.a(r7, r6, r9, r13)
            int r7 = r12.f766d
            int r7 = r7 - r9
            r12.f766d = r7
            goto L_0x0088
        L_0x0087:
            r6 = r3
        L_0x0088:
            r2.set(r8, r11)
            int r7 = r12.f766d
            if (r7 <= 0) goto L_0x0093
            r2.set(r4, r12)
            goto L_0x00a5
        L_0x0093:
            r2.remove(r4)
            d.t.a.o$a r7 = r1.a
            d.t.a.a r7 = (d.t.a.a) r7
            boolean r8 = r7.f762e
            if (r8 != 0) goto L_0x00a5
            r12.f765c = r3
            d.i.h.b<d.t.a.a$b> r7 = r7.a
            r7.a(r12)
        L_0x00a5:
            if (r5 == 0) goto L_0x00aa
            r2.add(r4, r5)
        L_0x00aa:
            if (r6 == 0) goto L_0x0009
            r2.add(r4, r6)
            goto L_0x0009
        L_0x00b1:
            int r7 = r11.b
            int r9 = r11.f766d
            if (r7 >= r9) goto L_0x00c5
            int r13 = r12.b
            if (r13 != r7) goto L_0x00c2
            int r13 = r12.f766d
            int r9 = r9 - r7
            if (r13 != r9) goto L_0x00c2
            r6 = 0
            goto L_0x00d1
        L_0x00c2:
            r6 = 0
            r7 = 0
            goto L_0x00d6
        L_0x00c5:
            int r13 = r12.b
            int r14 = r9 + 1
            if (r13 != r14) goto L_0x00d4
            int r13 = r12.f766d
            int r7 = r7 - r9
            if (r13 != r7) goto L_0x00d4
            r6 = 1
        L_0x00d1:
            r7 = r6
            r6 = 1
            goto L_0x00d6
        L_0x00d4:
            r6 = 0
            r7 = 1
        L_0x00d6:
            int r9 = r11.f766d
            int r13 = r12.b
            if (r9 >= r13) goto L_0x00e1
            int r13 = r13 + -1
            r12.b = r13
            goto L_0x0106
        L_0x00e1:
            int r14 = r12.f766d
            int r13 = r13 + r14
            if (r9 >= r13) goto L_0x0106
            int r14 = r14 + -1
            r12.f766d = r14
            r11.a = r10
            r11.f766d = r5
            int r4 = r12.f766d
            if (r4 != 0) goto L_0x0009
            r2.remove(r8)
            d.t.a.o$a r4 = r1.a
            d.t.a.a r4 = (d.t.a.a) r4
            boolean r5 = r4.f762e
            if (r5 != 0) goto L_0x0009
            r12.f765c = r3
            d.i.h.b<d.t.a.a$b> r4 = r4.a
            r4.a(r12)
            goto L_0x0009
        L_0x0106:
            int r5 = r11.b
            int r9 = r12.b
            if (r5 > r9) goto L_0x0111
            int r9 = r9 + 1
            r12.b = r9
            goto L_0x0129
        L_0x0111:
            int r13 = r12.f766d
            int r9 = r9 + r13
            if (r5 >= r9) goto L_0x0129
            int r9 = r9 - r5
            d.t.a.o$a r13 = r1.a
            int r5 = r5 + 1
            d.t.a.a r13 = (d.t.a.a) r13
            d.t.a.a$b r5 = r13.a(r10, r5, r9, r3)
            int r9 = r11.b
            int r10 = r12.b
            int r9 = r9 - r10
            r12.f766d = r9
            goto L_0x012a
        L_0x0129:
            r5 = r3
        L_0x012a:
            if (r6 == 0) goto L_0x0143
            r2.set(r4, r12)
            r2.remove(r8)
            d.t.a.o$a r4 = r1.a
            d.t.a.a r4 = (d.t.a.a) r4
            boolean r5 = r4.f762e
            if (r5 != 0) goto L_0x0009
            r11.f765c = r3
            d.i.h.b<d.t.a.a$b> r4 = r4.a
            r4.a(r11)
            goto L_0x0009
        L_0x0143:
            if (r7 == 0) goto L_0x0174
            if (r5 == 0) goto L_0x015d
            int r6 = r11.b
            int r7 = r5.b
            if (r6 <= r7) goto L_0x0152
            int r7 = r5.f766d
            int r6 = r6 - r7
            r11.b = r6
        L_0x0152:
            int r6 = r11.f766d
            int r7 = r5.b
            if (r6 <= r7) goto L_0x015d
            int r7 = r5.f766d
            int r6 = r6 - r7
            r11.f766d = r6
        L_0x015d:
            int r6 = r11.b
            int r7 = r12.b
            if (r6 <= r7) goto L_0x0168
            int r7 = r12.f766d
            int r6 = r6 - r7
            r11.b = r6
        L_0x0168:
            int r6 = r11.f766d
            int r7 = r12.b
            if (r6 <= r7) goto L_0x01a2
            int r7 = r12.f766d
            int r6 = r6 - r7
            r11.f766d = r6
            goto L_0x01a2
        L_0x0174:
            if (r5 == 0) goto L_0x018c
            int r6 = r11.b
            int r7 = r5.b
            if (r6 < r7) goto L_0x0181
            int r7 = r5.f766d
            int r6 = r6 - r7
            r11.b = r6
        L_0x0181:
            int r6 = r11.f766d
            int r7 = r5.b
            if (r6 < r7) goto L_0x018c
            int r7 = r5.f766d
            int r6 = r6 - r7
            r11.f766d = r6
        L_0x018c:
            int r6 = r11.b
            int r7 = r12.b
            if (r6 < r7) goto L_0x0197
            int r7 = r12.f766d
            int r6 = r6 - r7
            r11.b = r6
        L_0x0197:
            int r6 = r11.f766d
            int r7 = r12.b
            if (r6 < r7) goto L_0x01a2
            int r7 = r12.f766d
            int r6 = r6 - r7
            r11.f766d = r6
        L_0x01a2:
            r2.set(r4, r12)
            int r6 = r11.b
            int r7 = r11.f766d
            if (r6 == r7) goto L_0x01af
            r2.set(r8, r11)
            goto L_0x01b2
        L_0x01af:
            r2.remove(r8)
        L_0x01b2:
            if (r5 == 0) goto L_0x0009
            r2.add(r4, r5)
            goto L_0x0009
        L_0x01b9:
            int r5 = r11.f766d
            int r7 = r12.b
            if (r5 >= r7) goto L_0x01c1
            r6 = -1
            goto L_0x01c2
        L_0x01c1:
            r6 = 0
        L_0x01c2:
            int r5 = r11.b
            int r7 = r12.b
            if (r5 >= r7) goto L_0x01ca
            int r6 = r6 + 1
        L_0x01ca:
            int r5 = r12.b
            int r7 = r11.b
            if (r5 > r7) goto L_0x01d5
            int r5 = r12.f766d
            int r7 = r7 + r5
            r11.b = r7
        L_0x01d5:
            int r5 = r12.b
            int r7 = r11.f766d
            if (r5 > r7) goto L_0x01e0
            int r5 = r12.f766d
            int r7 = r7 + r5
            r11.f766d = r7
        L_0x01e0:
            int r5 = r12.b
            int r5 = r5 + r6
            r12.b = r5
            r2.set(r4, r12)
            r2.set(r8, r11)
            goto L_0x0009
        L_0x01ed:
            java.util.ArrayList<d.t.a.a$b> r1 = r0.b
            int r1 = r1.size()
            r2 = 0
        L_0x01f4:
            if (r2 >= r1) goto L_0x02d1
            java.util.ArrayList<d.t.a.a$b> r4 = r0.b
            java.lang.Object r4 = r4.get(r2)
            d.t.a.a$b r4 = (d.t.a.a.b) r4
            int r11 = r4.a
            if (r11 == r5) goto L_0x02ca
            if (r11 == r10) goto L_0x026c
            if (r11 == r7) goto L_0x020f
            if (r11 == r8) goto L_0x020a
            goto L_0x02cd
        L_0x020a:
            r0.b(r4)
            goto L_0x02cd
        L_0x020f:
            int r11 = r4.b
            int r12 = r4.f766d
            int r12 = r12 + r11
            r13 = r11
            r14 = 0
            r15 = -1
        L_0x0217:
            if (r11 >= r12) goto L_0x024b
            d.t.a.a$a r6 = r0.f761d
            d.t.a.u r6 = (d.t.a.u) r6
            d.t.a.s$x r6 = r6.a((int) r11)
            if (r6 != 0) goto L_0x0239
            boolean r6 = r0.a((int) r11)
            if (r6 == 0) goto L_0x022a
            goto L_0x0239
        L_0x022a:
            if (r15 != r5) goto L_0x0237
            java.lang.Object r6 = r4.f765c
            d.t.a.a$b r6 = r0.a(r7, r13, r14, r6)
            r0.b(r6)
            r13 = r11
            r14 = 0
        L_0x0237:
            r15 = 0
            goto L_0x0247
        L_0x0239:
            if (r15 != 0) goto L_0x0246
            java.lang.Object r6 = r4.f765c
            d.t.a.a$b r6 = r0.a(r7, r13, r14, r6)
            r0.a((d.t.a.a.b) r6)
            r13 = r11
            r14 = 0
        L_0x0246:
            r15 = 1
        L_0x0247:
            int r14 = r14 + r5
            int r11 = r11 + 1
            goto L_0x0217
        L_0x024b:
            int r6 = r4.f766d
            if (r14 == r6) goto L_0x0260
            java.lang.Object r6 = r4.f765c
            boolean r11 = r0.f762e
            if (r11 != 0) goto L_0x025c
            r4.f765c = r3
            d.i.h.b<d.t.a.a$b> r11 = r0.a
            r11.a(r4)
        L_0x025c:
            d.t.a.a$b r4 = r0.a(r7, r13, r14, r6)
        L_0x0260:
            if (r15 != 0) goto L_0x0267
            r0.a((d.t.a.a.b) r4)
            goto L_0x02cd
        L_0x0267:
            r0.b(r4)
            goto L_0x02cd
        L_0x026c:
            int r6 = r4.b
            int r11 = r4.f766d
            int r11 = r11 + r6
            r12 = r6
            r13 = 0
            r14 = -1
        L_0x0274:
            if (r12 >= r11) goto L_0x02ad
            d.t.a.a$a r15 = r0.f761d
            d.t.a.u r15 = (d.t.a.u) r15
            d.t.a.s$x r15 = r15.a((int) r12)
            if (r15 != 0) goto L_0x0295
            boolean r15 = r0.a((int) r12)
            if (r15 == 0) goto L_0x0287
            goto L_0x0295
        L_0x0287:
            if (r14 != r5) goto L_0x0292
            d.t.a.a$b r14 = r0.a(r10, r6, r13, r3)
            r0.b(r14)
            r14 = 1
            goto L_0x0293
        L_0x0292:
            r14 = 0
        L_0x0293:
            r15 = 0
            goto L_0x02a2
        L_0x0295:
            if (r14 != 0) goto L_0x02a0
            d.t.a.a$b r14 = r0.a(r10, r6, r13, r3)
            r0.a((d.t.a.a.b) r14)
            r14 = 1
            goto L_0x02a1
        L_0x02a0:
            r14 = 0
        L_0x02a1:
            r15 = 1
        L_0x02a2:
            if (r14 == 0) goto L_0x02a8
            int r12 = r12 - r13
            int r11 = r11 - r13
            r13 = 1
            goto L_0x02aa
        L_0x02a8:
            int r13 = r13 + 1
        L_0x02aa:
            int r12 = r12 + r5
            r14 = r15
            goto L_0x0274
        L_0x02ad:
            int r11 = r4.f766d
            if (r13 == r11) goto L_0x02c0
            boolean r11 = r0.f762e
            if (r11 != 0) goto L_0x02bc
            r4.f765c = r3
            d.i.h.b<d.t.a.a$b> r11 = r0.a
            r11.a(r4)
        L_0x02bc:
            d.t.a.a$b r4 = r0.a(r10, r6, r13, r3)
        L_0x02c0:
            if (r14 != 0) goto L_0x02c6
            r0.a((d.t.a.a.b) r4)
            goto L_0x02cd
        L_0x02c6:
            r0.b(r4)
            goto L_0x02cd
        L_0x02ca:
            r0.b(r4)
        L_0x02cd:
            int r2 = r2 + 1
            goto L_0x01f4
        L_0x02d1:
            java.util.ArrayList<d.t.a.a$b> r1 = r0.b
            r1.clear()
            return
        L_0x02d7:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: d.t.a.a.d():void");
    }

    public void c(b bVar) {
        if (!this.f762e) {
            bVar.f765c = null;
            this.a.a(bVar);
        }
    }

    public final void a(b bVar) {
        int i2;
        int i3 = bVar.a;
        if (i3 == 1 || i3 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int b2 = b(bVar.b, i3);
        int i4 = bVar.b;
        int i5 = bVar.a;
        if (i5 == 2) {
            i2 = 0;
        } else if (i5 == 4) {
            i2 = 1;
        } else {
            throw new IllegalArgumentException("op should be remove or update." + bVar);
        }
        int i6 = 1;
        for (int i7 = 1; i7 < bVar.f766d; i7++) {
            int b3 = b((i2 * i7) + bVar.b, bVar.a);
            int i8 = bVar.a;
            if (i8 == 2 ? b3 == b2 : i8 == 4 && b3 == b2 + 1) {
                i6++;
            } else {
                b a2 = a(bVar.a, b2, i6, bVar.f765c);
                a(a2, i4);
                if (!this.f762e) {
                    a2.f765c = null;
                    this.a.a(a2);
                }
                if (bVar.a == 4) {
                    i4 += i6;
                }
                b2 = b3;
                i6 = 1;
            }
        }
        Object obj = bVar.f765c;
        if (!this.f762e) {
            bVar.f765c = null;
            this.a.a(bVar);
        }
        if (i6 > 0) {
            b a3 = a(bVar.a, b2, i6, obj);
            a(a3, i4);
            if (!this.f762e) {
                a3.f765c = null;
                this.a.a(a3);
            }
        }
    }

    public void a(b bVar, int i2) {
        ((u) this.f761d).a(bVar);
        int i3 = bVar.a;
        if (i3 == 2) {
            C0041a aVar = this.f761d;
            int i4 = bVar.f766d;
            u uVar = (u) aVar;
            uVar.a.a(i2, i4, true);
            s sVar = uVar.a;
            sVar.F0 = true;
            sVar.C0.f839c += i4;
        } else if (i3 == 4) {
            ((u) this.f761d).a(i2, bVar.f766d, bVar.f765c);
        } else {
            throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
        }
    }

    public final void b(b bVar) {
        this.f760c.add(bVar);
        int i2 = bVar.a;
        if (i2 == 1) {
            ((u) this.f761d).a(bVar.b, bVar.f766d);
        } else if (i2 == 2) {
            C0041a aVar = this.f761d;
            u uVar = (u) aVar;
            uVar.a.a(bVar.b, bVar.f766d, false);
            uVar.a.F0 = true;
        } else if (i2 == 4) {
            ((u) this.f761d).a(bVar.b, bVar.f766d, bVar.f765c);
        } else if (i2 == 8) {
            ((u) this.f761d).b(bVar.b, bVar.f766d);
        } else {
            throw new IllegalArgumentException("Unknown update op type for " + bVar);
        }
    }

    public final boolean a(int i2) {
        int size = this.f760c.size();
        for (int i3 = 0; i3 < size; i3++) {
            b bVar = this.f760c.get(i3);
            int i4 = bVar.a;
            if (i4 == 8) {
                if (a(bVar.f766d, i3 + 1) == i2) {
                    return true;
                }
            } else if (i4 == 1) {
                int i5 = bVar.b;
                int i6 = bVar.f766d + i5;
                while (i5 < i6) {
                    if (a(i5, i3 + 1) == i2) {
                        return true;
                    }
                    i5++;
                }
                continue;
            } else {
                continue;
            }
        }
        return false;
    }

    public void b() {
        a();
        int size = this.b.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.b.get(i2);
            int i3 = bVar.a;
            if (i3 == 1) {
                ((u) this.f761d).a(bVar);
                ((u) this.f761d).a(bVar.b, bVar.f766d);
            } else if (i3 == 2) {
                ((u) this.f761d).a(bVar);
                C0041a aVar = this.f761d;
                int i4 = bVar.b;
                int i5 = bVar.f766d;
                u uVar = (u) aVar;
                uVar.a.a(i4, i5, true);
                s sVar = uVar.a;
                sVar.F0 = true;
                sVar.C0.f839c += i5;
            } else if (i3 == 4) {
                ((u) this.f761d).a(bVar);
                ((u) this.f761d).a(bVar.b, bVar.f766d, bVar.f765c);
            } else if (i3 == 8) {
                ((u) this.f761d).a(bVar);
                ((u) this.f761d).b(bVar.b, bVar.f766d);
            }
        }
        a((List<b>) this.b);
        this.f764g = 0;
    }

    public int a(int i2, int i3) {
        int size = this.f760c.size();
        while (i3 < size) {
            b bVar = this.f760c.get(i3);
            int i4 = bVar.a;
            if (i4 == 8) {
                int i5 = bVar.b;
                if (i5 == i2) {
                    i2 = bVar.f766d;
                } else {
                    if (i5 < i2) {
                        i2--;
                    }
                    if (bVar.f766d <= i2) {
                        i2++;
                    }
                }
            } else {
                int i6 = bVar.b;
                if (i6 > i2) {
                    continue;
                } else if (i4 == 2) {
                    int i7 = bVar.f766d;
                    if (i2 < i6 + i7) {
                        return -1;
                    }
                    i2 -= i7;
                } else if (i4 == 1) {
                    i2 += bVar.f766d;
                }
            }
            i3++;
        }
        return i2;
    }

    public b a(int i2, int i3, int i4, Object obj) {
        b a2 = this.a.a();
        if (a2 == null) {
            return new b(i2, i3, i4, obj);
        }
        a2.a = i2;
        a2.b = i3;
        a2.f766d = i4;
        a2.f765c = obj;
        return a2;
    }

    public void a(List<b> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            c(list.get(i2));
        }
        list.clear();
    }
}
