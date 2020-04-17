package k.c.a.a.a.s.s;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;

public class c extends b {

    /* renamed from: g  reason: collision with root package name */
    public int f2265g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f2266h;

    public c(byte[] bArr) {
        super((byte) 2);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.f2266h = (dataInputStream.readUnsignedByte() & 1) != 1 ? false : true;
        this.f2265g = dataInputStream.readUnsignedByte();
        dataInputStream.close();
    }

    public String i() {
        return "Con";
    }

    public byte[] l() {
        return new byte[0];
    }

    public boolean m() {
        return false;
    }

    public String toString() {
        return String.valueOf(super.toString()) + " session present:" + this.f2266h + " return code: " + this.f2265g;
    }
}
