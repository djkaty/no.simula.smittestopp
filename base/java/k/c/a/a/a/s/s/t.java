package k.c.a.a.a.s.s;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import k.c.a.a.a.k;

public class t extends u {

    /* renamed from: g  reason: collision with root package name */
    public String[] f2280g;

    /* renamed from: h  reason: collision with root package name */
    public int f2281h;

    public t(String[] strArr) {
        super((byte) 10);
        if (strArr != null) {
            this.f2280g = (String[]) strArr.clone();
        }
    }

    public byte j() {
        return (byte) ((this.f2284c ? 8 : 0) | 2);
    }

    public byte[] k() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            for (String a : this.f2280g) {
                u.a(dataOutputStream, a);
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
        for (int i2 = 0; i2 < this.f2281h; i2++) {
            if (i2 > 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append("\"" + this.f2280g[i2] + "\"");
        }
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    public t(byte[] bArr) {
        super((byte) 10);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.b = dataInputStream.readUnsignedShort();
        boolean z = false;
        this.f2281h = 0;
        this.f2280g = new String[10];
        while (!z) {
            try {
                this.f2280g[this.f2281h] = u.a(dataInputStream);
            } catch (Exception unused) {
                z = true;
            }
        }
        dataInputStream.close();
    }
}
