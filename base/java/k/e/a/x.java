package k.e.a;

public final class x {
    public final g a;
    public final d b = null;

    /* renamed from: c  reason: collision with root package name */
    public int f2426c;

    /* renamed from: d  reason: collision with root package name */
    public String f2427d;

    /* renamed from: e  reason: collision with root package name */
    public int f2428e;

    /* renamed from: f  reason: collision with root package name */
    public a[] f2429f = new a[256];

    /* renamed from: g  reason: collision with root package name */
    public int f2430g = 1;

    /* renamed from: h  reason: collision with root package name */
    public c f2431h = new c();

    /* renamed from: i  reason: collision with root package name */
    public int f2432i;

    /* renamed from: j  reason: collision with root package name */
    public c f2433j;

    /* renamed from: k  reason: collision with root package name */
    public int f2434k;

    /* renamed from: l  reason: collision with root package name */
    public a[] f2435l;

    public x(g gVar) {
        this.a = gVar;
    }

    public static int b(int i2, int i3) {
        return (i2 + i3) & Integer.MAX_VALUE;
    }

    public w a(Object obj) {
        if (obj instanceof Integer) {
            return a(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return a(((Byte) obj).intValue());
        }
        if (obj instanceof Character) {
            return a((int) ((Character) obj).charValue());
        }
        if (obj instanceof Short) {
            return a(((Short) obj).intValue());
        }
        if (obj instanceof Boolean) {
            return a(((Boolean) obj).booleanValue() ? 1 : 0);
        }
        if (obj instanceof Float) {
            return a(4, Float.floatToRawIntBits(((Float) obj).floatValue()));
        }
        if (obj instanceof Long) {
            return a(5, ((Long) obj).longValue());
        }
        if (obj instanceof Double) {
            return a(6, Double.doubleToRawLongBits(((Double) obj).doubleValue()));
        }
        if (obj instanceof String) {
            return a(8, (String) obj);
        }
        if (obj instanceof y) {
            y yVar = (y) obj;
            int i2 = yVar.a;
            if (i2 == 12) {
                i2 = 10;
            }
            if (i2 == 10) {
                return a(yVar.b.substring(yVar.f2446c, yVar.f2447d));
            }
            if (i2 == 11) {
                return a(16, yVar.a());
            }
            return a(yVar.a());
        } else if (obj instanceof o) {
            o oVar = (o) obj;
            return a(oVar.a, oVar.b, oVar.f2379c, oVar.f2380d, oVar.f2381e);
        } else if (obj instanceof h) {
            h hVar = (h) obj;
            return a(17, hVar.a, hVar.b, a(hVar.f2349c, hVar.f2350d).a);
        } else {
            throw new IllegalArgumentException("value " + obj);
        }
    }

    public final a b(int i2) {
        a[] aVarArr = this.f2429f;
        return aVarArr[i2 % aVarArr.length];
    }

    public int c(String str) {
        int hashCode = (str.hashCode() + 1) & Integer.MAX_VALUE;
        for (a b2 = b(hashCode); b2 != null; b2 = b2.f2437i) {
            if (b2.b == 1 && b2.f2436h == hashCode && b2.f2423e.equals(str)) {
                return b2.a;
            }
        }
        c cVar = this.f2431h;
        cVar.b(1);
        int length = str.length();
        if (length <= 65535) {
            int i2 = cVar.b;
            if (i2 + 2 + length > cVar.a.length) {
                cVar.a(length + 2);
            }
            byte[] bArr = cVar.a;
            int i3 = i2 + 1;
            bArr[i2] = (byte) (length >>> 8);
            int i4 = i3 + 1;
            bArr[i3] = (byte) length;
            int i5 = 0;
            while (true) {
                if (i5 >= length) {
                    cVar.b = i4;
                    break;
                }
                char charAt = str.charAt(i5);
                if (charAt < 1 || charAt > 127) {
                    cVar.b = i4;
                    cVar.a(str, i5, 65535);
                } else {
                    bArr[i4] = (byte) charAt;
                    i5++;
                    i4++;
                }
            }
            cVar.b = i4;
            cVar.a(str, i5, 65535);
            int i6 = this.f2430g;
            this.f2430g = i6 + 1;
            a aVar = new a(i6, 1, str, hashCode);
            b(aVar);
            return aVar.a;
        }
        throw new IllegalArgumentException("UTF8 string too large");
    }

    public int d(String str) {
        int hashCode = (str.hashCode() + 128) & Integer.MAX_VALUE;
        for (a b2 = b(hashCode); b2 != null; b2 = b2.f2437i) {
            if (b2.b == 128 && b2.f2436h == hashCode && b2.f2423e.equals(str)) {
                return b2.a;
            }
        }
        return a(new a(this.f2434k, 128, str, hashCode));
    }

    public static class a extends w {

        /* renamed from: h  reason: collision with root package name */
        public final int f2436h;

        /* renamed from: i  reason: collision with root package name */
        public a f2437i;

        public a(int i2, int i3, String str, String str2, String str3, long j2, int i4) {
            super(i2, i3, str, str2, str3, j2);
            this.f2436h = i4;
        }

        public a(int i2, int i3, String str, int i4) {
            super(i2, i3, (String) null, (String) null, str, 0);
            this.f2436h = i4;
        }

        public a(int i2, int i3, String str, long j2, int i4) {
            super(i2, i3, (String) null, (String) null, str, j2);
            this.f2436h = i4;
        }

        public a(int i2, int i3, String str, String str2, int i4) {
            super(i2, i3, (String) null, str, str2, 0);
            this.f2436h = i4;
        }

        public a(int i2, int i3, long j2, int i4) {
            super(i2, i3, (String) null, (String) null, (String) null, j2);
            this.f2436h = i4;
        }
    }

    public final a b(a aVar) {
        int i2 = this.f2428e;
        a[] aVarArr = this.f2429f;
        if (i2 > (aVarArr.length * 3) / 4) {
            int length = aVarArr.length;
            int i3 = (length * 2) + 1;
            a[] aVarArr2 = new a[i3];
            for (int i4 = length - 1; i4 >= 0; i4--) {
                a aVar2 = this.f2429f[i4];
                while (aVar2 != null) {
                    int i5 = aVar2.f2436h % i3;
                    a aVar3 = aVar2.f2437i;
                    aVar2.f2437i = aVarArr2[i5];
                    aVarArr2[i5] = aVar2;
                    aVar2 = aVar3;
                }
            }
            this.f2429f = aVarArr2;
        }
        this.f2428e++;
        int i6 = aVar.f2436h;
        a[] aVarArr3 = this.f2429f;
        int length2 = i6 % aVarArr3.length;
        aVar.f2437i = aVarArr3[length2];
        aVarArr3[length2] = aVar;
        return aVar;
    }

    public w b(String str) {
        return a(19, str);
    }

    public static int b(int i2, String str, String str2, int i3) {
        return Integer.MAX_VALUE & (((i3 + 1) * str2.hashCode() * str.hashCode()) + i2);
    }

    public static int b(int i2, String str, String str2, String str3) {
        return Integer.MAX_VALUE & ((str3.hashCode() * str2.hashCode() * str.hashCode()) + i2);
    }

    public w a(String str) {
        return a(7, str);
    }

    public final a a(int i2, String str, String str2, String str3) {
        int b2 = b(i2, str, str2, str3);
        for (a b3 = b(b2); b3 != null; b3 = b3.f2437i) {
            if (b3.b == i2 && b3.f2436h == b2 && b3.f2421c.equals(str) && b3.f2422d.equals(str2) && b3.f2423e.equals(str3)) {
                return b3;
            }
        }
        this.f2431h.b(i2, a(7, str).a, a(str2, str3));
        int i3 = this.f2430g;
        this.f2430g = i3 + 1;
        a aVar = new a(i3, i2, str, str2, str3, 0, b2);
        b(aVar);
        return aVar;
    }

    public w a(int i2) {
        return a(3, i2);
    }

    public final w a(int i2, int i3) {
        int b2 = b(i2, i3);
        for (a b3 = b(b2); b3 != null; b3 = b3.f2437i) {
            if (b3.b == i2 && b3.f2436h == b2 && b3.f2424f == ((long) i3)) {
                return b3;
            }
        }
        c cVar = this.f2431h;
        cVar.b(i2);
        cVar.c(i3);
        int i4 = this.f2430g;
        this.f2430g = i4 + 1;
        a aVar = new a(i4, i2, (long) i3, b2);
        b(aVar);
        return aVar;
    }

    public final w a(int i2, long j2) {
        int i3 = (int) j2;
        int i4 = (int) (j2 >>> 32);
        int i5 = (i2 + i3 + i4) & Integer.MAX_VALUE;
        for (a b2 = b(i5); b2 != null; b2 = b2.f2437i) {
            if (b2.b == i2 && b2.f2436h == i5 && b2.f2424f == j2) {
                return b2;
            }
        }
        int i6 = this.f2430g;
        c cVar = this.f2431h;
        cVar.b(i2);
        int i7 = cVar.b;
        if (i7 + 8 > cVar.a.length) {
            cVar.a(8);
        }
        byte[] bArr = cVar.a;
        int i8 = i7 + 1;
        bArr[i7] = (byte) (i4 >>> 24);
        int i9 = i8 + 1;
        bArr[i8] = (byte) (i4 >>> 16);
        int i10 = i9 + 1;
        bArr[i9] = (byte) (i4 >>> 8);
        int i11 = i10 + 1;
        bArr[i10] = (byte) i4;
        int i12 = i11 + 1;
        bArr[i11] = (byte) (i3 >>> 24);
        int i13 = i12 + 1;
        bArr[i12] = (byte) (i3 >>> 16);
        int i14 = i13 + 1;
        bArr[i13] = (byte) (i3 >>> 8);
        bArr[i14] = (byte) i3;
        cVar.b = i14 + 1;
        this.f2430g += 2;
        a aVar = new a(i6, i2, j2, i5);
        b(aVar);
        return aVar;
    }

    public w a(int i2, String str, String str2, String str3, boolean z) {
        int a2 = a(15, str, str2, str3, i2);
        for (a b2 = b(a2); b2 != null; b2 = b2.f2437i) {
            if (b2.b == 15 && b2.f2436h == a2 && b2.f2424f == ((long) i2) && b2.f2421c.equals(str) && b2.f2422d.equals(str2) && b2.f2423e.equals(str3)) {
                return b2;
            }
        }
        if (i2 <= 4) {
            this.f2431h.a(15, i2, a(9, str, str2, str3).a);
        } else {
            this.f2431h.a(15, i2, a(z ? 11 : 10, str, str2, str3).a);
        }
        int i3 = this.f2430g;
        this.f2430g = i3 + 1;
        a aVar = new a(i3, 15, str, str2, str3, (long) i2, a2);
        b(aVar);
        return aVar;
    }

    public final w a(int i2, String str, String str2, int i3) {
        int b2 = b(i2, str, str2, i3);
        for (a b3 = b(b2); b3 != null; b3 = b3.f2437i) {
            if (b3.b == i2 && b3.f2436h == b2 && b3.f2424f == ((long) i3) && b3.f2422d.equals(str) && b3.f2423e.equals(str2)) {
                return b3;
            }
        }
        this.f2431h.b(i2, i3, a(str, str2));
        int i4 = this.f2430g;
        this.f2430g = i4 + 1;
        a aVar = new a(i4, i2, (String) null, str, str2, (long) i3, b2);
        b(aVar);
        return aVar;
    }

    public w a(o oVar, Object... objArr) {
        boolean z;
        c cVar = this.f2433j;
        if (cVar == null) {
            cVar = new c();
            this.f2433j = cVar;
        }
        for (Object a2 : objArr) {
            a(a2);
        }
        int i2 = cVar.b;
        cVar.d(a(oVar.a, oVar.b, oVar.f2379c, oVar.f2380d, oVar.f2381e).a);
        cVar.d(objArr.length);
        for (Object a3 : objArr) {
            cVar.d(a(a3).a);
        }
        int i3 = cVar.b - i2;
        int hashCode = oVar.hashCode();
        for (Object hashCode2 : objArr) {
            hashCode ^= hashCode2.hashCode();
        }
        int i4 = hashCode & Integer.MAX_VALUE;
        byte[] bArr = this.f2433j.a;
        a[] aVarArr = this.f2429f;
        for (a aVar = aVarArr[i4 % aVarArr.length]; aVar != null; aVar = aVar.f2437i) {
            if (aVar.b == 64 && aVar.f2436h == i4) {
                int i5 = (int) aVar.f2424f;
                int i6 = 0;
                while (true) {
                    if (i6 >= i3) {
                        z = true;
                        break;
                    } else if (bArr[i2 + i6] != bArr[i5 + i6]) {
                        z = false;
                        break;
                    } else {
                        i6++;
                    }
                }
                if (z) {
                    this.f2433j.b = i2;
                    return aVar;
                }
            }
        }
        int i7 = this.f2432i;
        this.f2432i = i7 + 1;
        a aVar2 = new a(i7, 64, (long) i2, i4);
        b(aVar2);
        return aVar2;
    }

    public final int a(a aVar) {
        if (this.f2435l == null) {
            this.f2435l = new a[16];
        }
        int i2 = this.f2434k;
        a[] aVarArr = this.f2435l;
        if (i2 == aVarArr.length) {
            a[] aVarArr2 = new a[(aVarArr.length * 2)];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, aVarArr.length);
            this.f2435l = aVarArr2;
        }
        a[] aVarArr3 = this.f2435l;
        int i3 = this.f2434k;
        this.f2434k = i3 + 1;
        aVarArr3[i3] = aVar;
        b(aVar);
        return aVar.a;
    }

