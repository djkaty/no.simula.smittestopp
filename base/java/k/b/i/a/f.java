package k.b.i.a;

import k.b.a.a1;
import k.b.a.e;
import k.b.a.e1;
import k.b.a.l;
import k.b.a.n;
import k.b.a.o;
import k.b.a.p;
import k.b.a.t;
import k.b.a.u;
import k.b.i.b.d.a;

public class f extends n {
    public byte[] A;
    public byte[][] B;
    public byte[] C;
    public byte[] D;
    public a[] E;
    public l x;
    public o y;
    public byte[][] z;

    public f(u uVar) {
        u uVar2 = uVar;
        int i2 = 0;
        if (uVar2.a(0) instanceof l) {
            this.x = l.a((Object) uVar2.a(0));
        } else {
            this.y = o.a((Object) uVar2.a(0));
        }
        u uVar3 = (u) uVar2.a(1);
        this.z = new byte[uVar3.size()][];
        for (int i3 = 0; i3 < uVar3.size(); i3++) {
            this.z[i3] = ((p) uVar3.a(i3)).j();
        }
        this.A = ((p) ((u) uVar2.a(2)).a(0)).j();
        u uVar4 = (u) uVar2.a(3);
        this.B = new byte[uVar4.size()][];
        for (int i4 = 0; i4 < uVar4.size(); i4++) {
            this.B[i4] = ((p) uVar4.a(i4)).j();
        }
        this.C = ((p) ((u) uVar2.a(4)).a(0)).j();
        this.D = ((p) ((u) uVar2.a(5)).a(0)).j();
        u uVar5 = (u) uVar2.a(6);
        byte[][][][] bArr = new byte[uVar5.size()][][][];
        byte[][][][] bArr2 = new byte[uVar5.size()][][][];
        byte[][][] bArr3 = new byte[uVar5.size()][][];
        byte[][] bArr4 = new byte[uVar5.size()][];
        int i5 = 0;
        while (i5 < uVar5.size()) {
            u uVar6 = (u) uVar5.a(i5);
            u uVar7 = (u) uVar6.a(i2);
            bArr[i5] = new byte[uVar7.size()][][];
            for (int i6 = 0; i6 < uVar7.size(); i6++) {
                u uVar8 = (u) uVar7.a(i6);
                bArr[i5][i6] = new byte[uVar8.size()][];
                for (int i7 = 0; i7 < uVar8.size(); i7++) {
                    bArr[i5][i6][i7] = ((p) uVar8.a(i7)).j();
                }
            }
            u uVar9 = (u) uVar6.a(1);
            bArr2[i5] = new byte[uVar9.size()][][];
            for (int i8 = 0; i8 < uVar9.size(); i8++) {
                u uVar10 = (u) uVar9.a(i8);
                bArr2[i5][i8] = new byte[uVar10.size()][];
                for (int i9 = 0; i9 < uVar10.size(); i9++) {
                    bArr2[i5][i8][i9] = ((p) uVar10.a(i9)).j();
                }
            }
            u uVar11 = (u) uVar6.a(2);
            bArr3[i5] = new byte[uVar11.size()][];
            for (int i10 = 0; i10 < uVar11.size(); i10++) {
                bArr3[i5][i10] = ((p) uVar11.a(i10)).j();
            }
            bArr4[i5] = ((p) uVar6.a(3)).j();
            i5++;
            i2 = 0;
        }
        int length = this.D.length - 1;
        this.E = new a[length];
        int i11 = 0;
        while (i11 < length) {
            byte[] bArr5 = this.D;
            int i12 = i11 + 1;
            this.E[i11] = new a(bArr5[i11], bArr5[i12], k.b.c.e.a.a(bArr[i11]), k.b.c.e.a.a(bArr2[i11]), k.b.c.e.a.b(bArr3[i11]), k.b.c.e.a.c(bArr4[i11]));
            i11 = i12;
        }
    }

    public f(short[][] sArr, short[] sArr2, short[][] sArr3, short[] sArr4, int[] iArr, a[] aVarArr) {
        this.x = new l(1);
        this.z = k.b.c.e.a.a(sArr);
        this.A = k.b.c.e.a.b(sArr2);
        this.B = k.b.c.e.a.a(sArr3);
        this.C = k.b.c.e.a.b(sArr4);
        byte[] bArr = new byte[iArr.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            bArr[i2] = (byte) iArr[i2];
        }
        this.D = bArr;
        this.E = aVarArr;
    }

    public t c() {
        k.b.a.f fVar = new k.b.a.f(10);
        e eVar = this.x;
        if (eVar == null) {
            eVar = this.y;
        }
        fVar.a(eVar);
        k.b.a.f fVar2 = new k.b.a.f(10);
        int i2 = 0;
        while (true) {
            byte[][] bArr = this.z;
            if (i2 >= bArr.length) {
                break;
            }
            fVar2.a((e) new a1(bArr[i2]));
            i2++;
        }
        fVar.a((e) new e1(fVar2));
        k.b.a.f fVar3 = new k.b.a.f(10);
        fVar3.a((e) new a1(this.A));
        fVar.a((e) new e1(fVar3));
        k.b.a.f fVar4 = new k.b.a.f(10);
        int i3 = 0;
        while (true) {
            byte[][] bArr2 = this.B;
            if (i3 >= bArr2.length) {
                break;
            }
            fVar4.a((e) new a1(bArr2[i3]));
            i3++;
        }
        fVar.a((e) new e1(fVar4));
        k.b.a.f fVar5 = new k.b.a.f(10);
        fVar5.a((e) new a1(this.C));
        fVar.a((e) new e1(fVar5));
        k.b.a.f fVar6 = new k.b.a.f(10);
        fVar6.a((e) new a1(this.D));
        fVar.a((e) new e1(fVar6));
        k.b.a.f fVar7 = new k.b.a.f(10);
        for (int i4 = 0; i4 < this.E.length; i4++) {
            k.b.a.f fVar8 = new k.b.a.f(10);
            byte[][][] a = k.b.c.e.a.a(this.E[i4].f2092d);
            k.b.a.f fVar9 = new k.b.a.f(10);
            for (int i5 = 0; i5 < a.length; i5++) {
                k.b.a.f fVar10 = new k.b.a.f(10);
                for (byte[] a1Var : a[i5]) {
                    fVar10.a((e) new a1(a1Var));
                }
                fVar9.a((e) new e1(fVar10));
            }
            fVar8.a((e) new e1(fVar9));
            byte[][][] a2 = k.b.c.e.a.a(this.E[i4].f2093e);
            k.b.a.f fVar11 = new k.b.a.f(10);
            for (int i6 = 0; i6 < a2.length; i6++) {
                k.b.a.f fVar12 = new k.b.a.f(10);
                for (byte[] a1Var2 : a2[i6]) {
                    fVar12.a((e) new a1(a1Var2));
                }
                fVar11.a((e) new e1(fVar12));
            }
            fVar8.a((e) new e1(fVar11));
            byte[][] a3 = k.b.c.e.a.a(this.E[i4].f2094f);
            k.b.a.f fVar13 = new k.b.a.f(10);
            for (byte[] a1Var3 : a3) {
                fVar13.a((e) new a1(a1Var3));
            }
            fVar8.a((e) new e1(fVar13));
            fVar8.a((e) new a1(k.b.c.e.a.b(this.E[i4].f2095g)));
            fVar7.a((e) new e1(fVar8));
        }
        fVar.a((e) new e1(fVar7));
        return new e1(fVar);
    }
}
