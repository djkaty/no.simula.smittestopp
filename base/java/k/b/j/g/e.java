package k.b.j.g;

public class e extends IllegalStateException {
    public Throwable x;

    public e(String str, Throwable th) {
        super(str);
        this.x = th;
    }

    public Throwable getCause() {
        return this.x;
    }
}
