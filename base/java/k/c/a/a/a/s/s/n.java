package k.c.a.a.a.s.s;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;

public class n extends h {
    public n(m mVar) {
        super((byte) 6);
        this.b = mVar.b;
    }

    public byte j() {
        return (byte) ((this.f2284c ? 8 : 0) | 2);
    }

    public byte[] l() {
        return g();
    }

    public String toString() {
        return String.valueOf(super.toString()) + " msgId " + this.b;
    }

    public n(byte[] bArr) {
        super((byte) 6);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.b = dataInputStream.readUnsignedShort();
        dataInputStream.close();
    }
}
