package k.b.a;

import e.a.a.a.a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class i0 implements q {
    public z x;

    public i0(z zVar) {
        this.x = zVar;
    }

    public t a() {
        InputStream b = b();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            int read = b.read(bArr, 0, 4096);
            if (read < 0) {
                return new h0(byteArrayOutputStream.toByteArray());
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    public InputStream b() {
        return new p0(this.x);
    }

    public t c() {
        try {
            return a();
        } catch (IOException e2) {
            StringBuilder a = a.a("IOException converting stream to byte array: ");
            a.append(e2.getMessage());
            throw new s(a.toString(), e2);
        }
    }
}
