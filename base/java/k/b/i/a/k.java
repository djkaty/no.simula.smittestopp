package k.b.i.a;

import k.b.a.a1;
import k.b.a.b0;
import k.b.a.e;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.h1;
import k.b.a.l;
import k.b.a.n;
import k.b.a.p;
import k.b.a.t;
import k.b.a.u;
import k.b.c.e.a;
import k.b.j.b;

public class k extends n {
    public final byte[] A;
    public final byte[] B;
    public final byte[] C;
    public final byte[] D;
    public final byte[] E;
    public final int x;
    public final long y;
    public final long z;

    public k(long j2, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        this.x = 0;
        this.y = j2;
        this.A = a.a(bArr);
        this.B = a.a(bArr2);
        this.C = a.a(bArr3);
        this.D = a.a(bArr4);
        this.E = a.a(bArr5);
        this.z = -1;
    }

    public k(long j2, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, long j3) {
        this.x = 1;
        this.y = j2;
        this.A = a.a(bArr);
        this.B = a.a(bArr2);
        this.C = a.a(bArr3);
        this.D = a.a(bArr4);
        this.E = a.a(bArr5);
        this.z = j3;
    }

    public k(u uVar) {
        long j2;
        l a = l.a((Object) uVar.a(0));
        if (a.a(b.a) || a.a(b.b)) {
            this.x = a.k();
            if (uVar.size() == 2 || uVar.size() == 3) {
                u a2 = u.a((Object) uVar.a(1));
                this.y = l.a((Object) a2.a(0)).l();
                this.A = a.a(p.a((Object) a2.a(1)).j());
                this.B = a.a(p.a((Object) a2.a(2)).j());
                this.C = a.a(p.a((Object) a2.a(3)).j());
                this.D = a.a(p.a((Object) a2.a(4)).j());
                if (a2.size() == 6) {
                    b0 a3 = b0.a((Object) a2.a(5));
                    if (a3.x == 0) {
                        j2 = l.a(a3, false).l();
                    } else {
                        throw new IllegalArgumentException("unknown tag in XMSSPrivateKey");
                    }
                } else if (a2.size() == 5) {
                    j2 = -1;
                } else {
                    throw new IllegalArgumentException("keySeq should be 5 or 6 in length");
                }
                this.z = j2;
                if (uVar.size() == 3) {
                    this.E = a.a(p.a(b0.a((Object) uVar.a(2)), true).j());
                } else {
                    this.E = null;
                }
            } else {
                throw new IllegalArgumentException("key sequence wrong size");
            }
        } else {
            throw new IllegalArgumentException("unknown version of sequence");
        }
    }

    public t c() {
        l lVar;
        f fVar = new f(10);
        if (this.z < 0) {
            lVar = new l(0);
        }
        fVar.a((e) lVar);
        f fVar2 = new f(10);
        fVar2.a((e) new l(this.y));
        fVar2.a((e) new a1(this.A));
        fVar2.a((e) new a1(this.B));
        fVar2.a((e) new a1(this.C));
        fVar2.a((e) new a1(this.D));
        long j2 = this.z;
        if (j2 >= 0) {
            fVar2.a((e) new h1(false, 0, new l(j2)));
        }
        fVar.a((e) new e1(fVar2));
        fVar.a((e) new h1(true, 0, new a1(this.E)));
        return new e1(fVar);
    }
}
