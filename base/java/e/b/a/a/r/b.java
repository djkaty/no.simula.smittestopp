package e.b.a.a.r;

import e.b.a.a.d;
import e.b.a.a.s.e;
import java.util.Arrays;
import java.util.BitSet;
import java.util.concurrent.atomic.AtomicReference;

public final class b {
    public final b a;
    public final AtomicReference<C0058b> b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1096c;

    /* renamed from: d  reason: collision with root package name */
    public final int f1097d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f1098e;

    /* renamed from: f  reason: collision with root package name */
    public String[] f1099f;

    /* renamed from: g  reason: collision with root package name */
    public a[] f1100g;

    /* renamed from: h  reason: collision with root package name */
    public int f1101h;

    /* renamed from: i  reason: collision with root package name */
    public int f1102i;

    /* renamed from: j  reason: collision with root package name */
    public int f1103j;

    /* renamed from: k  reason: collision with root package name */
    public int f1104k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f1105l;
    public BitSet m;

    public static final class a {
        public final String a;
        public final a b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1106c;

        public a(String str, a aVar) {
            this.a = str;
            this.b = aVar;
            this.f1106c = aVar != null ? 1 + aVar.f1106c : 1;
        }

        public String a(char[] cArr, int i2, int i3) {
            if (this.a.length() != i3) {
                return null;
            }
            int i4 = 0;
            while (this.a.charAt(i4) == cArr[i2 + i4]) {
                i4++;
                if (i4 >= i3) {
                    return this.a;
                }
            }
            return null;
        }
    }

    public b(int i2) {
        this.a = null;
        this.f1096c = i2;
        this.f1098e = true;
        this.f1097d = -1;
        this.f1105l = false;
        this.f1104k = 0;
        this.b = new AtomicReference<>(new C0058b(0, 0, new String[64], new a[32]));
    }

