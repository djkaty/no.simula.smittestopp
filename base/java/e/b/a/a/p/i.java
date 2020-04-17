package e.b.a.a.p;

import e.a.a.a.a;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;

public final class i extends Writer {
    public final int A;
    public int B = 0;
    public int C;
    public final b x;
    public OutputStream y;
    public byte[] z;

    public i(b bVar, OutputStream outputStream) {
        this.x = bVar;
        this.y = outputStream;
        bVar.a((Object) bVar.f1058f);
        byte[] a = bVar.f1056d.a(1);
        bVar.f1058f = a;
        this.z = a;
        this.A = a.length - 4;
    }

    public static void b(int i2) {
        throw new IOException(c(i2));
    }

    public static String c(int i2) {
        if (i2 > 1114111) {
            StringBuilder a = a.a("Illegal character point (0x");
            a.append(Integer.toHexString(i2));
            a.append(") to output; max is 0x10FFFF as per RFC 4627");
            return a.toString();
        } else if (i2 < 55296) {
            StringBuilder a2 = a.a("Illegal character point (0x");
            a2.append(Integer.toHexString(i2));
            a2.append(") to output");
            return a2.toString();
        } else if (i2 <= 56319) {
            StringBuilder a3 = a.a("Unmatched first part of surrogate pair (0x");
            a3.append(Integer.toHexString(i2));
            a3.append(")");
            return a3.toString();
        } else {
            StringBuilder a4 = a.a("Unmatched second part of surrogate pair (0x");
            a4.append(Integer.toHexString(i2));
            a4.append(")");
            return a4.toString();
        }
    }

    public int a(int i2) {
        int i3 = this.C;
        this.C = 0;
        if (i2 < 56320 || i2 > 57343) {
            StringBuilder a = a.a("Broken surrogate pair: first char 0x");
            a.append(Integer.toHexString(i3));
            a.append(", second 0x");
            a.append(Integer.toHexString(i2));
            a.append("; illegal combination");
            throw new IOException(a.toString());
        }
        return (i2 - 56320) + ((i3 - 55296) << 10) + 65536;
    }

    public Writer append(char c2) {
        write((int) c2);
        return this;
    }

    public void close() {
        OutputStream outputStream = this.y;
        if (outputStream != null) {
            int i2 = this.B;
            if (i2 > 0) {
                outputStream.write(this.z, 0, i2);
                this.B = 0;
            }
            OutputStream outputStream2 = this.y;
            this.y = null;
            byte[] bArr = this.z;
            if (bArr != null) {
                this.z = null;
                this.x.b(bArr);
            }
            outputStream2.close();
            int i3 = this.C;
            this.C = 0;
            if (i3 > 0) {
                b(i3);
                throw null;
            }
        }
    }

    public void flush() {
        OutputStream outputStream = this.y;
        if (outputStream != null) {
            int i2 = this.B;
            if (i2 > 0) {
                outputStream.write(this.z, 0, i2);
                this.B = 0;
            }
            this.y.flush();
        }
    }

    public void write(char[] cArr) {
        write(cArr, 0, cArr.length);
    }

    /* renamed from: append  reason: collision with other method in class */
    public Appendable m8append(char c2) {
        write((int) c2);
        return this;
    }

    public void write(char[] cArr, int i2, int i3) {
        if (i3 >= 2) {
            if (this.C > 0) {
                i3--;
                write(a(cArr[i2]));
                i2++;
            }
            int i4 = this.B;
            byte[] bArr = this.z;
            int i5 = this.A;
            int i6 = i3 + r9;
            while (r9 < i6) {
                if (i4 >= i5) {
                    this.y.write(bArr, 0, i4);
                    i4 = 0;
                }
                int i7 = r9 + 1;
                char c2 = cArr[r9];
                if (c2 < 128) {
                    int i8 = i4 + 1;
                    bArr[i4] = (byte) c2;
                    int i9 = i6 - i7;
                    int i10 = i5 - i8;
                    if (i9 > i10) {
                        i9 = i10;
                    }
                    int i11 = i9 + i7;
                    while (true) {
                        r9 = i7;
                        i4 = i8;
                        if (r9 >= i11) {
                            continue;
                            break;
                        }
                        i7 = r9 + 1;
                        c2 = cArr[r9];
                        if (c2 >= 128) {
                            break;
                        }
                        i8 = i4 + 1;
                        bArr[i4] = (byte) c2;
                    }
                }
                if (c2 < 2048) {
                    int i12 = i4 + 1;
                    bArr[i4] = (byte) ((c2 >> 6) | 192);
                    i4 = i12 + 1;
                    bArr[i12] = (byte) ((c2 & '?') | 128);
                    r9 = i7;
                } else if (c2 < 55296 || c2 > 57343) {
                    int i13 = i4 + 1;
                    bArr[i4] = (byte) ((c2 >> 12) | 224);
                    int i14 = i13 + 1;
                    bArr[i13] = (byte) (((c2 >> 6) & 63) | 128);
                    bArr[i14] = (byte) ((c2 & '?') | 128);
                    r9 = i7;
                    i4 = i14 + 1;
                } else if (c2 <= 56319) {
                    this.C = c2;
                    if (i7 >= i6) {
                        break;
                    }
                    r9 = i7 + 1;
                    int a = a(cArr[i7]);
                    if (a <= 1114111) {
                        int i15 = i4 + 1;
                        bArr[i4] = (byte) ((a >> 18) | 240);
                        int i16 = i15 + 1;
                        bArr[i15] = (byte) (((a >> 12) & 63) | 128);
                        int i17 = i16 + 1;
                        bArr[i16] = (byte) (((a >> 6) & 63) | 128);
                        i4 = i17 + 1;
                        bArr[i17] = (byte) ((a & 63) | 128);
                    } else {
                        this.B = i4;
                        b(a);
                        throw null;
                    }
                } else {
                    this.B = i4;
                    b(c2);
                    throw null;
                }
            }
            this.B = i4;
        } else if (i3 == 1) {
            write((int) cArr[i2]);
        }
    }

