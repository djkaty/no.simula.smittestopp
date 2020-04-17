package k.b.i.b.g;

import e.a.a.a.a;
import k.b.i.b.g.j;

public final class k {
    public final m a;
    public final h b;

    /* renamed from: c  reason: collision with root package name */
    public byte[] f2122c;

    /* renamed from: d  reason: collision with root package name */
    public byte[] f2123d;

    public k(m mVar) {
        if (mVar != null) {
            this.a = mVar;
            int i2 = mVar.b;
            this.b = new h(mVar.f2129g, i2);
            this.f2122c = new byte[i2];
            this.f2123d = new byte[i2];
            return;
        }
        throw new NullPointerException("params == null");
    }

    public final byte[] a(byte[] bArr, int i2, int i3, j jVar) {
        int i4 = this.a.b;
        if (bArr == null) {
            throw new NullPointerException("startHash == null");
        } else if (bArr.length != i4) {
            throw new IllegalArgumentException(a.b("startHash needs to be ", i4, "bytes"));
        } else if (jVar == null) {
            throw new NullPointerException("otsHashAddress == null");
        } else if (jVar.a() != null) {
            int i5 = i2 + i3;
            if (i5 > this.a.f2125c - 1) {
                throw new IllegalArgumentException("max chain length must not be greater than w");
            } else if (i3 == 0) {
                return bArr;
            } else {
                byte[] a2 = a(bArr, i2, i3 - 1, jVar);
                j.b bVar = (j.b) ((j.b) new j.b().b(jVar.a)).a(jVar.b);
                bVar.f2119e = jVar.f2116e;
                bVar.f2120f = jVar.f2117f;
                bVar.f2121g = i5 - 1;
                j jVar2 = (j) ((j.b) bVar.a(0)).b();
                byte[] a3 = this.b.a(this.f2123d, jVar2.a());
                j.b bVar2 = (j.b) ((j.b) new j.b().b(jVar2.a)).a(jVar2.b);
                bVar2.f2119e = jVar2.f2116e;
                bVar2.f2120f = jVar2.f2117f;
                bVar2.f2121g = jVar2.f2118g;
                byte[] a4 = this.b.a(this.f2123d, ((j) ((j.b) bVar2.a(1)).b()).a());
                byte[] bArr2 = new byte[i4];
                for (int i6 = 0; i6 < i4; i6++) {
                    bArr2[i6] = (byte) (a2[i6] ^ a4[i6]);
                }
                h hVar = this.b;
                if (hVar != null) {
                    int length = a3.length;
                    int i7 = hVar.b;
                    if (length != i7) {
                        throw new IllegalArgumentException("wrong key length");
                    } else if (i4 == i7) {
                        return hVar.a(0, a3, bArr2);
                    } else {
                        throw new IllegalArgumentException("wrong in length");
                    }
                } else {
                    throw null;
                }
            }
        } else {
            throw new NullPointerException("otsHashAddress byte array == null");
        }
    }

    public n a(j jVar) {
        if (jVar != null) {
            byte[][] bArr = new byte[this.a.f2126d][];
            int i2 = 0;
            while (true) {
                m mVar = this.a;
                if (i2 >= mVar.f2126d) {
                    return new n(mVar, bArr);
                }
                j.b bVar = (j.b) ((j.b) new j.b().b(jVar.a)).a(jVar.b);
                bVar.f2119e = jVar.f2116e;
                bVar.f2120f = i2;
                bVar.f2121g = jVar.f2118g;
                jVar = (j) ((j.b) bVar.a(jVar.f2131d)).b();
                if (i2 >= 0 && i2 < this.a.f2126d) {
                    bArr[i2] = a(this.b.a(this.f2122c, k.b.c.e.a.a((long) i2, 32)), 0, this.a.f2125c - 1, jVar);
                    i2++;
                }
            }
            throw new IllegalArgumentException("index out of bounds");
        }
        throw new NullPointerException("otsHashAddress == null");
    }

    public byte[] a(byte[] bArr, j jVar) {
        j.b bVar = (j.b) ((j.b) new j.b().b(jVar.a)).a(jVar.b);
        bVar.f2119e = jVar.f2116e;
        return this.b.a(bArr, ((j) bVar.b()).a());
    }

    public void a(byte[] bArr, byte[] bArr2) {
        if (bArr != null) {
            int length = bArr.length;
            int i2 = this.a.b;
            if (length != i2) {
                throw new IllegalArgumentException("size of secretKeySeed needs to be equal to size of digest");
            } else if (bArr2 == null) {
                throw new NullPointerException("publicSeed == null");
            } else if (bArr2.length == i2) {
                this.f2122c = bArr;
                this.f2123d = bArr2;
            } else {
                throw new IllegalArgumentException("size of publicSeed needs to be equal to size of digest");
            }
        } else {
            throw new NullPointerException("secretKeySeed == null");
        }
    }
}
