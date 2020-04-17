package e.b.a.a.s;

import java.util.ArrayList;
import java.util.Arrays;

public final class g {

    /* renamed from: l  reason: collision with root package name */
    public static final char[] f1111l = new char[0];
    public final a a;
    public char[] b;

    /* renamed from: c  reason: collision with root package name */
    public int f1112c;

    /* renamed from: d  reason: collision with root package name */
    public int f1113d;

    /* renamed from: e  reason: collision with root package name */
    public ArrayList<char[]> f1114e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f1115f;

    /* renamed from: g  reason: collision with root package name */
    public int f1116g;

    /* renamed from: h  reason: collision with root package name */
    public char[] f1117h;

    /* renamed from: i  reason: collision with root package name */
    public int f1118i;

    /* renamed from: j  reason: collision with root package name */
    public String f1119j;

    /* renamed from: k  reason: collision with root package name */
    public char[] f1120k;

    public g(a aVar) {
        this.a = aVar;
    }

    public void a(char[] cArr, int i2, int i3) {
        this.f1119j = null;
        this.f1120k = null;
        this.b = cArr;
        this.f1112c = i2;
        this.f1113d = i3;
        if (this.f1115f) {
            a();
        }
    }

    public String b() {
        if (this.f1119j == null) {
            if (this.f1120k != null) {
                this.f1119j = new String(this.f1120k);
            } else {
                String str = "";
                if (this.f1112c < 0) {
                    int i2 = this.f1116g;
                    int i3 = this.f1118i;
                    if (i2 == 0) {
                        if (i3 != 0) {
                            str = new String(this.f1117h, 0, i3);
                        }
                        this.f1119j = str;
                    } else {
                        StringBuilder sb = new StringBuilder(i2 + i3);
                        ArrayList<char[]> arrayList = this.f1114e;
                        if (arrayList != null) {
                            int size = arrayList.size();
                            for (int i4 = 0; i4 < size; i4++) {
                                char[] cArr = this.f1114e.get(i4);
                                sb.append(cArr, 0, cArr.length);
                            }
                        }
                        sb.append(this.f1117h, 0, this.f1118i);
                        this.f1119j = sb.toString();
                    }
                } else if (this.f1113d < 1) {
                    this.f1119j = str;
                    return str;
                } else {
                    this.f1119j = new String(this.b, this.f1112c, this.f1113d);
                }
            }
        }
        return this.f1119j;
    }

    public char[] c() {
        this.f1112c = -1;
        this.f1118i = 0;
        this.f1113d = 0;
        this.b = null;
        this.f1119j = null;
        this.f1120k = null;
        if (this.f1115f) {
            a();
        }
        char[] cArr = this.f1117h;
        if (cArr != null) {
            return cArr;
        }
        char[] a2 = a(0);
        this.f1117h = a2;
        return a2;
    }

    public final void d() {
        if (this.f1114e == null) {
            this.f1114e = new ArrayList<>();
        }
        char[] cArr = this.f1117h;
        this.f1115f = true;
        this.f1114e.add(cArr);
        this.f1116g += cArr.length;
        this.f1118i = 0;
        int length = cArr.length;
        int i2 = length + (length >> 1);
        if (i2 < 1000) {
            i2 = 1000;
        } else if (i2 > 262144) {
            i2 = 262144;
        }
        this.f1117h = new char[i2];
    }

    public char[] e() {
        char[] cArr = this.f1117h;
        int length = cArr.length;
        int i2 = (length >> 1) + length;
        if (i2 > 262144) {
            i2 = (length >> 2) + length;
        }
        char[] copyOf = Arrays.copyOf(cArr, i2);
        this.f1117h = copyOf;
        return copyOf;
    }

