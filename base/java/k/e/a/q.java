package k.e.a;

import e.a.a.a.a;

public class q {
    public static final q n = new q();
    public short a;
    public short b;

    /* renamed from: c  reason: collision with root package name */
    public int[] f2386c;

    /* renamed from: d  reason: collision with root package name */
    public int f2387d;

    /* renamed from: e  reason: collision with root package name */
    public int[] f2388e;

    /* renamed from: f  reason: collision with root package name */
    public short f2389f;

    /* renamed from: g  reason: collision with root package name */
    public short f2390g;

    /* renamed from: h  reason: collision with root package name */
    public short f2391h;

    /* renamed from: i  reason: collision with root package name */
    public short f2392i;

    /* renamed from: j  reason: collision with root package name */
    public n f2393j;

    /* renamed from: k  reason: collision with root package name */
    public q f2394k;

    /* renamed from: l  reason: collision with root package name */
    public k f2395l;
    public q m;

    public final q a() {
        n nVar = this.f2393j;
        return nVar == null ? this : nVar.a;
    }

    public String toString() {
        StringBuilder a2 = a.a("L");
        a2.append(System.identityHashCode(this));
        return a2.toString();
    }

    public final void a(c cVar, int i2, boolean z) {
        if ((this.a & 4) == 0) {
            if (z) {
                a(i2, 536870912, cVar.b);
                cVar.c(-1);
                return;
            }
            a(i2, 268435456, cVar.b);
            cVar.d(-1);
        } else if (z) {
            cVar.c(this.f2387d - i2);
        } else {
            cVar.d(this.f2387d - i2);
        }
    }

    public final void a(int i2, int i3, int i4) {
        if (this.f2388e == null) {
            this.f2388e = new int[6];
        }
        int[] iArr = this.f2388e;
        int i5 = iArr[0];
        if (i5 + 2 >= iArr.length) {
            int[] iArr2 = new int[(iArr.length + 6)];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.f2388e = iArr2;
        }
        int[] iArr3 = this.f2388e;
        int i6 = i5 + 1;
        iArr3[i6] = i2;
        int i7 = i6 + 1;
        iArr3[i7] = i3 | i4;
        iArr3[0] = i7;
    }

    public final boolean a(byte[] bArr, int i2) {
        this.a = (short) (this.a | 4);
        this.f2387d = i2;
        int[] iArr = this.f2388e;
        boolean z = false;
        if (iArr == null) {
            return false;
        }
        for (int i3 = iArr[0]; i3 > 0; i3 -= 2) {
            int[] iArr2 = this.f2388e;
            int i4 = iArr2[i3 - 1];
            int i5 = iArr2[i3];
            int i6 = i2 - i4;
            int i7 = 268435455 & i5;
            if ((i5 & -268435456) == 268435456) {
                if (i6 < -32768 || i6 > 32767) {
                    byte b2 = bArr[i4] & 255;
                    if (b2 < 198) {
                        bArr[i4] = (byte) (b2 + 49);
                    } else {
                        bArr[i4] = (byte) (b2 + 20);
                    }
                    z = true;
                }
                bArr[i7] = (byte) (i6 >>> 8);
                bArr[i7 + 1] = (byte) i6;
            } else {
                int i8 = i7 + 1;
                bArr[i7] = (byte) (i6 >>> 24);
                int i9 = i8 + 1;
                bArr[i8] = (byte) (i6 >>> 16);
                bArr[i9] = (byte) (i6 >>> 8);
                bArr[i9 + 1] = (byte) i6;
            }
        }
        return z;
    }

    public final void a(short s) {
        this.m = n;
        q qVar = this;
        while (qVar != n) {
            q qVar2 = qVar.m;
            qVar.m = null;
            if (qVar.f2392i == 0) {
                qVar.f2392i = s;
                qVar = qVar.a(qVar2);
            } else {
                qVar = qVar2;
            }
        }
    }

    public final q a(q qVar) {
        k kVar = this.f2395l;
        while (kVar != null) {
            if (!((this.a & 16) != 0 && kVar == this.f2395l.f2361c)) {
                q qVar2 = kVar.b;
                if (qVar2.m == null) {
                    qVar2.m = qVar;
                    qVar = qVar2;
                }
            }
            kVar = kVar.f2361c;
        }
        return qVar;
    }
}
