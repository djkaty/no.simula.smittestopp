package k.e.a;

import com.microsoft.azure.storage.analytics.LogRecordStreamReader;
import java.lang.reflect.Method;

public final class y {

    /* renamed from: e  reason: collision with root package name */
    public static final y f2438e = new y(0, "VZCBSIFJD", 0, 1);

    /* renamed from: f  reason: collision with root package name */
    public static final y f2439f = new y(1, "VZCBSIFJD", 1, 2);

    /* renamed from: g  reason: collision with root package name */
    public static final y f2440g = new y(2, "VZCBSIFJD", 2, 3);

    /* renamed from: h  reason: collision with root package name */
    public static final y f2441h = new y(3, "VZCBSIFJD", 3, 4);

    /* renamed from: i  reason: collision with root package name */
    public static final y f2442i = new y(4, "VZCBSIFJD", 4, 5);

    /* renamed from: j  reason: collision with root package name */
    public static final y f2443j = new y(5, "VZCBSIFJD", 5, 6);

    /* renamed from: k  reason: collision with root package name */
    public static final y f2444k = new y(6, "VZCBSIFJD", 6, 7);

    /* renamed from: l  reason: collision with root package name */
    public static final y f2445l = new y(7, "VZCBSIFJD", 7, 8);
    public static final y m = new y(8, "VZCBSIFJD", 8, 9);
    public final int a;
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final int f2446c;

    /* renamed from: d  reason: collision with root package name */
    public final int f2447d;

    public y(int i2, String str, int i3, int i4) {
        this.a = i2;
        this.b = str;
        this.f2446c = i3;
        this.f2447d = i4;
    }

    public static y[] a(String str) {
        int i2 = 0;
        int i3 = 1;
        int i4 = 0;
        while (str.charAt(i3) != ')') {
            while (str.charAt(i3) == '[') {
                i3++;
            }
            int i5 = i3 + 1;
            i3 = str.charAt(i3) == 'L' ? str.indexOf(59, i5) + 1 : i5;
            i4++;
        }
        y[] yVarArr = new y[i4];
        int i6 = 1;
        while (str.charAt(i6) != ')') {
            int i7 = i6;
            while (str.charAt(i7) == '[') {
                i7++;
            }
            int i8 = i7 + 1;
            if (str.charAt(i7) == 'L') {
                i8 = str.indexOf(59, i8) + 1;
            }
            yVarArr[i2] = a(str, i6, i8);
            i2++;
            i6 = i8;
        }
        return yVarArr;
    }

    public static y b(Class<?> cls) {
        if (!cls.isPrimitive()) {
            StringBuilder sb = new StringBuilder();
            a(cls, sb);
            String sb2 = sb.toString();
            return a(sb2, 0, sb2.length());
        } else if (cls == Integer.TYPE) {
            return f2443j;
        } else {
            if (cls == Void.TYPE) {
                return f2438e;
            }
            if (cls == Boolean.TYPE) {
                return f2439f;
            }
            if (cls == Byte.TYPE) {
                return f2441h;
            }
            if (cls == Character.TYPE) {
                return f2440g;
            }
            if (cls == Short.TYPE) {
                return f2442i;
            }
            if (cls == Double.TYPE) {
                return m;
            }
            if (cls == Float.TYPE) {
                return f2444k;
            }
            if (cls == Long.TYPE) {
                return f2445l;
            }
            throw new AssertionError();
        }
    }

    public static y c(String str) {
        return new y(str.charAt(0) == '[' ? 9 : 12, str, 0, str.length());
    }

    public static int d(String str) {
        int i2 = 1;
        while (str.charAt(i2) != ')') {
            while (str.charAt(i2) == '[') {
                i2++;
            }
            int i3 = i2 + 1;
            i2 = str.charAt(i2) == 'L' ? str.indexOf(59, i3) + 1 : i3;
        }
        return i2 + 1;
    }

    public static y e(String str) {
        return a(str, 0, str.length());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        int i2 = this.a;
        int i3 = 10;
        if (i2 == 12) {
            i2 = 10;
        }
        int i4 = yVar.a;
        if (i4 != 12) {
            i3 = i4;
        }
        if (i2 != i3) {
            return false;
        }
        int i5 = this.f2446c;
        int i6 = this.f2447d;
        int i7 = yVar.f2446c;
        if (i6 - i5 != yVar.f2447d - i7) {
            return false;
        }
        while (i5 < i6) {
            if (this.b.charAt(i5) != yVar.b.charAt(i7)) {
                return false;
            }
            i5++;
            i7++;
        }
        return true;
    }

