package k.c.a.a.a.s.s;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;

public class s extends b {
    public s(byte[] bArr) {
        super((byte) 11);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.b = dataInputStream.readUnsignedShort();
        dataInputStream.close();
    }

    public byte[] l() {
        return new byte[0];
    }
}
