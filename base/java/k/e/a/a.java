package k.e.a;

public final class a {
    public final x a;
    public final boolean b;

    /* renamed from: c  reason: collision with root package name */
    public final c f2328c;

    /* renamed from: d  reason: collision with root package name */
    public final int f2329d;

    /* renamed from: e  reason: collision with root package name */
    public int f2330e;

    /* renamed from: f  reason: collision with root package name */
    public final a f2331f;

    /* renamed from: g  reason: collision with root package name */
    public a f2332g;

    public a(x xVar, boolean z, c cVar, a aVar) {
        this.a = xVar;
        this.b = z;
        this.f2328c = cVar;
        int i2 = cVar.b;
        this.f2329d = i2 == 0 ? -1 : i2 - 2;
        this.f2331f = aVar;
        if (aVar != null) {
            aVar.f2332g = this;
        }
    }

    public static a a(x xVar, String str, a aVar) {
        c cVar = new c();
        cVar.d(xVar.c(str));
        cVar.d(0);
        return new a(xVar, true, cVar, aVar);
    }

    public a b(String str) {
        this.f2330e++;
        if (this.b) {
            this.f2328c.d(this.a.c(str));
        }
        this.f2328c.b(91, 0);
        return new a(this.a, false, this.f2328c, (a) null);
    }

    public static a a(x xVar, int i2, z zVar, String str, a aVar) {
        c cVar = new c();
        int i3 = i2 >>> 24;
        if (!(i3 == 0 || i3 == 1)) {
            switch (i3) {
                case 16:
                case 17:
                case 18:
                case 23:
                    cVar.b(i3, (i2 & 16776960) >> 8);
                    break;
                case 19:
                case 20:
                case 21:
                    cVar.b(i3);
                    break;
                case 22:
                    break;
                default:
                    switch (i3) {
                        case 66:
                        case 67:
                        case 68:
                        case 69:
                        case 70:
                            break;
                        case 71:
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                            cVar.c(i2);
                            break;
                        default:
                            throw new IllegalArgumentException();
                    }
                    cVar.b(i3, (i2 & 16776960) >> 8);
                    break;
            }
        }
        cVar.d(i2 >>> 16);
        z.a(zVar, cVar);
        cVar.d(xVar.c(str));
        cVar.d(0);
        return new a(xVar, true, cVar, aVar);
    }

