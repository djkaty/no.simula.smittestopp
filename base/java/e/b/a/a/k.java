package e.b.a.a;

import com.microsoft.identity.client.internal.MsalUtils;
import e.b.a.a.p.a;

public abstract class k {
    public int a;
    public int b;

    public abstract String a();

    public final boolean b() {
        return this.a == 1;
    }

    public final boolean c() {
        return this.a == 2;
    }

    public final boolean d() {
        return this.a == 0;
    }

    public String e() {
        int i2 = this.a;
        if (i2 == 0) {
            return "root";
        }
        if (i2 != 1) {
            return i2 != 2 ? MsalUtils.QUERY_STRING_SYMBOL : "Object";
        }
        return "Array";
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        int i2 = this.a;
        if (i2 != 0) {
            int i3 = 0;
            if (i2 != 1) {
                sb.append('{');
                String a2 = a();
                if (a2 != null) {
                    sb.append('\"');
                    int[] iArr = a.f1053h;
                    int length = iArr.length;
                    int length2 = a2.length();
                    while (i3 < length2) {
                        char charAt = a2.charAt(i3);
                        if (charAt >= length || iArr[charAt] == 0) {
                            sb.append(charAt);
                        } else {
                            sb.append('\\');
                            int i4 = iArr[charAt];
                            if (i4 < 0) {
                                sb.append('u');
                                sb.append('0');
                                sb.append('0');
                                sb.append(a.a[charAt >> 4]);
                                sb.append(a.a[charAt & 15]);
                            } else {
                                sb.append((char) i4);
                            }
                        }
                        i3++;
                    }
                    sb.append('\"');
                } else {
                    sb.append('?');
                }
                sb.append('}');
            } else {
                sb.append('[');
                int i5 = this.b;
                if (i5 >= 0) {
                    i3 = i5;
                }
                sb.append(i3);
                sb.append(']');
            }
        } else {
            sb.append("/");
        }
        return sb.toString();
    }
}
