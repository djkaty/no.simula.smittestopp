package k.c.a.a.a.s.s;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;

public class q extends b {

    /* renamed from: g  reason: collision with root package name */
    public int[] f2276g;

    public q(byte[] bArr) {
        super((byte) 9);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.b = dataInputStream.readUnsignedShort();
        this.f2276g = new int[(bArr.length - 2)];
        int i2 = 0;
        for (int read = dataInputStream.read(); read != -1; read = dataInputStream.read()) {
            this.f2276g[i2] = read;
            i2++;
        }
        dataInputStream.close();
    }

    public byte[] l() {
        return new byte[0];
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(super.toString());
        stringBuffer.append(" granted Qos");
        for (int append : this.f2276g) {
            stringBuffer.append(" ");
            stringBuffer.append(append);
        }
        return stringBuffer.toString();
    }
}
