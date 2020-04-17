package k.b.i.a;

import k.b.a.a1;
import k.b.a.e;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.l;
import k.b.a.n;
import k.b.a.o;
import k.b.a.p;
import k.b.a.t;
import k.b.a.u;
import k.b.c.e.a;

public class g extends n {
    public byte[][] A;
    public byte[][] B;
    public byte[] C;
    public l x;
    public o y;
    public l z;

    public g(int i2, short[][] sArr, short[][] sArr2, short[] sArr3) {
        this.x = new l(0);
        this.z = new l((long) i2);
        this.A = a.a(sArr);
        this.B = a.a(sArr2);
        this.C = a.b(sArr3);
    }

    public g(u uVar) {
        if (uVar.a(0) instanceof l) {
            this.x = l.a((Object) uVar.a(0));
        } else {
            this.y = o.a((Object) uVar.a(0));
        }
        this.z = l.a((Object) uVar.a(1));
        u a = u.a((Object) uVar.a(2));
        this.A = new byte[a.size()][];
        for (int i2 = 0; i2 < a.size(); i2++) {
            this.A[i2] = p.a((Object) a.a(i2)).j();
        }
        u uVar2 = (u) uVar.a(3);
        this.B = new byte[uVar2.size()][];
        for (int i3 = 0; i3 < uVar2.size(); i3++) {
            this.B[i3] = p.a((Object) uVar2.a(i3)).j();
        }
        this.C = p.a((Object) ((u) uVar.a(4)).a(0)).j();
    }

    public t c() {
        f fVar = new f(10);
        e eVar = this.x;
        if (eVar == null) {
            eVar = this.y;
        }
        fVar.a(eVar);
        fVar.a((e) this.z);
        f fVar2 = new f(10);
        int i2 = 0;
        int i3 = 0;
        while (true) {
            byte[][] bArr = this.A;
            if (i3 >= bArr.length) {
                break;
            }
            fVar2.a((e) new a1(bArr[i3]));
            i3++;
        }
        fVar.a((e) new e1(fVar2));
        f fVar3 = new f(10);
        while (true) {
            byte[][] bArr2 = this.B;
            if (i2 < bArr2.length) {
                fVar3.a((e) new a1(bArr2[i2]));
                i2++;
            } else {
                fVar.a((e) new e1(fVar3));
                f fVar4 = new f(10);
                fVar4.a((e) new a1(this.C));
                fVar.a((e) new e1(fVar4));
                return new e1(fVar);
            }
        }
    }
}