    public void a(String str, Object obj) {
        this.f2330e++;
        if (this.b) {
            this.f2328c.d(this.a.c(str));
        }
        if (obj instanceof String) {
            this.f2328c.b(115, this.a.c((String) obj));
        } else if (obj instanceof Byte) {
            this.f2328c.b(66, this.a.a((int) ((Byte) obj).byteValue()).a);
        } else if (obj instanceof Boolean) {
            this.f2328c.b(90, this.a.a(((Boolean) obj).booleanValue() ? 1 : 0).a);
        } else if (obj instanceof Character) {
            this.f2328c.b(67, this.a.a((int) ((Character) obj).charValue()).a);
        } else if (obj instanceof Short) {
            this.f2328c.b(83, this.a.a((int) ((Short) obj).shortValue()).a);
        } else if (obj instanceof y) {
            this.f2328c.b(99, this.a.c(((y) obj).a()));
        } else {
            int i2 = 0;
            if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                this.f2328c.b(91, bArr.length);
                int length = bArr.length;
                while (i2 < length) {
                    this.f2328c.b(66, this.a.a((int) bArr[i2]).a);
                    i2++;
                }
            } else if (obj instanceof boolean[]) {
                boolean[] zArr = (boolean[]) obj;
                this.f2328c.b(91, zArr.length);
                int length2 = zArr.length;
                while (i2 < length2) {
                    this.f2328c.b(90, this.a.a(zArr[i2] ? 1 : 0).a);
                    i2++;
                }
            } else if (obj instanceof short[]) {
                short[] sArr = (short[]) obj;
                this.f2328c.b(91, sArr.length);
                int length3 = sArr.length;
                while (i2 < length3) {
                    this.f2328c.b(83, this.a.a((int) sArr[i2]).a);
                    i2++;
                }
            } else if (obj instanceof char[]) {
                char[] cArr = (char[]) obj;
                this.f2328c.b(91, cArr.length);
                int length4 = cArr.length;
                while (i2 < length4) {
                    this.f2328c.b(67, this.a.a((int) cArr[i2]).a);
                    i2++;
                }
            } else if (obj instanceof int[]) {
                int[] iArr = (int[]) obj;
                this.f2328c.b(91, iArr.length);
                int length5 = iArr.length;
                while (i2 < length5) {
                    this.f2328c.b(73, this.a.a(iArr[i2]).a);
                    i2++;
                }
            } else if (obj instanceof long[]) {
                long[] jArr = (long[]) obj;
                this.f2328c.b(91, jArr.length);
                int length6 = jArr.length;
                while (i2 < length6) {
                    this.f2328c.b(74, this.a.a(5, jArr[i2]).a);
                    i2++;
                }
            } else if (obj instanceof float[]) {
                float[] fArr = (float[]) obj;
                this.f2328c.b(91, fArr.length);
                int length7 = fArr.length;
                while (i2 < length7) {
                    float f2 = fArr[i2];
                    c cVar = this.f2328c;
                    x xVar = this.a;
                    if (xVar != null) {
                        cVar.b(70, xVar.a(4, Float.floatToRawIntBits(f2)).a);
                        i2++;
                    } else {
                        throw null;
                    }
                }
            } else if (obj instanceof double[]) {
                double[] dArr = (double[]) obj;
                this.f2328c.b(91, dArr.length);
                int length8 = dArr.length;
                while (i2 < length8) {
                    double d2 = dArr[i2];
                    c cVar2 = this.f2328c;
                    x xVar2 = this.a;
                    if (xVar2 != null) {
                        cVar2.b(68, xVar2.a(6, Double.doubleToRawLongBits(d2)).a);
                        i2++;
                    } else {
                        throw null;
                    }
                }
            } else {
                w a2 = this.a.a(obj);
                this.f2328c.b(".s.IFJDCS".charAt(a2.b), a2.a);
            }
        }
    }

    public void a() {
        int i2 = this.f2329d;
        if (i2 != -1) {
            byte[] bArr = this.f2328c.a;
            int i3 = this.f2330e;
            bArr[i2] = (byte) (i3 >>> 8);
            bArr[i2 + 1] = (byte) i3;
        }
    }

    public int a(String str) {
        if (str != null) {
            this.a.c(str);
        }
        int i2 = 8;
        for (a aVar = this; aVar != null; aVar = aVar.f2331f) {
            i2 += aVar.f2328c.b;
        }
        return i2;
    }

    public static int a(a aVar, a aVar2, a aVar3, a aVar4) {
        int i2 = 0;
        if (aVar != null) {
            i2 = 0 + aVar.a("RuntimeVisibleAnnotations");
        }
        if (aVar2 != null) {
            i2 += aVar2.a("RuntimeInvisibleAnnotations");
        }
        if (aVar3 != null) {
            i2 += aVar3.a("RuntimeVisibleTypeAnnotations");
        }
        return aVar4 != null ? i2 + aVar4.a("RuntimeInvisibleTypeAnnotations") : i2;
    }

    public void a(int i2, c cVar) {
        int i3 = 2;
        int i4 = 0;
        a aVar = null;
        for (a aVar2 = this; aVar2 != null; aVar2 = aVar2.f2331f) {
            aVar2.a();
            i3 += aVar2.f2328c.b;
            i4++;
            aVar = aVar2;
        }
        cVar.d(i2);
        cVar.c(i3);
        cVar.d(i4);
        while (aVar != null) {
            c cVar2 = aVar.f2328c;
            cVar.a(cVar2.a, 0, cVar2.b);
            aVar = aVar.f2332g;
        }
    }

    public static void a(x xVar, a aVar, a aVar2, a aVar3, a aVar4, c cVar) {
        if (aVar != null) {
            aVar.a(xVar.c("RuntimeVisibleAnnotations"), cVar);
        }
        if (aVar2 != null) {
            aVar2.a(xVar.c("RuntimeInvisibleAnnotations"), cVar);
        }
        if (aVar3 != null) {
            aVar3.a(xVar.c("RuntimeVisibleTypeAnnotations"), cVar);
        }
        if (aVar4 != null) {
            aVar4.a(xVar.c("RuntimeInvisibleTypeAnnotations"), cVar);
        }
    }

    public static int a(String str, a[] aVarArr, int i2) {
        int i3;
        int i4 = (i2 * 2) + 7;
        for (int i5 = 0; i5 < i2; i5++) {
            a aVar = aVarArr[i5];
            if (aVar == null) {
                i3 = 0;
            } else {
                i3 = aVar.a(str) - 8;
            }
            i4 += i3;
        }
        return i4;
    }

    public static void a(int i2, a[] aVarArr, int i3, c cVar) {
        int i4;
        int i5 = (i3 * 2) + 1;
        for (int i6 = 0; i6 < i3; i6++) {
            a aVar = aVarArr[i6];
            if (aVar == null) {
                i4 = 0;
            } else {
                i4 = aVar.a((String) null) - 8;
            }
            i5 += i4;
        }
        cVar.d(i2);
        cVar.c(i5);
        cVar.b(i3);
        for (int i7 = 0; i7 < i3; i7++) {
            a aVar2 = null;
            int i8 = 0;
            for (a aVar3 = aVarArr[i7]; aVar3 != null; aVar3 = aVar3.f2331f) {
                aVar3.a();
                i8++;
                aVar2 = aVar3;
            }
            cVar.d(i8);
            while (aVar2 != null) {
                c cVar2 = aVar2.f2328c;
                cVar.a(cVar2.a, 0, cVar2.b);
                aVar2 = aVar2.f2332g;
            }
        }
    }
}
