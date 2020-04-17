package k.b.b;

import java.io.IOException;

public class a extends IOException {
    public Throwable x;

    public a(String str, Throwable th) {
        super(str);
        this.x = th;
    }

    public Throwable getCause() {
        return this.x;
    }
}
