package i.a.b.l;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import java.math.BigInteger;

public abstract class c extends b {
    public int w;

    public c(int i2) {
        super(i2);
    }

    public Object a(boolean[] zArr) {
        boolean z;
        int i2;
        int i3;
        boolean z2;
        int i4;
        int i5 = this.f1418f;
        c();
        f();
        char c2 = this.a;
        boolean z3 = true;
        if (c2 == '.' || c2 == 'E' || c2 == 'e') {
            if (this.a == '.') {
                c();
                f();
            }
            char c3 = this.a;
            if (c3 == 'E' || c3 == 'e') {
                this.f1415c.a('E');
                c();
                char c4 = this.a;
                if (c4 == '+' || c4 == '-' || (c4 >= '0' && c4 <= '9')) {
                    this.f1415c.a(this.a);
                    c();
                    f();
                    g();
                    char c5 = this.a;
                    if (c5 < 0 || c5 >= '~' || zArr[c5] || c5 == 26) {
                        a(i5, this.f1418f);
                        return b();
                    }
                    b(zArr);
                    a(i5, this.f1418f);
                    if (this.f1421i) {
                        return this.f1417e;
                    }
                    throw new e(this.f1418f, 1, this.f1417e);
                }
                b(zArr);
                a(i5, this.f1418f);
                if (this.f1421i) {
                    if (!this.f1419g) {
                        a();
                    }
                    return this.f1417e;
                }
                throw new e(this.f1418f, 1, this.f1417e);
            }
            g();
            char c6 = this.a;
            if (c6 < 0 || c6 >= '~' || zArr[c6] || c6 == 26) {
                a(i5, this.f1418f);
                return b();
            }
            b(zArr);
            a(i5, this.f1418f);
            if (this.f1421i) {
                return this.f1417e;
            }
            throw new e(this.f1418f, 1, this.f1417e);
        }
        g();
        char c7 = this.a;
        if (c7 < 0 || c7 >= '~' || zArr[c7] || c7 == 26) {
            a(i5, this.f1418f);
            String str = this.f1417e;
            int length = str.length();
            if (str.charAt(0) == '-') {
                i3 = 20;
                if (this.f1419g || length < 3 || str.charAt(1) != '0') {
                    i2 = 1;
                    z = true;
                } else {
                    throw new e(this.f1418f, 6, str);
                }
            } else if (this.f1419g || length < 2 || str.charAt(0) != '0') {
                i3 = 19;
                i2 = 0;
                z = false;
            } else {
                throw new e(this.f1418f, 6, str);
            }
            if (length < i3) {
                i4 = length;
                z2 = false;
            } else if (length > i3) {
                return new BigInteger(str, 10);
            } else {
                i4 = length - 1;
                z2 = true;
            }
            long j2 = 0;
            while (i2 < i4) {
                j2 = (j2 * 10) + ((long) ('0' - str.charAt(i2)));
                i2++;
            }
            if (z2) {
                int i6 = (j2 > -922337203685477580L ? 1 : (j2 == -922337203685477580L ? 0 : -1));
                if (i6 > 0 || (i6 >= 0 && (!z ? str.charAt(i2) <= '7' : str.charAt(i2) <= '8'))) {
                    z3 = false;
                }
                if (z3) {
                    return new BigInteger(str, 10);
                }
                j2 = (j2 * 10) + ((long) ('0' - str.charAt(i2)));
            }
            if (!z) {
                long j3 = -j2;
                if (!this.p || j3 > 2147483647L) {
                    return Long.valueOf(j3);
                }
                return Integer.valueOf((int) j3);
            } else if (!this.p || j2 < -2147483648L) {
                return Long.valueOf(j2);
            } else {
                return Integer.valueOf((int) j2);
            }
        } else {
            b(zArr);
            a(i5, this.f1418f);
            if (this.f1421i) {
                return this.f1417e;
            }
            throw new e(this.f1418f, 1, this.f1417e);
        }
    }

    public abstract void a(int i2, int i3);

    public void e() {
        if (this.f1422j || this.a != '\'') {
            d dVar = (d) this;
            int indexOf = dVar.x.indexOf(this.a, this.f1418f + 1);
            if (indexOf != -1) {
                dVar.f1417e = dVar.x.substring(this.f1418f + 1, indexOf);
                if (this.f1417e.indexOf(92) == -1) {
                    if (!this.n) {
                        int length = this.f1417e.length();
                        for (int i2 = 0; i2 < length; i2++) {
                            char charAt = this.f1417e.charAt(i2);
                            if (charAt >= 0) {
                                if (charAt <= 31) {
                                    throw new e(this.f1418f + i2, 0, Character.valueOf(charAt));
                                } else if (charAt == 127 && this.q) {
                                    throw new e(this.f1418f + i2, 0, Character.valueOf(charAt));
                                }
                            }
                        }
                    }
                    this.f1418f = indexOf;
                    c();
                    return;
                }
                this.f1415c.b = -1;
                char c2 = this.a;
                while (true) {
                    c();
                    char c3 = this.a;
                    if (c3 == '\"' || c3 == '\'') {
                        char c4 = this.a;
                        if (c2 == c4) {
                            c();
                            this.f1417e = this.f1415c.toString();
                            return;
                        }
                        this.f1415c.a(c4);
                    } else if (c3 != '\\') {
                        if (c3 != 127) {
                            switch (c3) {
                                case 0:
                                case 1:
                                case 2:
                                case 3:
                                case 4:
                                case 5:
                                case 6:
                                case 7:
                                case 8:
                                case 9:
                                case 10:
                                case 11:
                                case 12:
                                case 13:
                                case 14:
                                case 15:
                                case 16:
                                case 17:
                                case 18:
                                case 19:
                                case 20:
                                case 21:
                                case 22:
                                case 23:
                                case 24:
                                case 25:
                                case 27:
                                case 28:
                                case 29:
                                case 30:
                                case 31:
                                    if (this.n) {
                                        continue;
                                    } else {
                                        throw new e(this.f1418f, 0, Character.valueOf(this.a));
                                    }
                                case 26:
                                    throw new e(this.f1418f - 1, 3, (Object) null);
                            }
                        } else if (this.n) {
                            continue;
                        } else if (this.q) {
                            throw new e(this.f1418f, 0, Character.valueOf(this.a));
                        }
                        this.f1415c.a(this.a);
                    } else {
                        c();
                        char c5 = this.a;
                        if (c5 == '\"') {
                            this.f1415c.a('\"');
                        } else if (c5 == '\'') {
                            this.f1415c.a(WWWAuthenticateHeader.SINGLE_QUOTE);
                        } else if (c5 == '/') {
                            this.f1415c.a('/');
                        } else if (c5 == '\\') {
                            this.f1415c.a('\\');
                        } else if (c5 == 'b') {
                            this.f1415c.a(8);
                        } else if (c5 == 'f') {
                            this.f1415c.a(12);
                        } else if (c5 == 'n') {
                            this.f1415c.a(10);
                        } else if (c5 == 'r') {
                            this.f1415c.a(13);
                        } else if (c5 == 'x') {
                            this.f1415c.a(a(2));
                        } else if (c5 == 't') {
                            this.f1415c.a(9);
                        } else if (c5 == 'u') {
                            this.f1415c.a(a(4));
                        }
                    }
                }
            } else {
                throw new e(this.w, 3, (Object) null);
            }
        } else if (this.f1421i) {
            boolean[] zArr = b.r;
            int i3 = this.f1418f;
            b(zArr);
            a(i3, this.f1418f);
        } else {
            throw new e(this.f1418f, 0, Character.valueOf(this.a));
        }
    }
}
