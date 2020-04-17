package k.b.a;

import com.microsoft.identity.common.internal.cache.SharedPreferencesSimpleCacheImpl;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.NoSuchElementException;
import k.b.j.c;

public abstract class u extends t implements c<e> {
    public e[] x;

    public class a implements Enumeration {
        public int a = 0;

        public a() {
        }

        public boolean hasMoreElements() {
            return this.a < u.this.x.length;
        }

        public Object nextElement() {
            int i2 = this.a;
            e[] eVarArr = u.this.x;
            if (i2 < eVarArr.length) {
                this.a = i2 + 1;
                return eVarArr[i2];
            }
            throw new NoSuchElementException("ASN1Sequence Enumeration");
        }
    }

    public u() {
        this.x = f.f1960d;
    }

    public u(e eVar) {
        if (eVar != null) {
            this.x = new e[]{eVar};
            return;
        }
        throw new NullPointerException("'element' cannot be null");
    }

    public u(f fVar) {
        if (fVar != null) {
            this.x = fVar.a();
            return;
        }
        throw new NullPointerException("'elementVector' cannot be null");
    }

    public u(e[] eVarArr) {
        boolean z = false;
        if (eVarArr != null) {
            int length = eVarArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                } else if (eVarArr[i2] == null) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        z = true;
        if (!z) {
            this.x = f.a(eVarArr);
            return;
        }
        throw new NullPointerException("'elements' cannot be null, or contain null");
    }

    public u(e[] eVarArr, boolean z) {
        this.x = z ? f.a(eVarArr) : eVarArr;
    }

    public static u a(Object obj) {
        if (obj == null || (obj instanceof u)) {
            return (u) obj;
        }
        if (obj instanceof v) {
            return a((Object) ((v) obj).c());
        }
        if (obj instanceof byte[]) {
            try {
                return a((Object) t.a((byte[]) obj));
            } catch (IOException e2) {
                StringBuilder a2 = e.a.a.a.a.a("failed to construct sequence from byte[]: ");
                a2.append(e2.getMessage());
                throw new IllegalArgumentException(a2.toString());
            }
        } else {
            if (obj instanceof e) {
                t c2 = ((e) obj).c();
                if (c2 instanceof u) {
                    return (u) c2;
                }
            }
            throw new IllegalArgumentException(e.a.a.a.a.a(obj, e.a.a.a.a.a("unknown object in getInstance: ")));
        }
    }

    public static u a(b0 b0Var, boolean z) {
        if (!z) {
            t j2 = b0Var.j();
            if (b0Var.y) {
                return b0Var instanceof n0 ? new j0((e) j2) : new r1((e) j2);
            }
            if (j2 instanceof u) {
                u uVar = (u) j2;
                return b0Var instanceof n0 ? uVar : (u) uVar.i();
            }
            StringBuilder a2 = e.a.a.a.a.a("unknown object in getInstance: ");
            a2.append(b0Var.getClass().getName());
            throw new IllegalArgumentException(a2.toString());
        } else if (b0Var.y) {
            return a((Object) b0Var.j());
        } else {
            throw new IllegalArgumentException("object implicit - explicit expected.");
        }
    }

    public e a(int i2) {
        return this.x[i2];
    }

    public boolean a(t tVar) {
        if (!(tVar instanceof u)) {
            return false;
        }
        u uVar = (u) tVar;
        int size = size();
        if (uVar.size() != size) {
            return false;
        }
        for (int i2 = 0; i2 < size; i2++) {
            t c2 = this.x[i2].c();
            t c3 = uVar.x[i2].c();
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
        return new e1(this.x, false);
    }

    public int hashCode() {
        int length = this.x.length;
        int i2 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i2;
            }
            i2 = (i2 * 257) ^ this.x[length].c().hashCode();
        }
    }

    public t i() {
        return new r1(this.x, false);
    }

    public Iterator<e> iterator() {
        return new k.b.j.a(this.x);
    }

    public Enumeration j() {
        return new a();
    }

    public e[] k() {
        return this.x;
    }

    public int size() {
        return this.x.length;
    }

    public String toString() {
        int size = size();
        if (size == 0) {
            return SharedPreferencesSimpleCacheImpl.EMPTY_ARRAY;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('[');
        int i2 = 0;
        while (true) {
            stringBuffer.append(this.x[i2]);
            i2++;
            if (i2 >= size) {
                stringBuffer.append(']');
                return stringBuffer.toString();
            }
            stringBuffer.append(", ");
        }
    }
}
