package k.c.a.a.a.s.s;

import java.io.InputStream;

public class a extends InputStream {
    public InputStream x;
    public int y = 0;

    public a(InputStream inputStream) {
        this.x = inputStream;
    }

    public int read() {
        int read = this.x.read();
        if (read != -1) {
            this.y++;
        }
        return read;
    }
}
