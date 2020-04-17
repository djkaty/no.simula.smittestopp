package e.b.a.a.o;

import e.b.a.a.f;
import e.b.a.a.q.b;
import e.b.a.a.q.e;

public abstract class a extends f {
    public int x;
    public boolean y;
    public e z;

    static {
        f.a.WRITE_NUMBERS_AS_STRINGS.getMask();
        f.a.ESCAPE_NON_ASCII.getMask();
        f.a.STRICT_DUPLICATE_DETECTION.getMask();
    }

    public a(int i2) {
        this.x = i2;
        this.z = new e(0, (e) null, f.a.STRICT_DUPLICATE_DETECTION.enabledIn(i2) ? new b(this) : null);
        this.y = f.a.WRITE_NUMBERS_AS_STRINGS.enabledIn(i2);
    }

    public final boolean a(f.a aVar) {
        return (aVar.getMask() & this.x) != 0;
    }

    public void close() {
    }
}
