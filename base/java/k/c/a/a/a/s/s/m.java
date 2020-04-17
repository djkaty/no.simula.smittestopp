package k.c.a.a.a.s.s;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;

public class m extends b {
    public m(byte[] bArr) {
        super((byte) 5);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.b = dataInputStream.readUnsignedShort();
        dataInputStream.close();
    }

    public byte[] l() {
        return g();
    }

    public m(o oVar) {
        super((byte) 5);
        this.b = oVar.b;
    }
}
