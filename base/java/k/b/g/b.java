package k.b.g;

import java.io.IOException;

public class b extends IOException {
    public Exception x;

    public b(String str) {
        super(str);
    }

    public b(String str, Exception exc) {
        super(str);
        this.x = exc;
    }

    public Throwable getCause() {
        return this.x;
    }
}
