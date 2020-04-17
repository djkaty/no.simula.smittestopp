package k.c.a.a.a.s.s;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import k.c.a.a.a.k;

public class r extends u {

    /* renamed from: g  reason: collision with root package name */
    public String[] f2277g;

    /* renamed from: h  reason: collision with root package name */
    public int[] f2278h;

    /* renamed from: i  reason: collision with root package name */
    public int f2279i;

    public r(byte[] bArr) {
        super((byte) 8);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.b = dataInputStream.readUnsignedShort();
        boolean z = false;
        this.f2279i = 0;
        this.f2277g = new String[10];
        this.f2278h = new int[10];
        while (!z) {
            try {
                this.f2277g[this.f2279i] = u.a(dataInputStream);
                int[] iArr = this.f2278h;
                int i2 = this.f2279i;
                this.f2279i = i2 + 1;
                iArr[i2] = dataInputStream.readByte();
            } catch (Exception unused) {
                z = true;
            }
        }
        dataInputStream.close();
    }

    public byte j() {
        return (byte) ((this.f2284c ? 8 : 0) | 2);
    }

    public byte[] k() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            for (int i2 = 0; i2 < this.f2277g.length; i2++) {
                u.a(dataOutputStream, this.f2277g[i2]);
                dataOutputStream.writeByte(this.f2278h[i2]);
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
            dataOutputStream.writeShort(this.b);
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            throw new k((Throwable) e2);
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(super.toString());
        stringBuffer.append(" names:[");
        for (int i2 = 0; i2 < this.f2279i; i2++) {
            if (i2 > 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append("\"");
            stringBuffer.append(this.f2277g[i2]);
            stringBuffer.append("\"");
        }
        stringBuffer.append("] qos:[");
        for (int i3 = 0; i3 < this.f2279i; i3++) {
            if (i3 > 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(this.f2278h[i3]);
        }
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    public r(String[] strArr, int[] iArr) {
        super((byte) 8);
        if (strArr == null || iArr == null) {
            throw new IllegalArgumentException();
        }
        this.f2277g = (String[]) strArr.clone();
        int[] iArr2 = (int[]) iArr.clone();
        this.f2278h = iArr2;
        if (this.f2277g.length == iArr2.length) {
            this.f2279i = strArr.length;
            for (int i2 : iArr) {
                if (i2 < 0 || i2 > 2) {
                    throw new IllegalArgumentException();
                }
            }
            return;
        }
        throw new IllegalArgumentException();
    }
}
