package k.b.a;

import e.a.a.a.a;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class k extends FilterInputStream {
    public final int x;
    public final boolean y;
    public final byte[][] z;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public k(InputStream inputStream) {
        super(inputStream);
        int a = d2.a(inputStream);
        this.x = a;
        this.y = false;
        this.z = new byte[11][];
    }

    public static int a(InputStream inputStream, int i2) {
        int i3 = i2 & 31;
        if (i3 != 31) {
            return i3;
        }
        int i4 = 0;
        int read = inputStream.read();
        if ((read & 127) != 0) {
            while (read >= 0 && (read & 128) != 0) {
                i4 = (i4 | (read & 127)) << 7;
                read = inputStream.read();
            }
            if (read >= 0) {
                return i4 | (read & 127);
            }
            throw new EOFException("EOF found inside tag value.");
        }
        throw new IOException("corrupted stream - invalid high tag number found");
    }

    public static int a(InputStream inputStream, int i2, boolean z2) {
        int read = inputStream.read();
        if (read < 0) {
            throw new EOFException("EOF found when length expected");
        } else if (read == 128) {
            return -1;
        } else {
            if (read <= 127) {
                return read;
            }
            int i3 = read & 127;
            if (i3 <= 4) {
                int i4 = 0;
                int i5 = 0;
                while (i5 < i3) {
                    int read2 = inputStream.read();
                    if (read2 >= 0) {
                        i4 = (i4 << 8) + read2;
                        i5++;
                    } else {
                        throw new EOFException("EOF found reading length");
                    }
                }
                if (i4 < 0) {
                    throw new IOException("corrupted stream - negative length found");
                } else if (i4 < i2 || z2) {
                    return i4;
                } else {
                    throw new IOException("corrupted stream - out of bounds length found: " + i4 + " >= " + i2);
                }
            } else {
                throw new IOException(a.a("DER length more than 4 bytes: ", i3));
            }
        }
    }

    public t a(int i2, int i3, int i4) {
        int i5 = 0;
        boolean z2 = (i2 & 32) != 0;
        w1 w1Var = new w1(this, i4, this.x);
        if ((i2 & 64) != 0) {
            return new m1(z2, i3, w1Var.a());
        }
        if ((i2 & 128) != 0) {
            return new z(w1Var).a(z2, i3);
        }
        if (!z2) {
            return a(i3, w1Var, this.z);
        }
        if (i3 == 4) {
            f a = a(w1Var);
            int i6 = a.b;
            p[] pVarArr = new p[i6];
            while (i5 != i6) {
                e a2 = a.a(i5);
                if (a2 instanceof p) {
                    pVarArr[i5] = (p) a2;
                    i5++;
                } else {
                    StringBuilder a3 = a.a("unknown object encountered in constructed OCTET STRING: ");
                    a3.append(a2.getClass());
                    throw new h(a3.toString());
                }
            }
            return new h0(pVarArr);
        } else if (i3 == 8) {
            return new o1(a(w1Var));
        } else {
            if (i3 == 16) {
                return this.y ? new a2(w1Var.a()) : p1.a(a(w1Var));
            }
            if (i3 == 17) {
                return p1.b(a(w1Var));
            }
            throw new IOException(a.b("unknown tag ", i3, " encountered"));
        }
    }

    public t readObject() {
        int read = read();
        if (read > 0) {
            int a = a((InputStream) this, read);
            boolean z2 = (read & 32) != 0;
            int a2 = a((InputStream) this, this.x, false);
            if (a2 >= 0) {
                try {
                    return a(read, a, a2);
                } catch (IllegalArgumentException e2) {
                    throw new h("corrupted stream detected", e2);
                }
            } else if (z2) {
                z zVar = new z(new y1(this, this.x), this.x);
                if ((read & 64) != 0) {
                    return new e0(a, zVar.b());
                }
                if ((read & 128) != 0) {
                    return zVar.a(true, a);
                }
                if (a == 4) {
                    return new i0(zVar).a();
                }
                if (a == 8) {
                    try {
                        return new o1(zVar.b());
                    } catch (IllegalArgumentException e3) {
                        throw new h(e3.getMessage(), e3);
                    }
                } else if (a == 16) {
                    return new j0(zVar.b());
                } else {
                    if (a == 17) {
                        return new l0(zVar.b());
                    }
                    throw new IOException("unknown BER object encountered");
                }
            } else {
                throw new IOException("indefinite-length primitive encoding encountered");
            }
        } else if (read != 0) {
            return null;
        } else {
            throw new IOException("unexpected end-of-contents marker");
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public k(InputStream inputStream, boolean z2) {
        super(inputStream);
        int a = d2.a(inputStream);
        this.x = a;
        this.y = z2;
        this.z = new byte[11][];
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public k(byte[] r2) {
        /*
            r1 = this;
            java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream
            r0.<init>(r2)
            int r2 = r2.length
            r1.<init>(r0)
            r1.x = r2
            r2 = 0
            r1.y = r2
            r2 = 11
            byte[][] r2 = new byte[r2][]
            r1.z = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.b.a.k.<init>(byte[]):void");
    }

    public static t a(int i2, w1 w1Var, byte[][] bArr) {
        int i3;
        int i4 = 0;
        if (i2 == 10) {
            byte[] a = a(w1Var, bArr);
            if (a.length > 1) {
                return new g(a);
            }
            if (a.length != 0) {
                byte b = a[0] & 255;
                g[] gVarArr = g.y;
                if (b >= gVarArr.length) {
                    return new g(a);
                }
                g gVar = gVarArr[b];
                if (gVar == null) {
                    gVar = new g(a);
                    gVarArr[b] = gVar;
                }
                return gVar;
            }
            throw new IllegalArgumentException("ENUMERATED has zero length");
        } else if (i2 == 12) {
            return new i1(w1Var.a());
        } else {
            if (i2 != 30) {
                switch (i2) {
                    case 1:
                        return c.b(a(w1Var, bArr));
                    case 2:
                        return new l(w1Var.a(), false);
                    case 3:
                        int i5 = w1Var.A;
                        if (i5 >= 1) {
                            int read = w1Var.read();
                            int i6 = i5 - 1;
                            byte[] bArr2 = new byte[i6];
                            if (i6 != 0) {
                                if (k.b.j.h.a.a(w1Var, bArr2, 0, i6) != i6) {
                                    throw new EOFException("EOF encountered in middle of BIT STRING");
                                } else if (read > 0 && read < 8) {
                                    int i7 = i6 - 1;
                                    if (bArr2[i7] != ((byte) (bArr2[i7] & (255 << read)))) {
                                        return new n1(bArr2, read);
                                    }
                                }
                            }
                            return new r0(bArr2, read);
                        }
                        throw new IllegalArgumentException("truncated BIT STRING detected");
                    case 4:
                        return new a1(w1Var.a());
                    case 5:
                        return y0.x;
                    case 6:
                        return o.b(a(w1Var, bArr));
                    default:
                        switch (i2) {
                            case 18:
                                return new z0(w1Var.a());
                            case 19:
                                return new d1(w1Var.a());
                            case 20:
                                return new g1(w1Var.a());
                            case 21:
                                return new k1(w1Var.a());
                            case 22:
                                return new x0(w1Var.a());
                            case 23:
                                return new d0(w1Var.a());
                            case 24:
                                return new j(w1Var.a());
                            case 25:
                                return new w0(w1Var.a());
                            case 26:
                                return new l1(w1Var.a());
                            case 27:
                                return new u0(w1Var.a());
                            case 28:
                                return new j1(w1Var.a());
                            default:
                                throw new IOException(a.b("unknown tag ", i2, " encountered"));
                        }
                }
            } else {
                int i8 = w1Var.A;
                if ((i8 & 1) == 0) {
                    int i9 = i8 / 2;
                    char[] cArr = new char[i9];
                    byte[] bArr3 = new byte[8];
                    int i10 = 0;
                    while (i8 >= 8) {
                        if (k.b.j.h.a.a(w1Var, bArr3, 0, 8) == 8) {
                            cArr[i10] = (char) ((bArr3[0] << 8) | (bArr3[1] & 255));
                            cArr[i10 + 1] = (char) ((bArr3[2] << 8) | (bArr3[3] & 255));
                            cArr[i10 + 2] = (char) ((bArr3[4] << 8) | (bArr3[5] & 255));
                            cArr[i10 + 3] = (char) ((bArr3[6] << 8) | (bArr3[7] & 255));
                            i10 += 4;
                            i8 -= 8;
                        } else {
                            throw new EOFException("EOF encountered in middle of BMPString");
                        }
                    }
                    if (i8 > 0) {
                        if (k.b.j.h.a.a(w1Var, bArr3, 0, i8) == i8) {
                            while (true) {
                                int i11 = i4 + 1;
                                int i12 = i11 + 1;
                                i3 = i10 + 1;
                                cArr[i10] = (char) ((bArr3[i4] << 8) | (bArr3[i11] & 255));
                                if (i12 >= i8) {
                                    break;
                                }
                                i4 = i12;
                                i10 = i3;
                            }
                            i10 = i3;
                        } else {
                            throw new EOFException("EOF encountered in middle of BMPString");
                        }
                    }
                    if (w1Var.A == 0 && i9 == i10) {
                        return new q0(cArr);
                    }
                    throw new IllegalStateException();
                }
                throw new IOException("malformed BMPString encoding encountered");
            }
        }
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public k(byte[] r2, boolean r3) {
        /*
            r1 = this;
            java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream
            r0.<init>(r2)
            int r2 = r2.length
            r1.<init>(r0)
            r1.x = r2
            r1.y = r3
            r2 = 11
            byte[][] r2 = new byte[r2][]
            r1.z = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.b.a.k.<init>(byte[], boolean):void");
    }

    public static byte[] a(w1 w1Var, byte[][] bArr) {
        int i2 = w1Var.A;
        if (i2 >= bArr.length) {
            return w1Var.a();
        }
        byte[] bArr2 = bArr[i2];
        if (bArr2 == null) {
            bArr2 = new byte[i2];
            bArr[i2] = bArr2;
        }
        k.b.j.h.a.a(w1Var, bArr2, 0, bArr2.length);
        return bArr2;
    }

    public f a(w1 w1Var) {
        if (w1Var.A < 1) {
            return new f(0);
        }
        k kVar = new k((InputStream) w1Var);
        f fVar = new f(10);
        while (true) {
            t readObject = kVar.readObject();
            if (readObject == null) {
                return fVar;
            }
            fVar.a((e) readObject);
        }
    }
}
