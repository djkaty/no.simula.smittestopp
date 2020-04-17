package k.b.a;

import e.a.a.a.a;
import java.io.IOException;

public class c extends t {
    public static final c y = new c((byte) 0);
    public static final c z = new c((byte) -1);
    public final byte x;

    public c(byte b) {
        this.x = b;
    }

    public static c a(Object obj) {
        if (obj == null || (obj instanceof c)) {
            return (c) obj;
        }
        if (obj instanceof byte[]) {
            try {
                return (c) t.a((byte[]) obj);
            } catch (IOException e2) {
                StringBuilder a = a.a("failed to construct boolean from byte[]: ");
                a.append(e2.getMessage());
                throw new IllegalArgumentException(a.toString());
            }
        } else {
            throw new IllegalArgumentException(a.a(obj, a.a("illegal object in getInstance: ")));
        }
    }

    public static c a(b0 b0Var, boolean z2) {
        t j2 = b0Var.j();
        return (z2 || (j2 instanceof c)) ? a((Object) j2) : b(p.a((Object) j2).j());
    }

    public static c b(byte[] bArr) {
        if (bArr.length == 1) {
            byte b = bArr[0];
            return b != -1 ? b != 0 ? new c(b) : y : z;
        }
        throw new IllegalArgumentException("BOOLEAN value should have 1 byte in it");
    }

    public void a(r rVar, boolean z2) {
        byte b = this.x;
        if (z2) {
            rVar.a.write(1);
        }
        rVar.a(1);
        rVar.a.write(b);
    }

    public boolean a(t tVar) {
        return (tVar instanceof c) && j() == ((c) tVar).j();
    }

    public int f() {
        return 3;
    }

    public boolean g() {
        return false;
    }

    public t h() {
        return j() ? z : y;
    }

    public int hashCode() {
        return j() ? 1 : 0;
    }

    public boolean j() {
        return this.x != 0;
    }

    public String toString() {
        return j() ? "TRUE" : "FALSE";
    }
}
