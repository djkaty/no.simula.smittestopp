package k.b.j.g;

public class c extends IllegalStateException {
    public Throwable x;

    public c(String str, Throwable th) {
        super(str);
        this.x = th;
    }

    public Throwable getCause() {
        return this.x;
    }
}
