package k.c.a.a.a.s.r;

import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;

public class b extends ByteArrayOutputStream {
    public final f x;
    public final i y;

    public b(f fVar) {
        this.x = fVar;
        this.y = null;
    }

    public OutputStream a() {
        f fVar = this.x;
        if (fVar != null) {
            return fVar.d();
        }
        i iVar = this.y;
        if (iVar != null) {
            return iVar.d();
        }
        return null;
    }

    public void flush() {
        ByteBuffer wrap;
        synchronized (this) {
            wrap = ByteBuffer.wrap(toByteArray());
            reset();
        }
        a().write(new d((byte) 2, true, wrap.array()).a());
        a().flush();
    }

    public b(i iVar) {
        this.x = null;
        this.y = iVar;
    }
}
