package k.b.h;

import java.io.IOException;

public class c extends IOException {
    public Throwable x;

    public c(String str, Throwable th) {
        super(str);
        this.x = th;
    }

    public Throwable getCause() {
        return this.x;
    }
}
