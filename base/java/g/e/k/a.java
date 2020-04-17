package g.e.k;

import e.c.a.a.b.l.c;
import g.a.d.f;
import g.b.a.d;
import g.b.a.g;
import g.b.a.h;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.SocketChannel;

public abstract class a extends SocketChannel implements ByteChannel, g {
    public static final int y = f.SHUT_RD.intValue();
    public static final int z = f.SHUT_WR.intValue();
    public final b x;

    public a(int i2) {
        super(h.a());
        this.x = new b(i2);
    }

    public final int getFD() {
        return this.x.a;
    }

    public void implCloseSelectableChannel() {
        c.a(this.x.a);
    }

    public void implConfigureBlocking(boolean z2) {
        int i2;
        int i3 = this.x.a;
        int a = d.a.a(i3, g.b.a.c.a, 0);
        if (z2) {
            i2 = (~g.b.a.c.f1337c) & a;
        } else {
            i2 = g.b.a.c.f1337c | a;
        }
        d.a.a(i3, g.b.a.c.b, i2);
    }

    public long read(ByteBuffer[] byteBufferArr, int i2, int i3) {
        b bVar = this.x;
        if (bVar != null) {
            long j2 = 0;
            for (int i4 = 0; i4 < i3; i4++) {
                long a = (long) bVar.a(byteBufferArr[i2 + i4]);
                if (a == -1) {
                    return a;
                }
                j2 += a;
            }
            return j2;
        }
        throw null;
    }

    public SocketChannel shutdownInput() {
        if (d.a.a(this.x.a, y) >= 0) {
            return this;
        }
        throw new IOException(c.b());
    }

    public SocketChannel shutdownOutput() {
        if (d.a.a(this.x.a, z) >= 0) {
            return this;
        }
        throw new IOException(c.b());
    }
}
