package k.c.a.a.a.s.s;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;

public class l extends b {
    public l(byte[] bArr) {
        super((byte) 7);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.b = dataInputStream.readUnsignedShort();
        dataInputStream.close();
    }

    public byte[] l() {
        return g();
    }

    public l(o oVar) {
        super((byte) 7);
        this.b = oVar.b;
    }

    public l(int i2) {
        super((byte) 7);
        this.b = i2;
    }
}
