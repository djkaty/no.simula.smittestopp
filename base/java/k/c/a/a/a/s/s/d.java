package k.c.a.a.a.s.s;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import k.c.a.a.a.k;
import k.c.a.a.a.l;

public class d extends u {

    /* renamed from: g  reason: collision with root package name */
    public String f2267g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f2268h;

    /* renamed from: i  reason: collision with root package name */
    public l f2269i;

    /* renamed from: j  reason: collision with root package name */
    public String f2270j;

    /* renamed from: k  reason: collision with root package name */
    public char[] f2271k;

    /* renamed from: l  reason: collision with root package name */
    public int f2272l;
    public String m;
    public int n;

    public d(byte[] bArr) {
        super((byte) 1);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        u.a(dataInputStream);
        dataInputStream.readByte();
        dataInputStream.readByte();
        this.f2272l = dataInputStream.readUnsignedShort();
        this.f2267g = u.a(dataInputStream);
        dataInputStream.close();
    }

    public String i() {
        return "Con";
    }

    public byte j() {
        return 0;
    }

    public byte[] k() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            u.a(dataOutputStream, this.f2267g);
            if (this.f2269i != null) {
                u.a(dataOutputStream, this.m);
                dataOutputStream.writeShort(this.f2269i.b.length);
                dataOutputStream.write(this.f2269i.b);
            }
            if (this.f2270j != null) {
                u.a(dataOutputStream, this.f2270j);
                if (this.f2271k != null) {
                    u.a(dataOutputStream, new String(this.f2271k));
                }
            }
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            throw new k((Throwable) e2);
        }
    }

    public byte[] l() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            if (this.n == 3) {
                u.a(dataOutputStream, "MQIsdp");
            } else if (this.n == 4) {
                u.a(dataOutputStream, "MQTT");
            }
            dataOutputStream.write(this.n);
            byte b = 0;
            if (this.f2268h) {
                b = (byte) 2;
            }
            if (this.f2269i != null) {
                b = (byte) (((byte) (b | 4)) | (this.f2269i.f2193c << 3));
                if (this.f2269i.f2194d) {
                    b = (byte) (b | 32);
                }
            }
            if (this.f2270j != null) {
                b = (byte) (b | 128);
                if (this.f2271k != null) {
                    b = (byte) (b | 64);
                }
            }
            dataOutputStream.write(b);
            dataOutputStream.writeShort(this.f2272l);
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            throw new k((Throwable) e2);
        }
    }

    public boolean m() {
        return false;
    }

    public String toString() {
        return String.valueOf(super.toString()) + " clientId " + this.f2267g + " keepAliveInterval " + this.f2272l;
    }

    public d(String str, int i2, boolean z, int i3, String str2, char[] cArr, l lVar, String str3) {
        super((byte) 1);
        this.f2267g = str;
        this.f2268h = z;
        this.f2272l = i3;
        this.f2270j = str2;
        if (cArr != null) {
            this.f2271k = (char[]) cArr.clone();
        }
        this.f2269i = lVar;
        this.m = str3;
        this.n = i2;
    }
}
