package k.c.a.a.a.s.s;

import com.microsoft.azure.proton.transport.proxy.impl.Constants;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import k.b.c.e.a;
import k.c.a.a.a.k;
import k.c.a.a.a.m;
import k.c.a.a.a.q;

public abstract class u {

    /* renamed from: e  reason: collision with root package name */
    public static final Charset f2282e = StandardCharsets.UTF_8;

    /* renamed from: f  reason: collision with root package name */
    public static final String[] f2283f = {"reserved", Constants.CONNECT, "CONNACK", "PUBLISH", "PUBACK", "PUBREC", "PUBREL", "PUBCOMP", "SUBSCRIBE", "SUBACK", "UNSUBSCRIBE", "UNSUBACK", "PINGREQ", "PINGRESP", "DISCONNECT"};
    public byte a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f2284c = false;

    /* renamed from: d  reason: collision with root package name */
    public q f2285d;

    public u(byte b2) {
        this.a = b2;
        this.b = 0;
    }

    public static w b(DataInputStream dataInputStream) {
        byte readByte;
        int i2 = 0;
        int i3 = 0;
        int i4 = 1;
        do {
            readByte = dataInputStream.readByte();
            i2++;
            i3 += (readByte & Byte.MAX_VALUE) * i4;
            i4 *= 128;
        } while ((readByte & 128) != 0);
        if (i3 >= 0 && i3 <= 268435455) {
            return new w(i3, i2);
        }
        throw new IOException("This property must be a number between 0 and 268435455. Read value was: " + i3);
    }

    public void a(int i2) {
        this.b = i2;
    }

