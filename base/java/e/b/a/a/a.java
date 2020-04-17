package e.b.a.a;

import e.b.a.a.s.c;
import java.io.Serializable;
import java.util.Arrays;

public final class a implements Serializable {
    public final String A;
    public final transient boolean B;
    public final transient char C;
    public final transient int D;
    public final transient int[] x;
    public final transient char[] y;
    public final transient byte[] z;

    public a(String str, String str2, boolean z2, char c2, int i2) {
        this.x = new int[128];
        this.y = new char[64];
        this.z = new byte[64];
        this.A = str;
        this.B = z2;
        this.C = c2;
        this.D = i2;
        int length = str2.length();
        if (length == 64) {
            str2.getChars(0, length, this.y, 0);
            Arrays.fill(this.x, -1);
            for (int i3 = 0; i3 < length; i3++) {
                char c3 = this.y[i3];
                this.z[i3] = (byte) c3;
                this.x[c3] = i3;
            }
            if (z2) {
                this.x[c2] = -2;
                return;
            }
            return;
        }
        throw new IllegalArgumentException(e.a.a.a.a.b("Base64Alphabet length must be exactly 64 (was ", length, ")"));
    }

    public int a(char c2) {
        if (c2 <= 127) {
            return this.x[c2];
        }
        return -1;
    }

    public boolean b(char c2) {
        return c2 == this.C;
    }

    public boolean equals(Object obj) {
        return obj == this;
    }

    public int hashCode() {
        return this.A.hashCode();
    }

    public String toString() {
        return this.A;
    }

    public int a(int i2) {
        if (i2 <= 127) {
            return this.x[i2];
        }
        return -1;
    }

    public void a(String str, c cVar) {
        int length = str.length();
        int i2 = 0;
        while (i2 < length) {
            int i3 = i2 + 1;
            char charAt = str.charAt(i2);
            if (charAt > ' ') {
                int a = a(charAt);
                if (a < 0) {
                    a(charAt, 0, (String) null);
                    throw null;
                } else if (i3 < length) {
                    int i4 = i3 + 1;
                    char charAt2 = str.charAt(i3);
                    int a2 = a(charAt2);
                    if (a2 >= 0) {
                        int i5 = (a << 6) | a2;
                        if (i4 < length) {
                            int i6 = i4 + 1;
                            char charAt3 = str.charAt(i4);
                            int a3 = a(charAt3);
                            if (a3 >= 0) {
                                int i7 = (i5 << 6) | a3;
                                if (i6 < length) {
                                    i3 = i6 + 1;
                                    char charAt4 = str.charAt(i6);
                                    int a4 = a(charAt4);
                                    if (a4 >= 0) {
                                        cVar.b((i7 << 6) | a4);
                                    } else if (a4 == -2) {
                                        cVar.c(i7 >> 2);
                                    } else {
                                        a(charAt4, 3, (String) null);
                                        throw null;
                                    }
                                } else if (!this.B) {
                                    cVar.c(i7 >> 2);
                                    return;
                                } else {
                                    a();
                                    throw null;
                                }
                            } else if (a3 != -2) {
                                a(charAt3, 2, (String) null);
                                throw null;
                            } else if (i6 < length) {
                                i2 = i6 + 1;
                                char charAt5 = str.charAt(i6);
                                if (b(charAt5)) {
                                    cVar.a(i5 >> 4);
                                } else {
                                    StringBuilder a5 = e.a.a.a.a.a("expected padding character '");
                                    a5.append(this.C);
                                    a5.append("'");
                                    a(charAt5, 3, a5.toString());
                                    throw null;
                                }
                            } else {
                                a();
                                throw null;
                            }
                        } else if (!this.B) {
                            cVar.a(i5 >> 4);
                            return;
                        } else {
                            a();
                            throw null;
                        }
                    } else {
                        a(charAt2, 1, (String) null);
                        throw null;
                    }
                } else {
                    a();
                    throw null;
                }
            }
            i2 = i3;
        }
    }

    public a(a aVar, String str, boolean z2, char c2, int i2) {
        this.x = new int[128];
        this.y = new char[64];
        byte[] bArr = new byte[64];
        this.z = bArr;
        this.A = str;
        byte[] bArr2 = aVar.z;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        char[] cArr = aVar.y;
        System.arraycopy(cArr, 0, this.y, 0, cArr.length);
        int[] iArr = aVar.x;
        System.arraycopy(iArr, 0, this.x, 0, iArr.length);
        this.B = z2;
        this.C = c2;
        this.D = i2;
    }

    public void a(char c2, int i2, String str) {
        String str2;
        if (c2 <= ' ') {
            StringBuilder a = e.a.a.a.a.a("Illegal white space character (code 0x");
            a.append(Integer.toHexString(c2));
            a.append(") as character #");
            a.append(i2 + 1);
            a.append(" of 4-char base64 unit: can only used between units");
            str2 = a.toString();
        } else {
            if (c2 == this.C) {
                StringBuilder a2 = e.a.a.a.a.a("Unexpected padding character ('");
                a2.append(this.C);
                a2.append("') as character #");
                a2.append(i2 + 1);
                a2.append(" of 4-char base64 unit: padding only legal as 3rd or 4th character");
                str2 = a2.toString();
            } else if (!Character.isDefined(c2) || Character.isISOControl(c2)) {
                StringBuilder a3 = e.a.a.a.a.a("Illegal character (code 0x");
                a3.append(Integer.toHexString(c2));
                a3.append(") in base64 content");
                str2 = a3.toString();
            } else {
                str2 = "Illegal character '" + c2 + "' (code 0x" + Integer.toHexString(c2) + ") in base64 content";
            }
        }
        if (str != null) {
            str2 = e.a.a.a.a.a(str2, ": ", str);
        }
        throw new IllegalArgumentException(str2);
    }

    public void a() {
        throw new IllegalArgumentException("Unexpected end-of-String in base64 content");
    }
}
