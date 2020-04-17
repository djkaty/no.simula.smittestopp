package k.b.a;

public class s extends IllegalStateException {
    public Throwable x;

    public s(String str) {
        super(str);
    }

    public s(String str, Throwable th) {
        super(str);
        this.x = th;
    }

    public Throwable getCause() {
        return this.x;
    }
}