    public char[] f() {
        if (this.f1114e == null) {
            this.f1114e = new ArrayList<>();
        }
        this.f1115f = true;
        this.f1114e.add(this.f1117h);
        int length = this.f1117h.length;
        this.f1116g += length;
        this.f1118i = 0;
        int i2 = length + (length >> 1);
        if (i2 < 1000) {
            i2 = 1000;
        } else if (i2 > 262144) {
            i2 = 262144;
        }
        char[] cArr = new char[i2];
        this.f1117h = cArr;
        return cArr;
    }

    public char[] g() {
        if (this.f1112c >= 0) {
            b(1);
        } else {
            char[] cArr = this.f1117h;
            if (cArr == null) {
                this.f1117h = a(0);
            } else if (this.f1118i >= cArr.length) {
                d();
            }
        }
        return this.f1117h;
    }

    public char[] h() {
        char[] cArr;
        int i2;
        int i3 = this.f1112c;
        if (i3 >= 0) {
            return this.b;
        }
        char[] cArr2 = this.f1120k;
        if (cArr2 != null) {
            return cArr2;
        }
        String str = this.f1119j;
        if (str != null) {
            char[] charArray = str.toCharArray();
            this.f1120k = charArray;
            return charArray;
        } else if (!this.f1115f) {
            char[] cArr3 = this.f1117h;
            return cArr3 == null ? f1111l : cArr3;
        } else {
            if (cArr2 == null) {
                if (str != null) {
                    cArr = str.toCharArray();
                } else if (i3 >= 0) {
                    int i4 = this.f1113d;
                    if (i4 < 1) {
                        cArr = f1111l;
                    } else if (i3 == 0) {
                        cArr = Arrays.copyOf(this.b, i4);
                    } else {
                        cArr = Arrays.copyOfRange(this.b, i3, i4 + i3);
                    }
                } else {
                    int j2 = j();
                    if (j2 < 1) {
                        cArr = f1111l;
                    } else {
                        cArr = new char[j2];
                        ArrayList<char[]> arrayList = this.f1114e;
                        if (arrayList != null) {
                            int size = arrayList.size();
                            i2 = 0;
                            for (int i5 = 0; i5 < size; i5++) {
                                char[] cArr4 = this.f1114e.get(i5);
                                int length = cArr4.length;
                                System.arraycopy(cArr4, 0, cArr, i2, length);
                                i2 += length;
                            }
                        } else {
                            i2 = 0;
                        }
                        System.arraycopy(this.f1117h, 0, cArr, i2, this.f1118i);
                    }
                }
                cArr2 = cArr;
                this.f1120k = cArr2;
            }
            return cArr2;
        }
    }

    public void i() {
        this.f1112c = -1;
        this.f1118i = 0;
        this.f1113d = 0;
        this.b = null;
        this.f1119j = null;
        this.f1120k = null;
        if (this.f1115f) {
            a();
        }
    }

    public int j() {
        if (this.f1112c >= 0) {
            return this.f1113d;
        }
        char[] cArr = this.f1120k;
        if (cArr != null) {
            return cArr.length;
        }
        String str = this.f1119j;
        if (str != null) {
            return str.length();
        }
        return this.f1116g + this.f1118i;
    }

    public String toString() {
        return b();
    }

    public final char[] a(int i2) {
        a aVar = this.a;
        if (aVar != null) {
            return aVar.a(2, i2);
        }
        return new char[Math.max(i2, 1000)];
    }

    public final void a() {
        this.f1115f = false;
        this.f1114e.clear();
        this.f1116g = 0;
        this.f1118i = 0;
    }

    public final void b(int i2) {
        int i3 = this.f1113d;
        this.f1113d = 0;
        char[] cArr = this.b;
        this.b = null;
        int i4 = this.f1112c;
        this.f1112c = -1;
        int i5 = i2 + i3;
        char[] cArr2 = this.f1117h;
        if (cArr2 == null || i5 > cArr2.length) {
            this.f1117h = a(i5);
        }
        if (i3 > 0) {
            System.arraycopy(cArr, i4, this.f1117h, 0, i3);
        }
        this.f1116g = 0;
        this.f1118i = i3;
    }
}
