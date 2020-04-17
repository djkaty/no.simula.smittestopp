package k.c.a.a.a.s.s;

import java.io.BufferedOutputStream;
import java.io.OutputStream;
import k.c.a.a.a.t.b;
import k.c.a.a.a.t.c;

public class g extends OutputStream {
    public static final String A = g.class.getName();
    public b x = c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", A);
    public k.c.a.a.a.s.b y = null;
    public BufferedOutputStream z;

    public g(k.c.a.a.a.s.b bVar, OutputStream outputStream) {
        this.y = bVar;
        this.z = new BufferedOutputStream(outputStream);
    }

    public void a(u uVar) {
        byte[] h2 = uVar.h();
        byte[] k2 = uVar.k();
        this.z.write(h2, 0, h2.length);
        this.y.b(h2.length);
        int i2 = 0;
        while (i2 < k2.length) {
            int min = Math.min(1024, k2.length - i2);
            this.z.write(k2, i2, min);
            i2 += 1024;
            this.y.b(min);
        }
        this.x.b(A, "write", "529", new Object[]{uVar});
    }

    public void close() {
        this.z.close();
    }

    public void flush() {
        this.z.flush();
    }

    public void write(byte[] bArr) {
        this.z.write(bArr);
        this.y.b(bArr.length);
    }

    public void write(byte[] bArr, int i2, int i3) {
        this.z.write(bArr, i2, i3);
        this.y.b(i3);
    }

    public void write(int i2) {
        this.z.write(i2);
    }
}
