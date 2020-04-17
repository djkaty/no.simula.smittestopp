package k.b.a;

import com.microsoft.identity.common.internal.cache.SharedPreferencesSimpleCacheImpl;
import e.a.a.a.a;
import java.io.IOException;
import java.util.Iterator;
import k.b.j.c;

public abstract class x extends t implements c<e> {
    public final e[] x;
    public final boolean y;

    public x() {
        this.x = f.f1960d;
        this.y = true;
    }

    public x(e eVar) {
        if (eVar != null) {
            this.x = new e[]{eVar};
            this.y = true;
            return;
        }
        throw new NullPointerException("'element' cannot be null");
    }

    public x(f fVar, boolean z) {
        e[] eVarArr;
        int i2;
        if (fVar != null) {
            boolean z2 = false;
            if (!z || (i2 = fVar.b) < 2) {
                eVarArr = fVar.a();
            } else {
                if (i2 == 0) {
                    eVarArr = f.f1960d;
                } else {
                    e[] eVarArr2 = new e[i2];
                    System.arraycopy(fVar.a, 0, eVarArr2, 0, i2);
                    eVarArr = eVarArr2;
                }
                a(eVarArr);
            }
            this.x = eVarArr;
            this.y = (z || eVarArr.length < 2) ? true : z2;
            return;
        }
        throw new NullPointerException("'elementVector' cannot be null");
    }

    public x(boolean z, e[] eVarArr) {
        this.x = eVarArr;
        this.y = z || eVarArr.length < 2;
    }

    public static x a(Object obj) {
        if (obj == null || (obj instanceof x)) {
            return (x) obj;
        }
        if (obj instanceof y) {
            return a((Object) ((y) obj).c());
        }
        if (obj instanceof byte[]) {
            try {
                return a((Object) t.a((byte[]) obj));
            } catch (IOException e2) {
                StringBuilder a = a.a("failed to construct set from byte[]: ");
                a.append(e2.getMessage());
                throw new IllegalArgumentException(a.toString());
            }
        } else {
            if (obj instanceof e) {
                t c2 = ((e) obj).c();
                if (c2 instanceof x) {
                    return (x) c2;
                }
            }
            throw new IllegalArgumentException(a.a(obj, a.a("unknown object in getInstance: ")));
        }
    }

    public static void a(e[] eVarArr) {
        int length = eVarArr.length;
        if (length >= 2) {
            e eVar = eVarArr[0];
            e eVar2 = eVarArr[1];
            byte[] a = a(eVar);
            byte[] a2 = a(eVar2);
            if (a(a2, a)) {
                e eVar3 = eVar2;
                eVar2 = eVar;
                eVar = eVar3;
                byte[] bArr = a2;
                a2 = a;
                a = bArr;
            }
            for (int i2 = 2; i2 < length; i2++) {
                e eVar4 = eVarArr[i2];
                byte[] a3 = a(eVar4);
                if (a(a2, a3)) {
                    eVarArr[i2 - 2] = eVar;
                    eVar = eVar2;
                    a = a2;
                    eVar2 = eVar4;
                    a2 = a3;
                } else if (a(a, a3)) {
                    eVarArr[i2 - 2] = eVar;
                    eVar = eVar4;
                    a = a3;
                } else {
                    int i3 = i2 - 1;
                    while (true) {
                        i3--;
                        if (i3 <= 0) {
                            break;
                        }
                        e eVar5 = eVarArr[i3 - 1];
                        if (a(a(eVar5), a3)) {
                            break;
                        }
                        eVarArr[i3] = eVar5;
                    }
                    eVarArr[i3] = eVar4;
                }
            }
            eVarArr[length - 2] = eVar;
            eVarArr[length - 1] = eVar2;
        }
    }

    public static boolean a(byte[] bArr, byte[] bArr2) {
        byte b = bArr[0] & -33;
        byte b2 = bArr2[0] & -33;
        if (b != b2) {
            return b < b2;
        }
        int min = Math.min(bArr.length, bArr2.length) - 1;
        for (int i2 = 1; i2 < min; i2++) {
            if (bArr[i2] != bArr2[i2]) {
                return (bArr[i2] & 255) < (bArr2[i2] & 255);
            }
        }
        return (bArr[min] & 255) <= (bArr2[min] & 255);
    }

    public static byte[] a(e eVar) {
        try {
            return eVar.c().a("DER");
        } catch (IOException unused) {
            throw new IllegalArgumentException("cannot encode object added to SET");
        }
    }

    public boolean a(t tVar) {
        if (!(tVar instanceof x)) {
            return false;
        }
        x xVar = (x) tVar;
        int length = this.x.length;
        if (xVar.x.length != length) {
            return false;
        }
        f1 f1Var = (f1) h();
        f1 f1Var2 = (f1) xVar.h();
        for (int i2 = 0; i2 < length; i2++) {
            t c2 = f1Var.x[i2].c();
            t c3 = f1Var2.x[i2].c();
            if (c2 != c3 && !c2.a(c3)) {
                return false;
            }
        }
        return true;
    }

    public boolean g() {
        return true;
    }

    public t h() {
        e[] eVarArr;
        if (this.y) {
            eVarArr = this.x;
        } else {
            eVarArr = (e[]) this.x.clone();
            a(eVarArr);
        }
        return new f1(true, eVarArr);
    }

    public int hashCode() {
        int length = this.x.length;
        int i2 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i2;
            }
            i2 += this.x[length].c().hashCode();
        }
    }

    public t i() {
        return new t1(this.y, this.x);
    }

    public Iterator<e> iterator() {
        return new k.b.j.a(f.a(this.x));
    }

    public String toString() {
        int length = this.x.length;
        if (length == 0) {
            return SharedPreferencesSimpleCacheImpl.EMPTY_ARRAY;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('[');
        int i2 = 0;
        while (true) {
            stringBuffer.append(this.x[i2]);
            i2++;
            if (i2 >= length) {
                stringBuffer.append(']');
                return stringBuffer.toString();
            }
            stringBuffer.append(", ");
        }
    }

    public static x a(b0 b0Var, boolean z) {
        if (!z) {
            t j2 = b0Var.j();
            if (b0Var.y) {
                return b0Var instanceof n0 ? new l0((e) j2) : new t1((e) j2);
            }
            if (j2 instanceof x) {
                x xVar = (x) j2;
                return b0Var instanceof n0 ? xVar : (x) xVar.i();
            } else if (j2 instanceof u) {
                e[] k2 = ((u) j2).k();
                return b0Var instanceof n0 ? new l0(false, k2) : new t1(false, k2);
            } else {
                StringBuilder a = a.a("unknown object in getInstance: ");
                a.append(b0Var.getClass().getName());
                throw new IllegalArgumentException(a.toString());
            }
        } else if (b0Var.y) {
            return a((Object) b0Var.j());
        } else {
            throw new IllegalArgumentException("object implicit - explicit expected.");
        }
    }
}