    public int hashCode() {
        int i2 = this.a;
        if (i2 == 12) {
            i2 = 10;
        }
        int i3 = i2 * 13;
        if (this.a >= 9) {
            int i4 = this.f2447d;
            for (int i5 = this.f2446c; i5 < i4; i5++) {
                i3 = (this.b.charAt(i5) + i3) * 17;
            }
        }
        return i3;
    }

    public String toString() {
        return a();
    }

    public static y a(String str, int i2, int i3) {
        char charAt = str.charAt(i2);
        if (charAt == '(') {
            return new y(11, str, i2, i3);
        }
        if (charAt == 'F') {
            return f2444k;
        }
        if (charAt == 'L') {
            return new y(10, str, i2 + 1, i3 - 1);
        }
        if (charAt == 'S') {
            return f2442i;
        }
        if (charAt == 'V') {
            return f2438e;
        }
        if (charAt == 'I') {
            return f2443j;
        }
        if (charAt == 'J') {
            return f2445l;
        }
        if (charAt == 'Z') {
            return f2439f;
        }
        if (charAt == '[') {
            return new y(9, str, i2, i3);
        }
        switch (charAt) {
            case 'B':
                return f2441h;
            case 'C':
                return f2440g;
            case 'D':
                return m;
            default:
                throw new IllegalArgumentException();
        }
    }

    public static String a(Class<?> cls) {
        return cls.getName().replace('.', '/');
    }

    public static int b(String str) {
        int i2 = 1;
        char charAt = str.charAt(1);
        int i3 = 1;
        int i4 = 1;
        while (charAt != ')') {
            if (charAt == 'J' || charAt == 'D') {
                i3++;
                i4 += 2;
            } else {
                while (str.charAt(i3) == '[') {
                    i3++;
                }
                int i5 = i3 + 1;
                if (str.charAt(i3) == 'L') {
                    i5 = str.indexOf(59, i5) + 1;
                }
                i4++;
                i3 = i5;
            }
            charAt = str.charAt(i3);
        }
        char charAt2 = str.charAt(i3 + 1);
        if (charAt2 == 'V') {
            return i4 << 2;
        }
        if (charAt2 == 'J' || charAt2 == 'D') {
            i2 = 2;
        }
        return (i4 << 2) | i2;
    }

    public String a() {
        int i2 = this.a;
        if (i2 == 10) {
            return this.b.substring(this.f2446c - 1, this.f2447d + 1);
        }
        if (i2 != 12) {
            return this.b.substring(this.f2446c, this.f2447d);
        }
        return 'L' + this.b.substring(this.f2446c, this.f2447d) + LogRecordStreamReader.FIELD_DELIMITER;
    }

    public static String a(Method method) {
        StringBuilder sb = new StringBuilder();
        sb.append('(');
        for (Class a2 : method.getParameterTypes()) {
            a(a2, sb);
        }
        sb.append(')');
        a(method.getReturnType(), sb);
        return sb.toString();
    }

    public static void a(Class<?> cls, StringBuilder sb) {
        char c2;
        while (cls.isArray()) {
            sb.append('[');
            cls = cls.getComponentType();
        }
        if (cls.isPrimitive()) {
            if (cls == Integer.TYPE) {
                c2 = 'I';
            } else if (cls == Void.TYPE) {
                c2 = 'V';
            } else if (cls == Boolean.TYPE) {
                c2 = 'Z';
            } else if (cls == Byte.TYPE) {
                c2 = 'B';
            } else if (cls == Character.TYPE) {
                c2 = 'C';
            } else if (cls == Short.TYPE) {
                c2 = 'S';
            } else if (cls == Double.TYPE) {
                c2 = 'D';
            } else if (cls == Float.TYPE) {
                c2 = 'F';
            } else if (cls == Long.TYPE) {
                c2 = 'J';
            } else {
                throw new AssertionError();
            }
            sb.append(c2);
            return;
        }
        sb.append('L');
        sb.append(cls.getName().replace('.', '/'));
        sb.append(LogRecordStreamReader.FIELD_DELIMITER);
    }
}