    public String a(char[] cArr, int i2, int i3, int i4) {
        String str;
        if (i3 < 1) {
            return "";
        }
        if (!this.f1098e) {
            return new String(cArr, i2, i3);
        }
        int a2 = a(i4);
        String str2 = this.f1099f[a2];
        if (str2 != null) {
            if (str2.length() == i3) {
                int i5 = 0;
                while (str2.charAt(i5) == cArr[i2 + i5]) {
                    i5++;
                    if (i5 == i3) {
                        return str2;
                    }
                }
            }
            a aVar = this.f1100g[a2 >> 1];
            if (aVar != null) {
                String a3 = aVar.a(cArr, i2, i3);
                if (a3 != null) {
                    return a3;
                }
                a aVar2 = aVar.b;
                while (true) {
                    if (aVar2 == null) {
                        str = null;
                        break;
                    }
                    str = aVar2.a(cArr, i2, i3);
                    if (str != null) {
                        break;
                    }
                    aVar2 = aVar2.b;
                }
                if (str != null) {
                    return str;
                }
            }
        }
        if (this.f1105l) {
            String[] strArr = this.f1099f;
            this.f1099f = (String[]) Arrays.copyOf(strArr, strArr.length);
            a[] aVarArr = this.f1100g;
            this.f1100g = (a[]) Arrays.copyOf(aVarArr, aVarArr.length);
            this.f1105l = false;
        } else if (this.f1101h >= this.f1102i) {
            int i6 = r1 + r1;
            if (i6 > 65536) {
                this.f1101h = 0;
                this.f1098e = false;
                this.f1099f = new String[64];
                this.f1100g = new a[32];
                this.f1103j = 63;
                this.f1105l = false;
            } else {
                a[] aVarArr2 = this.f1100g;
                this.f1099f = new String[i6];
                this.f1100g = new a[(i6 >> 1)];
                this.f1103j = i6 - 1;
                this.f1102i = i6 - (i6 >> 2);
                int i7 = 0;
                int i8 = 0;
                for (String str3 : this.f1099f) {
                    if (str3 != null) {
                        i7++;
                        int a4 = a(a(str3));
                        String[] strArr2 = this.f1099f;
                        if (strArr2[a4] == null) {
                            strArr2[a4] = str3;
                        } else {
                            int i9 = a4 >> 1;
                            a aVar3 = new a(str3, this.f1100g[i9]);
                            this.f1100g[i9] = aVar3;
                            i8 = Math.max(i8, aVar3.f1106c);
                        }
                    }
                }
                int i10 = r1 >> 1;
                for (int i11 = 0; i11 < i10; i11++) {
                    for (a aVar4 = aVarArr2[i11]; aVar4 != null; aVar4 = aVar4.b) {
                        i7++;
                        String str4 = aVar4.a;
                        int a5 = a(a(str4));
                        String[] strArr3 = this.f1099f;
                        if (strArr3[a5] == null) {
                            strArr3[a5] = str4;
                        } else {
                            int i12 = a5 >> 1;
                            a aVar5 = new a(str4, this.f1100g[i12]);
                            this.f1100g[i12] = aVar5;
                            i8 = Math.max(i8, aVar5.f1106c);
                        }
                    }
                }
                this.f1104k = i8;
                this.m = null;
                if (i7 != this.f1101h) {
                    throw new IllegalStateException(String.format("Internal error on SymbolTable.rehash(): had %d entries; now have %d", new Object[]{Integer.valueOf(this.f1101h), Integer.valueOf(i7)}));
                }
            }
            int i13 = this.f1096c;
            int i14 = i3 + i2;
            for (int i15 = i2; i15 < i14; i15++) {
                i13 = (i13 * 33) + cArr[i15];
            }
            if (i13 == 0) {
                i13 = 1;
            }
            a2 = a(i13);
        }
        String str5 = new String(cArr, i2, i3);
        if (d.a.INTERN_FIELD_NAMES.enabledIn(this.f1097d)) {
            str5 = e.y.c(str5);
        }
        this.f1101h++;
        String[] strArr4 = this.f1099f;
        if (strArr4[a2] == null) {
            strArr4[a2] = str5;
        } else {
            int i16 = a2 >> 1;
            a aVar6 = new a(str5, this.f1100g[i16]);
            int i17 = aVar6.f1106c;
            if (i17 > 100) {
                BitSet bitSet = this.m;
                if (bitSet == null) {
                    BitSet bitSet2 = new BitSet();
                    this.m = bitSet2;
                    bitSet2.set(i16);
                } else if (!bitSet.get(i16)) {
                    this.m.set(i16);
                } else if (!d.a.FAIL_ON_SYMBOL_HASH_OVERFLOW.enabledIn(this.f1097d)) {
                    this.f1098e = false;
                } else {
                    StringBuilder a6 = e.a.a.a.a.a("Longest collision chain in symbol table (of size ");
                    a6.append(this.f1101h);
                    a6.append(") now exceeds maximum, ");
                    a6.append(100);
                    a6.append(" -- suspect a DoS attack based on hash collisions");
                    throw new IllegalStateException(a6.toString());
                }
                this.f1099f[i16 + i16] = aVar6.a;
                this.f1100g[i16] = null;
                this.f1101h -= aVar6.f1106c;
                this.f1104k = -1;
            } else {
                this.f1100g[i16] = aVar6;
                this.f1104k = Math.max(i17, this.f1104k);
            }
        }
        return str5;
    }

    public b b(int i2) {
        return new b(this, i2, this.f1096c, this.b.get());
    }

    /* renamed from: e.b.a.a.r.b$b  reason: collision with other inner class name */
    public static final class C0058b {
        public final int a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final String[] f1107c;

        /* renamed from: d  reason: collision with root package name */
        public final a[] f1108d;

        public C0058b(int i2, int i3, String[] strArr, a[] aVarArr) {
            this.a = i2;
            this.b = i3;
            this.f1107c = strArr;
            this.f1108d = aVarArr;
        }

        public C0058b(b bVar) {
            this.a = bVar.f1101h;
            this.b = bVar.f1104k;
            this.f1107c = bVar.f1099f;
            this.f1108d = bVar.f1100g;
        }
    }

    public b(b bVar, int i2, int i3, C0058b bVar2) {
        this.a = bVar;
        this.f1096c = i3;
        this.b = null;
        this.f1097d = i2;
        this.f1098e = d.a.CANONICALIZE_FIELD_NAMES.enabledIn(i2);
        String[] strArr = bVar2.f1107c;
        this.f1099f = strArr;
        this.f1100g = bVar2.f1108d;
        this.f1101h = bVar2.a;
        this.f1104k = bVar2.b;
        int length = strArr.length;
        this.f1102i = length - (length >> 2);
        this.f1103j = length - 1;
        this.f1105l = true;
    }

    public int a(int i2) {
        int i3 = i2 + (i2 >>> 15);
        int i4 = i3 ^ (i3 << 7);
        return (i4 + (i4 >>> 3)) & this.f1103j;
    }

    public int a(String str) {
        int length = str.length();
        int i2 = this.f1096c;
        for (int i3 = 0; i3 < length; i3++) {
            i2 = (i2 * 33) + str.charAt(i3);
        }
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }
}
