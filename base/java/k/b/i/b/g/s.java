package k.b.i.b.g;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;

public final class s extends q {
    public final r b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f2136c;

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f2137d;

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f2138e;

    /* renamed from: f  reason: collision with root package name */
    public final byte[] f2139f;

    /* renamed from: g  reason: collision with root package name */
    public volatile long f2140g;

    /* renamed from: h  reason: collision with root package name */
    public volatile b f2141h;

    public static class b {
        public final r a;
        public long b = 0;

        /* renamed from: c  reason: collision with root package name */
        public long f2142c = -1;

        /* renamed from: d  reason: collision with root package name */
        public byte[] f2143d = null;

        /* renamed from: e  reason: collision with root package name */
        public byte[] f2144e = null;

        /* renamed from: f  reason: collision with root package name */
        public byte[] f2145f = null;

        /* renamed from: g  reason: collision with root package name */
        public byte[] f2146g = null;

        /* renamed from: h  reason: collision with root package name */
        public b f2147h = null;

        /* renamed from: i  reason: collision with root package name */
        public byte[] f2148i = null;

        /* renamed from: j  reason: collision with root package name */
        public w f2149j = null;

        public b(r rVar) {
            this.a = rVar;
        }
    }

    public /* synthetic */ s(b bVar, a aVar) {
        super(true, bVar.a.b.f2158f);
        r rVar = bVar.a;
        this.b = rVar;
        if (rVar != null) {
            int i2 = rVar.b.f2159g;
            byte[] bArr = bVar.f2148i;
            if (bArr == null) {
                this.f2140g = bVar.b;
                byte[] bArr2 = bVar.f2143d;
                if (bArr2 == null) {
                    this.f2136c = new byte[i2];
                } else if (bArr2.length == i2) {
                    this.f2136c = bArr2;
                } else {
                    throw new IllegalArgumentException("size of secretKeySeed needs to be equal size of digest");
                }
                byte[] bArr3 = bVar.f2144e;
                if (bArr3 == null) {
                    this.f2137d = new byte[i2];
                } else if (bArr3.length == i2) {
                    this.f2137d = bArr3;
                } else {
                    throw new IllegalArgumentException("size of secretKeyPRF needs to be equal size of digest");
                }
                byte[] bArr4 = bVar.f2145f;
                if (bArr4 == null) {
                    this.f2138e = new byte[i2];
                } else if (bArr4.length == i2) {
                    this.f2138e = bArr4;
                } else {
                    throw new IllegalArgumentException("size of publicSeed needs to be equal size of digest");
                }
                byte[] bArr5 = bVar.f2146g;
                if (bArr5 == null) {
                    this.f2139f = new byte[i2];
                } else if (bArr5.length == i2) {
                    this.f2139f = bArr5;
                } else {
                    throw new IllegalArgumentException("size of root needs to be equal size of digest");
                }
                b bVar2 = bVar.f2147h;
                if (bVar2 == null) {
                    if (!k.b.c.e.a.a(this.b.f2134c, bVar.b) || bArr4 == null || bArr2 == null) {
                        bVar2 = new b(bVar.f2142c + 1);
                    } else {
                        bVar2 = new b(this.b, bVar.b, bArr4, bArr2);
                    }
                }
                this.f2141h = bVar2;
                long j2 = bVar.f2142c;
                if (j2 >= 0 && j2 != this.f2141h.y) {
                    throw new IllegalArgumentException("maxIndex set but not reflected in state");
                }
            } else if (bVar.f2149j != null) {
                int i3 = rVar.f2134c;
                int i4 = (i3 + 7) / 8;
                this.f2140g = k.b.c.e.a.a(bArr, 0, i4);
                if (k.b.c.e.a.a(i3, this.f2140g)) {
                    int i5 = i4 + 0;
                    this.f2136c = k.b.c.e.a.b(bArr, i5, i2);
                    int i6 = i5 + i2;
                    this.f2137d = k.b.c.e.a.b(bArr, i6, i2);
                    int i7 = i6 + i2;
                    this.f2138e = k.b.c.e.a.b(bArr, i7, i2);
                    int i8 = i7 + i2;
                    this.f2139f = k.b.c.e.a.b(bArr, i8, i2);
                    int i9 = i8 + i2;
                    try {
                        this.f2141h = ((b) k.b.c.e.a.a(k.b.c.e.a.b(bArr, i9, bArr.length - i9), b.class)).a(bVar.f2149j.f2156d);
                    } catch (IOException e2) {
                        throw new IllegalArgumentException(e2.getMessage(), e2);
                    } catch (ClassNotFoundException e3) {
                        throw new IllegalArgumentException(e3.getMessage(), e3);
                    }
                } else {
                    throw new IllegalArgumentException("index out of bounds");
                }
            } else {
                throw new NullPointerException("xmss == null");
            }
        } else {
            throw new NullPointerException("params == null");
        }
    }

    public byte[] a() {
        byte[] b2;
        synchronized (this) {
            b2 = b();
        }
        return b2;
    }

    public byte[] b() {
        byte[] a2;
        synchronized (this) {
            int i2 = this.b.b.f2159g;
            int i3 = (this.b.f2134c + 7) / 8;
            byte[] bArr = new byte[(i3 + i2 + i2 + i2 + i2)];
            k.b.c.e.a.a(bArr, k.b.c.e.a.a(this.f2140g, i3), 0);
            int i4 = i3 + 0;
            k.b.c.e.a.a(bArr, this.f2136c, i4);
            int i5 = i4 + i2;
            k.b.c.e.a.a(bArr, this.f2137d, i5);
            int i6 = i5 + i2;
            k.b.c.e.a.a(bArr, this.f2138e, i6);
            k.b.c.e.a.a(bArr, this.f2139f, i6 + i2);
            try {
                b bVar = this.f2141h;
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                objectOutputStream.writeObject(bVar);
                objectOutputStream.flush();
                a2 = k.b.c.e.a.a(bArr, byteArrayOutputStream.toByteArray());
            } catch (IOException e2) {
                throw new IllegalStateException("error serializing bds state: " + e2.getMessage(), e2);
            }
        }
        return a2;
    }
}
