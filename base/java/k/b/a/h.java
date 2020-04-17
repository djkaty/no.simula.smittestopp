package k.b.a;

import java.io.IOException;

public class h extends IOException {
    public Throwable x;

    public h(String str) {
        super(str);
    }

    public h(String str, Throwable th) {
        super(str);
        this.x = th;
    }

    public Throwable getCause() {
        return this.x;
    }
}