    public void write(int i2) {
        int i3;
        if (this.C > 0) {
            i2 = a(i2);
        } else if (i2 >= 55296 && i2 <= 57343) {
            if (i2 <= 56319) {
                this.C = i2;
                return;
            } else {
                b(i2);
                throw null;
            }
        }
        int i4 = this.B;
        if (i4 >= this.A) {
            this.y.write(this.z, 0, i4);
            this.B = 0;
        }
        if (i2 < 128) {
            byte[] bArr = this.z;
            int i5 = this.B;
            this.B = i5 + 1;
            bArr[i5] = (byte) i2;
            return;
        }
        int i6 = this.B;
        if (i2 < 2048) {
            byte[] bArr2 = this.z;
            int i7 = i6 + 1;
            bArr2[i6] = (byte) ((i2 >> 6) | 192);
            i3 = i7 + 1;
            bArr2[i7] = (byte) ((i2 & 63) | 128);
        } else if (i2 <= 65535) {
            byte[] bArr3 = this.z;
            int i8 = i6 + 1;
            bArr3[i6] = (byte) ((i2 >> 12) | 224);
            int i9 = i8 + 1;
            bArr3[i8] = (byte) (((i2 >> 6) & 63) | 128);
            bArr3[i9] = (byte) ((i2 & 63) | 128);
            i3 = i9 + 1;
        } else if (i2 <= 1114111) {
            byte[] bArr4 = this.z;
            int i10 = i6 + 1;
            bArr4[i6] = (byte) ((i2 >> 18) | 240);
            int i11 = i10 + 1;
            bArr4[i10] = (byte) (((i2 >> 12) & 63) | 128);
            int i12 = i11 + 1;
            bArr4[i11] = (byte) (((i2 >> 6) & 63) | 128);
            i3 = i12 + 1;
            bArr4[i12] = (byte) ((i2 & 63) | 128);
        } else {
            b(i2);
            throw null;
        }
        this.B = i3;
    }

    public void write(String str) {
        write(str, 0, str.length());
    }

    public void write(String str, int i2, int i3) {
        if (i3 >= 2) {
            if (this.C > 0) {
                i3--;
                write(a(str.charAt(i2)));
                i2++;
            }
            int i4 = this.B;
            byte[] bArr = this.z;
            int i5 = this.A;
            int i6 = i3 + r9;
            while (r9 < i6) {
                if (i4 >= i5) {
                    this.y.write(bArr, 0, i4);
                    i4 = 0;
                }
                int i7 = r9 + 1;
                char charAt = str.charAt(r9);
                if (charAt < 128) {
                    int i8 = i4 + 1;
                    bArr[i4] = (byte) charAt;
                    int i9 = i6 - i7;
                    int i10 = i5 - i8;
                    if (i9 > i10) {
                        i9 = i10;
                    }
                    int i11 = i9 + i7;
                    while (true) {
                        r9 = i7;
                        i4 = i8;
                        if (r9 >= i11) {
                            continue;
                            break;
                        }
                        i7 = r9 + 1;
                        charAt = str.charAt(r9);
                        if (charAt >= 128) {
                            break;
                        }
                        i8 = i4 + 1;
                        bArr[i4] = (byte) charAt;
                    }
                }
                if (charAt < 2048) {
                    int i12 = i4 + 1;
                    bArr[i4] = (byte) ((charAt >> 6) | 192);
                    i4 = i12 + 1;
                    bArr[i12] = (byte) ((charAt & '?') | 128);
                    r9 = i7;
                } else if (charAt < 55296 || charAt > 57343) {
                    int i13 = i4 + 1;
                    bArr[i4] = (byte) ((charAt >> 12) | 224);
                    int i14 = i13 + 1;
                    bArr[i13] = (byte) (((charAt >> 6) & 63) | 128);
                    bArr[i14] = (byte) ((charAt & '?') | 128);
                    r9 = i7;
                    i4 = i14 + 1;
                } else if (charAt <= 56319) {
                    this.C = charAt;
                    if (i7 >= i6) {
                        break;
                    }
                    r9 = i7 + 1;
                    int a = a(str.charAt(i7));
                    if (a <= 1114111) {
                        int i15 = i4 + 1;
                        bArr[i4] = (byte) ((a >> 18) | 240);
                        int i16 = i15 + 1;
                        bArr[i15] = (byte) (((a >> 12) & 63) | 128);
                        int i17 = i16 + 1;
                        bArr[i16] = (byte) (((a >> 6) & 63) | 128);
                        i4 = i17 + 1;
                        bArr[i17] = (byte) ((a & 63) | 128);
                    } else {
                        this.B = i4;
                        b(a);
                        throw null;
                    }
                } else {
                    this.B = i4;
                    b(charAt);
                    throw null;
                }
            }
            this.B = i4;
        } else if (i3 == 1) {
            write((int) str.charAt(i2));
        }
    }
}
