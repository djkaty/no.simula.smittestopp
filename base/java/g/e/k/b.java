package g.e.k;

import e.c.a.a.b.l.c;
import java.io.IOException;
import java.nio.ByteBuffer;

public final class b {
    public int a = -1;

    public b(int i2) {
        this.a = i2;
    }

    public int a(ByteBuffer byteBuffer) {
        ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.remaining());
        int a2 = c.a(this.a, allocate);
        allocate.flip();
        byteBuffer.put(allocate);
        if (a2 == -1) {
            int ordinal = c.a().ordinal();
            if (ordinal == 34 || ordinal == 35) {
                return 0;
            }
            throw new IOException(c.b());
        } else if (a2 != 0) {
            return a2;
        } else {
            return -1;
        }
    }

    public int b(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        ByteBuffer allocate = ByteBuffer.allocate(remaining);
        allocate.put(byteBuffer);
        allocate.position(0);
        int b = c.b(this.a, allocate);
        if (b >= 0) {
            if (b < remaining) {
                byteBuffer.position(byteBuffer.position() - (remaining - b));
            }
            return b;
        }
        int ordinal = c.a().ordinal();
        if (ordinal == 34 || ordinal == 35) {
            byteBuffer.position(byteBuffer.position() - remaining);
            return 0;
        }
        throw new IOException(c.b());
    }
}
