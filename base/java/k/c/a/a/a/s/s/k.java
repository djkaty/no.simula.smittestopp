package k.c.a.a.a.s.s;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;

public class k extends b {
    public k(byte[] bArr) {
        super((byte) 4);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.b = dataInputStream.readUnsignedShort();
        dataInputStream.close();
    }

    public byte[] l() {
        return g();
    }

    public k(o oVar) {
        super((byte) 4);
        this.b = oVar.b;
    }

    public k(int i2) {
        super((byte) 4);
        this.b = i2;
    }
}
