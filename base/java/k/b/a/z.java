package k.b.a;

import e.a.a.a.a;
import java.io.IOException;
import java.io.InputStream;

public class z {
    public final InputStream a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[][] f2005c = new byte[11][];

    public z(InputStream inputStream) {
        int a2 = d2.a(inputStream);
        this.a = inputStream;
        this.b = a2;
    }

    public z(InputStream inputStream, int i2) {
        this.a = inputStream;
        this.b = i2;
    }

    public e a() {
        int read = this.a.read();
        if (read == -1) {
            return null;
        }
        InputStream inputStream = this.a;
        boolean z = false;
        if (inputStream instanceof y1) {
            y1 y1Var = (y1) inputStream;
            y1Var.C = false;
            y1Var.a();
        }
        int a2 = k.a(this.a, read);
        boolean z2 = (read & 32) != 0;
        InputStream inputStream2 = this.a;
        int i2 = this.b;
        if (a2 == 4 || a2 == 16 || a2 == 17 || a2 == 8) {
            z = true;
        }
        int a3 = k.a(inputStream2, i2, z);
        if (a3 >= 0) {
            w1 w1Var = new w1(this.a, a3, this.b);
            if ((read & 64) != 0) {
                return new m1(z2, a2, w1Var.a());
            }
            if ((read & 128) != 0) {
                return new o0(z2, a2, new z(w1Var));
            }
            if (z2) {
                if (a2 == 4) {
                    return new i0(new z(w1Var));
                }
                if (a2 == 8) {
                    return new t0(new z(w1Var));
                }
                if (a2 == 16) {
                    return new s1(new z(w1Var));
                }
                if (a2 == 17) {
                    return new u1(new z(w1Var));
                }
                throw new IOException(a.b("unknown tag ", a2, " encountered"));
            } else if (a2 == 4) {
                return new b1(w1Var);
            } else {
                try {
                    return k.a(a2, w1Var, this.f2005c);
                } catch (IllegalArgumentException e2) {
                    throw new h("corrupted stream detected", e2);
                }
            }
        } else if (z2) {
            z zVar = new z(new y1(this.a, this.b), this.b);
            if ((read & 64) != 0) {
                return new f0(a2, zVar);
            }
            if ((read & 128) != 0) {
                return new o0(true, a2, zVar);
            }
            if (a2 == 4) {
                return new i0(zVar);
            }
            if (a2 == 8) {
                return new t0(zVar);
            }
            if (a2 == 16) {
                return new k0(zVar);
            }
            if (a2 == 17) {
                return new m0(zVar);
            }
            StringBuilder a4 = a.a("unknown BER object encountered: 0x");
            a4.append(Integer.toHexString(a2));
            throw new h(a4.toString());
        } else {
            throw new IOException("indefinite-length primitive encoding encountered");
        }
    }

    public f b() {
        e a2 = a();
        if (a2 == null) {
            return new f(0);
        }
        f fVar = new f(10);
        do {
            fVar.a((e) a2 instanceof x1 ? ((x1) a2).a() : a2.c());
            a2 = a();
        } while (a2 != null);
        return fVar;
    }

    public t a(boolean z, int i2) {
        if (!z) {
            return new v1(false, i2, new a1(((w1) this.a).a()));
        }
        f b2 = b();
        return this.a instanceof y1 ? b2.b == 1 ? new n0(true, i2, b2.a(0)) : new n0(false, i2, g0.a(b2)) : b2.b == 1 ? new v1(true, i2, b2.a(0)) : new v1(false, i2, p1.a(b2));
    }
}
