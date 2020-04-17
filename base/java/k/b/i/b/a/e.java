package k.b.i.b.a;

import k.b.i.d.a.a;
import k.b.i.d.a.b;
import k.b.i.d.a.d;

public class e extends d {
    public int a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public b f2085c;

    /* renamed from: d  reason: collision with root package name */
    public k.b.i.d.a.e f2086d;

    /* renamed from: e  reason: collision with root package name */
    public a f2087e;

    /* renamed from: f  reason: collision with root package name */
    public d f2088f;

    /* renamed from: g  reason: collision with root package name */
    public d f2089g;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public e(int i2, int i3, b bVar, k.b.i.d.a.e eVar, d dVar, d dVar2, a aVar) {
        super(true);
        int i4;
        int a2;
        int[] iArr;
        b bVar2 = bVar;
        k.b.i.d.a.e eVar2 = eVar;
        int i5 = 1;
        this.b = i3;
        this.a = i2;
        this.f2085c = bVar2;
        this.f2086d = eVar2;
        this.f2087e = aVar;
        this.f2088f = dVar;
        this.f2089g = dVar2;
        k.b.c.e.a.a(bVar, eVar);
        int b2 = eVar.b();
        k.b.i.d.a.e[] eVarArr = new k.b.i.d.a.e[b2];
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i4 = b2 >> 1;
            if (i7 >= i4) {
                break;
            }
            int i8 = i7 << 1;
            int[] iArr2 = new int[(i8 + 1)];
            iArr2[i8] = 1;
            eVarArr[i7] = new k.b.i.d.a.e(bVar2, iArr2);
            i7++;
        }
        while (i4 < b2) {
            int i9 = i4 << 1;
            int[] iArr3 = new int[(i9 + 1)];
            iArr3[i9] = i5;
            k.b.i.d.a.e eVar3 = new k.b.i.d.a.e(bVar2, iArr3);
            int[] iArr4 = eVar3.f2180c;
            int[] iArr5 = eVar2.f2180c;
            int a3 = k.b.i.d.a.e.a(iArr5);
            int i10 = -1;
            if (a3 != -1) {
                int length = iArr4.length;
                int[] iArr6 = new int[length];
                int a4 = k.b.i.d.a.e.a(iArr5);
                int a5 = eVar3.a.a(a4 == -1 ? 0 : iArr5[a4]);
                System.arraycopy(iArr4, i6, iArr6, i6, length);
                while (a3 <= k.b.i.d.a.e.a(iArr6)) {
                    b bVar3 = eVar3.a;
                    int a6 = k.b.i.d.a.e.a(iArr6);
                    int a7 = bVar3.a(a6 == i10 ? 0 : iArr6[a6], a5);
                    int a8 = k.b.i.d.a.e.a(iArr6) - a3;
                    int a9 = k.b.i.d.a.e.a(iArr5);
                    if (a9 == i10) {
                        iArr = new int[1];
                    } else {
                        int[] iArr7 = new int[(a9 + a8 + 1)];
                        System.arraycopy(iArr5, 0, iArr7, a8, a9 + 1);
                        iArr = iArr7;
                    }
                    iArr6 = eVar3.a(eVar3.a(iArr, a7), iArr6);
                    i10 = -1;
                }
                eVarArr[i4] = new k.b.i.d.a.e(eVar3.a, iArr6);
                i4++;
                i5 = 1;
                i6 = 0;
            } else {
                throw new ArithmeticException("Division by zero");
            }
        }
        int b3 = eVar.b();
        k.b.i.d.a.e[] eVarArr2 = new k.b.i.d.a.e[b3];
        int i11 = b3 - 1;
        for (int i12 = i11; i12 >= 0; i12--) {
            eVarArr2[i12] = new k.b.i.d.a.e(eVarArr[i12]);
        }
        k.b.i.d.a.e[] eVarArr3 = new k.b.i.d.a.e[b3];
        while (i11 >= 0) {
            eVarArr3[i11] = new k.b.i.d.a.e(bVar2, i11);
            i11--;
        }
        for (int i13 = 0; i13 < b3; i13++) {
            if (eVarArr2[i13].a(i13) == 0) {
                int i14 = i13 + 1;
                boolean z = false;
                while (i14 < b3) {
                    if (eVarArr2[i14].a(i13) != 0) {
                        k.b.i.d.a.e eVar4 = eVarArr2[i13];
                        eVarArr2[i13] = eVarArr2[i14];
                        eVarArr2[i14] = eVar4;
                        k.b.i.d.a.e eVar5 = eVarArr3[i13];
                        eVarArr3[i13] = eVarArr3[i14];
                        eVarArr3[i14] = eVar5;
                        i14 = b3;
                        z = true;
                    }
                    i14++;
                }
                if (!z) {
                    throw new ArithmeticException("Squaring matrix is not invertible.");
                }
            }
            int a10 = bVar2.a(eVarArr2[i13].a(i13));
            eVarArr2[i13].b(a10);
            eVarArr3[i13].b(a10);
            for (int i15 = 0; i15 < b3; i15++) {
                if (!(i15 == i13 || (a2 = eVarArr2[i15].a(i13)) == 0)) {
                    k.b.i.d.a.e c2 = eVarArr2[i13].c(a2);
                    k.b.i.d.a.e c3 = eVarArr3[i13].c(a2);
                    k.b.i.d.a.e eVar6 = eVarArr2[i15];
                    eVar6.f2180c = eVar6.a(eVar6.f2180c, c2.f2180c);
                    eVar6.a();
                    k.b.i.d.a.e eVar7 = eVarArr3[i15];
                    eVar7.f2180c = eVar7.a(eVar7.f2180c, c3.f2180c);
                    eVar7.a();
                }
            }
        }
    }
}
