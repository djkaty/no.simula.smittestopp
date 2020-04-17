package k.c.a.a.a.s.s;

import com.microsoft.identity.client.internal.MsalUtils;
import com.microsoft.identity.common.internal.eststelemetry.Schema;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import k.c.a.a.a.k;
import k.c.a.a.a.l;

public class o extends h {

    /* renamed from: g  reason: collision with root package name */
    public l f2273g;

    /* renamed from: h  reason: collision with root package name */
    public String f2274h;

    /* renamed from: i  reason: collision with root package name */
    public byte[] f2275i = null;

    public o(String str, l lVar) {
        super((byte) 3);
        this.f2274h = str;
        this.f2273g = lVar;
    }

    public void a(int i2) {
        this.b = i2;
        l lVar = this.f2273g;
        if (lVar instanceof p) {
            ((p) lVar).f2196f = i2;
        }
    }

    public byte j() {
        l lVar = this.f2273g;
        byte b = (byte) (lVar.f2193c << 1);
        if (lVar.f2194d) {
            b = (byte) (b | 1);
        }
        return (this.f2273g.f2195e || this.f2284c) ? (byte) (b | 8) : b;
    }

    public byte[] k() {
        if (this.f2275i == null) {
            this.f2275i = this.f2273g.b;
        }
        return this.f2275i;
    }

    public byte[] l() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            u.a(dataOutputStream, this.f2274h);
            if (this.f2273g.f2193c > 0) {
                dataOutputStream.writeShort(this.b);
            }
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            throw new k((Throwable) e2);
        }
    }

    public boolean m() {
        return true;
    }

    public String toString() {
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        byte[] bArr = this.f2273g.b;
        int min = Math.min(bArr.length, 20);
        for (int i2 = 0; i2 < min; i2++) {
            String hexString = Integer.toHexString(bArr[i2]);
            if (hexString.length() == 1) {
                hexString = Schema.Value.FALSE + hexString;
            }
            stringBuffer.append(hexString);
        }
        try {
            str = new String(bArr, 0, min, "UTF-8");
        } catch (Exception unused) {
            str = MsalUtils.QUERY_STRING_SYMBOL;
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(super.toString());
        stringBuffer2.append(" qos:");
        stringBuffer2.append(this.f2273g.f2193c);
        if (this.f2273g.f2193c > 0) {
            stringBuffer2.append(" msgId:");
            stringBuffer2.append(this.b);
        }
        stringBuffer2.append(" retained:");
        stringBuffer2.append(this.f2273g.f2194d);
        stringBuffer2.append(" dup:");
        stringBuffer2.append(this.f2284c);
        stringBuffer2.append(" topic:\"");
        stringBuffer2.append(this.f2274h);
        stringBuffer2.append("\"");
        stringBuffer2.append(" payload:[hex:");
        stringBuffer2.append(stringBuffer);
        stringBuffer2.append(" utf8:\"");
        stringBuffer2.append(str);
        stringBuffer2.append("\"");
        stringBuffer2.append(" length:");
        stringBuffer2.append(bArr.length);
        stringBuffer2.append("]");
        return stringBuffer2.toString();
    }

    public o(byte b, byte[] bArr) {
        super((byte) 3);
        p pVar = new p();
        this.f2273g = pVar;
        pVar.a(3 & (b >> 1));
        if ((b & 1) == 1) {
            l lVar = this.f2273g;
            lVar.a();
            lVar.f2194d = true;
        }
        if ((b & 8) == 8) {
            ((p) this.f2273g).f2195e = true;
        }
        a aVar = new a(new ByteArrayInputStream(bArr));
        DataInputStream dataInputStream = new DataInputStream(aVar);
        this.f2274h = u.a(dataInputStream);
        if (this.f2273g.f2193c > 0) {
            this.b = dataInputStream.readUnsignedShort();
        }
        byte[] bArr2 = new byte[(bArr.length - aVar.y)];
        dataInputStream.readFully(bArr2);
        dataInputStream.close();
        this.f2273g.a(bArr2);
    }

    public int a() {
        try {
            return k().length;
        } catch (k unused) {
            return 0;
        }
    }
}
