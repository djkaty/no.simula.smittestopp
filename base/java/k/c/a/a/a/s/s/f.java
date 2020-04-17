package k.c.a.a.a.s.s;

import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import k.b.c.e.a;
import k.c.a.a.a.t.b;
import k.c.a.a.a.t.c;

public class f extends InputStream {
    public DataInputStream A;
    public ByteArrayOutputStream B;
    public int C;
    public int D;
    public byte[] E;
    public final String x;
    public final b y;
    public k.c.a.a.a.s.b z = null;

    public f(k.c.a.a.a.s.b bVar, InputStream inputStream) {
        String name = f.class.getName();
        this.x = name;
        this.y = c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", name);
        this.z = bVar;
        this.A = new DataInputStream(inputStream);
        this.B = new ByteArrayOutputStream();
        this.C = -1;
    }

    public final void a() {
        int size = this.B.size();
        int i2 = this.D;
        int i3 = size + i2;
        int i4 = this.C - i2;
        if (i4 >= 0) {
            int i5 = 0;
            while (i5 < i4) {
                try {
                    int read = this.A.read(this.E, i3 + i5, i4 - i5);
                    if (read >= 0) {
                        this.z.a(read);
                        i5 += read;
                    } else {
                        throw new EOFException();
                    }
                } catch (SocketTimeoutException e2) {
                    this.D += i5;
                    throw e2;
                }
            }
            return;
        }
        throw new IndexOutOfBoundsException();
    }

    public int available() {
        return this.A.available();
    }

    public u b() {
        try {
            if (this.C < 0) {
                this.B.reset();
                byte readByte = this.A.readByte();
                this.z.a(1);
                byte b = (byte) ((readByte >>> 4) & 15);
                if (b < 1 || b > 14) {
                    throw a.a(32108);
                }
                this.C = u.b(this.A).a;
                this.B.write(readByte);
                this.B.write(u.a((long) this.C));
                this.E = new byte[(this.B.size() + this.C)];
                this.D = 0;
            }
            if (this.C >= 0) {
                a();
                this.C = -1;
                byte[] byteArray = this.B.toByteArray();
                System.arraycopy(byteArray, 0, this.E, 0, byteArray.length);
                u a = u.a(this.E);
                try {
                    this.y.b(this.x, "readMqttWireMessage", "301", new Object[]{a});
                    return a;
                } catch (SocketTimeoutException unused) {
                    return a;
                }
            }
        } catch (SocketTimeoutException unused2) {
        }
        return null;
    }

    public void close() {
        this.A.close();
    }

    public int read() {
        return this.A.read();
    }
}
