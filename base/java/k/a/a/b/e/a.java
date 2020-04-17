package k.a.a.b.e;

public class a<L, R> extends b<L, R> {
    public L x;
    public R y;

    public a(L l2, R r) {
        this.x = l2;
        this.y = r;
    }

    public R setValue(R r) {
        R r2 = this.y;
        this.y = r;
        return r2;
    }
}