    public final w a(int i2, String str) {
        int hashCode = (str.hashCode() + i2) & Integer.MAX_VALUE;
        for (a b2 = b(hashCode); b2 != null; b2 = b2.f2437i) {
            if (b2.b == i2 && b2.f2436h == hashCode && b2.f2423e.equals(str)) {
                return b2;
            }
        }
        this.f2431h.b(i2, c(str));
        int i3 = this.f2430g;
        this.f2430g = i3 + 1;
        a aVar = new a(i3, i2, str, hashCode);
        b(aVar);
        return aVar;
    }

    public int a(String str, int i2) {
        int hashCode = (str.hashCode() + 129 + i2) & Integer.MAX_VALUE;
        for (a b2 = b(hashCode); b2 != null; b2 = b2.f2437i) {
            if (b2.b == 129 && b2.f2436h == hashCode && b2.f2424f == ((long) i2) && b2.f2423e.equals(str)) {
                return b2.a;
            }
        }
        return a(new a(this.f2434k, 129, str, (long) i2, hashCode));
    }

    public int a(String str, String str2) {
        int hashCode = ((str2.hashCode() * str.hashCode()) + 12) & Integer.MAX_VALUE;
        for (a b2 = b(hashCode); b2 != null; b2 = b2.f2437i) {
            if (b2.b == 12 && b2.f2436h == hashCode && b2.f2422d.equals(str) && b2.f2423e.equals(str2)) {
                return b2.a;
            }
        }
        this.f2431h.b(12, c(str), c(str2));
        int i2 = this.f2430g;
        this.f2430g = i2 + 1;
        a aVar = new a(i2, 12, str, str2, hashCode);
        b(aVar);
        return aVar.a;
    }

    public static int a(int i2, String str, String str2, String str3, int i3) {
        return Integer.MAX_VALUE & ((str3.hashCode() * str2.hashCode() * str.hashCode() * i3) + i2);
    }
}