    public byte[] g() {
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

    public byte[] h() {
        try {
            byte j2 = ((this.a & 15) << 4) ^ (j() & 15);
            byte[] l2 = l();
            int length = l2.length + k().length;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeByte(j2);
            dataOutputStream.write(a((long) length));
            dataOutputStream.write(l2);
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            throw new k((Throwable) e2);
        }
    }

    public String i() {
        return Integer.toString(this.b);
    }

    public abstract byte j();

    public byte[] k() {
        return new byte[0];
    }

    public abstract byte[] l();

    public boolean m() {
        return true;
    }

    public String toString() {
        return f2283f[this.a];
    }

    public static u a(m mVar) {
        byte[] d2 = mVar.d();
        if (d2 == null) {
            d2 = new byte[0];
        }
        return a((InputStream) new v(mVar.c(), mVar.b(), mVar.f(), d2, mVar.e(), mVar.a()));
    }

    public static u a(byte[] bArr) {
        return a((InputStream) new ByteArrayInputStream(bArr));
    }

    public static u a(InputStream inputStream) {
        try {
            a aVar = new a(inputStream);
            DataInputStream dataInputStream = new DataInputStream(aVar);
            int readUnsignedByte = dataInputStream.readUnsignedByte();
            byte b2 = (byte) (readUnsignedByte >> 4);
            byte b3 = (byte) (readUnsignedByte & 15);
            long j2 = (((long) aVar.y) + ((long) b(dataInputStream).a)) - ((long) aVar.y);
            byte[] bArr = new byte[0];
            if (j2 > 0) {
                int i2 = (int) j2;
                byte[] bArr2 = new byte[i2];
                dataInputStream.readFully(bArr2, 0, i2);
                bArr = bArr2;
            }
            if (b2 == 1) {
                return new d(bArr);
            }
            if (b2 == 3) {
                return new o(b3, bArr);
            }
            if (b2 == 4) {
                return new k(bArr);
            }
            if (b2 == 7) {
                return new l(bArr);
            }
            if (b2 == 2) {
                return new c(bArr);
            }
            if (b2 == 12) {
                return new i(b3, bArr);
            }
            if (b2 == 13) {
                return new j();
            }
            if (b2 == 8) {
                return new r(bArr);
            }
            if (b2 == 9) {
                return new q(bArr);
            }
            if (b2 == 10) {
                return new t(bArr);
            }
            if (b2 == 11) {
                return new s(bArr);
            }
            if (b2 == 6) {
                return new n(bArr);
            }
            if (b2 == 5) {
                return new m(bArr);
            }
            if (b2 == 14) {
                return new e(b3, bArr);
            }
            throw a.a(6);
        } catch (IOException e2) {
            throw new k((Throwable) e2);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:7:0x001b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static byte[] a(long r6) {
        /*
            int r0 = (int) r6
            if (r0 < 0) goto L_0x002d
            r1 = 268435455(0xfffffff, float:2.5243547E-29)
            if (r0 > r1) goto L_0x002d
            r0 = 0
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream
            r1.<init>()
        L_0x000e:
            r2 = 128(0x80, double:6.32E-322)
            long r4 = r6 % r2
            int r5 = (int) r4
            byte r4 = (byte) r5
            long r6 = r6 / r2
            r2 = 0
            int r5 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r5 <= 0) goto L_0x001e
            r2 = r4 | 128(0x80, float:1.794E-43)
            byte r4 = (byte) r2
        L_0x001e:
            r1.write(r4)
            int r0 = r0 + 1
            if (r5 <= 0) goto L_0x0028
            r2 = 4
            if (r0 < r2) goto L_0x000e
        L_0x0028:
            byte[] r6 = r1.toByteArray()
            return r6
        L_0x002d:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            java.lang.String r7 = "This property must be a number between 0 and 268435455"
            r6.<init>(r7)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: k.c.a.a.a.s.s.u.a(long):byte[]");
    }

    public static void a(DataOutputStream dataOutputStream, String str) {
        a(str);
        try {
            byte[] bytes = str.getBytes(f2282e);
            dataOutputStream.write((byte) ((bytes.length >>> 8) & 255));
            dataOutputStream.write((byte) ((bytes.length >>> 0) & 255));
            dataOutputStream.write(bytes);
        } catch (UnsupportedEncodingException e2) {
            throw new k((Throwable) e2);
        } catch (IOException e3) {
            throw new k((Throwable) e3);
        }
    }

    public static String a(DataInputStream dataInputStream) {
        try {
            byte[] bArr = new byte[dataInputStream.readUnsignedShort()];
            dataInputStream.readFully(bArr);
            String str = new String(bArr, f2282e);
            a(str);
            return str;
        } catch (IOException e2) {
            throw new k((Throwable) e2);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0038, code lost:
        if (r3 != 65534) goto L_0x0057;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0054, code lost:
        if (r2 > 64991) goto L_0x0057;
     */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x005c A[LOOP:0: B:1:0x0002->B:26:0x005c, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x005e A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(java.lang.String r7) {
        /*
            r0 = 0
            r1 = 0
        L_0x0002:
            int r2 = r7.length()
            if (r1 < r2) goto L_0x0009
            return
        L_0x0009:
            char r2 = r7.charAt(r1)
            boolean r3 = java.lang.Character.isHighSurrogate(r2)
            r4 = 65534(0xfffe, float:9.1833E-41)
            r5 = 1
            if (r3 == 0) goto L_0x003b
            int r1 = r1 + 1
            int r3 = r7.length()
            if (r1 != r3) goto L_0x0020
            goto L_0x0059
        L_0x0020:
            char r3 = r7.charAt(r1)
            boolean r6 = java.lang.Character.isLowSurrogate(r3)
            if (r6 == 0) goto L_0x002b
            goto L_0x0059
        L_0x002b:
            r6 = r2 & 1023(0x3ff, float:1.434E-42)
            int r6 = r6 << 10
            r3 = r3 & 1023(0x3ff, float:1.434E-42)
            r3 = r3 | r6
            r6 = 65535(0xffff, float:9.1834E-41)
            r3 = r3 & r6
            if (r3 == r6) goto L_0x0059
            if (r3 != r4) goto L_0x0057
            goto L_0x0059
        L_0x003b:
            boolean r3 = java.lang.Character.isISOControl(r2)
            if (r3 != 0) goto L_0x0059
            boolean r3 = java.lang.Character.isLowSurrogate(r2)
            if (r3 == 0) goto L_0x0048
            goto L_0x0059
        L_0x0048:
            r3 = 64976(0xfdd0, float:9.1051E-41)
            if (r2 < r3) goto L_0x0057
            if (r2 == r4) goto L_0x0059
            if (r2 >= r3) goto L_0x0059
            r3 = 64991(0xfddf, float:9.1072E-41)
            if (r2 > r3) goto L_0x0057
            goto L_0x0059
        L_0x0057:
            r3 = 0
            goto L_0x005a
        L_0x0059:
            r3 = 1
        L_0x005a:
            if (r3 != 0) goto L_0x005e
            int r1 = r1 + r5
            goto L_0x0002
        L_0x005e:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            java.lang.Object[] r1 = new java.lang.Object[r5]
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r1[r0] = r2
            java.lang.String r0 = "Invalid UTF-8 char: [%x]"
            java.lang.String r0 = java.lang.String.format(r0, r1)
            r7.<init>(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: k.c.a.a.a.s.s.u.a(java.lang.String):void");
    }
}
