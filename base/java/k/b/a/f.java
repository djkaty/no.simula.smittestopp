package k.b.a;

public class f {

    /* renamed from: d  reason: collision with root package name */
    public static final e[] f1960d = new e[0];
    public e[] a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f1961c;

    public f(int i2) {
        if (i2 >= 0) {
            this.a = i2 == 0 ? f1960d : new e[i2];
            this.b = 0;
            this.f1961c = false;
            return;
        }
        throw new IllegalArgumentException("'initialCapacity' must not be negative");
    }

    public static e[] a(e[] eVarArr) {
        return eVarArr.length < 1 ? f1960d : (e[]) eVarArr.clone();
    }

    public e a(int i2) {
        if (i2 < this.b) {
            return this.a[i2];
        }
        throw new ArrayIndexOutOfBoundsException(i2 + " >= " + this.b);
    }

    public void a(e eVar) {
        if (eVar != null) {
            int length = this.a.length;
            boolean z = true;
            int i2 = this.b + 1;
            if (i2 <= length) {
                z = false;
            }
            if (this.f1961c || z) {
                e[] eVarArr = new e[Math.max(this.a.length, (i2 >> 1) + i2)];
                System.arraycopy(this.a, 0, eVarArr, 0, this.b);
                this.a = eVarArr;
                this.f1961c = false;
            }
            this.a[this.b] = eVar;
            this.b = i2;
            return;
        }
        throw new NullPointerException("'element' cannot be null");
    }

    public e[] a() {
        int i2 = this.b;
        if (i2 == 0) {
            return f1960d;
        }
        e[] eVarArr = this.a;
        if (eVarArr.length == i2) {
            this.f1961c = true;
            return eVarArr;
        }
        e[] eVarArr2 = new e[i2];
        System.arraycopy(eVarArr, 0, eVarArr2, 0, i2);
        return eVarArr2;
    }
}
