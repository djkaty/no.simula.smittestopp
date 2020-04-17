package k.b.a;

import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class o extends t {
    public static final ConcurrentMap<a, o> z = new ConcurrentHashMap();
    public final String x;
    public byte[] y;

    public static class a {
        public final int a;
        public final byte[] b;

        public a(byte[] bArr) {
            this.a = k.b.c.e.a.d(bArr);
            this.b = bArr;
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                return Arrays.equals(this.b, ((a) obj).b);
            }
            return false;
        }

        public int hashCode() {
            return this.a;
        }
    }

    public o(String str) {
        char charAt;
        if (str != null) {
            boolean z2 = false;
            if (str.length() >= 3 && str.charAt(1) == '.' && (charAt = str.charAt(0)) >= '0' && charAt <= '2') {
                z2 = a(str, 2);
            }
            if (z2) {
                this.x = str;
                return;
            }
            throw new IllegalArgumentException(e.a.a.a.a.a("string ", str, " not an OID"));
        }
        throw new NullPointerException("'identifier' cannot be null");
    }

    public o(byte[] bArr) {
        byte[] bArr2 = bArr;
        StringBuffer stringBuffer = new StringBuffer();
        boolean z2 = true;
        long j2 = 0;
        BigInteger bigInteger = null;
        for (int i2 = 0; i2 != bArr2.length; i2++) {
            byte b = bArr2[i2] & 255;
            if (j2 <= 72057594037927808L) {
                long j3 = j2 + ((long) (b & Byte.MAX_VALUE));
                if ((b & 128) == 0) {
                    if (z2) {
                        if (j3 < 40) {
                            stringBuffer.append('0');
                        } else if (j3 < 80) {
                            stringBuffer.append('1');
                            j3 -= 40;
                        } else {
                            stringBuffer.append('2');
                            j3 -= 80;
                        }
                        z2 = false;
                    }
                    stringBuffer.append('.');
                    stringBuffer.append(j3);
                    j2 = 0;
                } else {
                    j2 = j3 << 7;
                }
            } else {
                BigInteger or = (bigInteger == null ? BigInteger.valueOf(j2) : bigInteger).or(BigInteger.valueOf((long) (b & Byte.MAX_VALUE)));
                if ((b & 128) == 0) {
                    if (z2) {
                        stringBuffer.append('2');
                        or = or.subtract(BigInteger.valueOf(80));
                        z2 = false;
                    }
                    stringBuffer.append('.');
                    stringBuffer.append(or);
                    j2 = 0;
                    bigInteger = null;
                } else {
                    bigInteger = or.shiftLeft(7);
                }
            }
        }
        this.x = stringBuffer.toString();
        this.y = k.b.c.e.a.a(bArr);
    }

    public static o a(Object obj) {
        if (obj == null || (obj instanceof o)) {
            return (o) obj;
        }
        if (obj instanceof e) {
            t c2 = ((e) obj).c();
            if (c2 instanceof o) {
                return (o) c2;
            }
        }
        if (obj instanceof byte[]) {
            try {
                return (o) t.a((byte[]) obj);
            } catch (IOException e2) {
                StringBuilder a2 = e.a.a.a.a.a("failed to construct object identifier from byte[]: ");
                a2.append(e2.getMessage());
                throw new IllegalArgumentException(a2.toString());
            }
        } else {
            throw new IllegalArgumentException(e.a.a.a.a.a(obj, e.a.a.a.a.a("illegal object in getInstance: ")));
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x0015, code lost:
        if (r2 == 0) goto L_0x0021;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x0017, code lost:
        if (r2 <= 1) goto L_0x0005;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x001f, code lost:
        if (r7.charAt(r0 + 1) != '0') goto L_0x0005;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean a(java.lang.String r7, int r8) {
        /*
            int r0 = r7.length()
            r1 = 0
        L_0x0005:
            r2 = 0
        L_0x0006:
            int r0 = r0 + -1
            r3 = 48
            r4 = 1
            if (r0 < r8) goto L_0x002c
            char r5 = r7.charAt(r0)
            r6 = 46
            if (r5 != r6) goto L_0x0022
            if (r2 == 0) goto L_0x0021
            if (r2 <= r4) goto L_0x0005
            int r2 = r0 + 1
            char r2 = r7.charAt(r2)
            if (r2 != r3) goto L_0x0005
        L_0x0021:
            return r1
        L_0x0022:
            if (r3 > r5) goto L_0x002b
            r3 = 57
            if (r5 > r3) goto L_0x002b
            int r2 = r2 + 1
            goto L_0x0006
        L_0x002b:
            return r1
        L_0x002c:
            if (r2 == 0) goto L_0x0039
            if (r2 <= r4) goto L_0x0038
            int r0 = r0 + r4
            char r7 = r7.charAt(r0)
            if (r7 != r3) goto L_0x0038
            goto L_0x0039
        L_0x0038:
            return r4
        L_0x0039:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: k.b.a.o.a(java.lang.String, int):boolean");
    }

    public static o b(byte[] bArr) {
        o oVar = (o) z.get(new a(bArr));
        return oVar == null ? new o(bArr) : oVar;
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:47)
        	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:81)
        */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x005a A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:7:0x003d  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x003f  */
    public final void a(java.io.ByteArrayOutputStream r8) {
        /*
            r7 = this;
            k.b.a.c2 r0 = new k.b.a.c2
            java.lang.String r1 = r7.x
            r0.<init>(r1)
            java.lang.String r1 = r0.a()
            int r1 = java.lang.Integer.parseInt(r1)
            int r1 = r1 * 40
            java.lang.String r2 = r0.a()
            int r3 = r2.length()
            r4 = 18
            if (r3 > r4) goto L_0x0027
            long r5 = (long) r1
            long r1 = java.lang.Long.parseLong(r2)
            long r1 = r1 + r5
        L_0x0023:
            r7.a((java.io.ByteArrayOutputStream) r8, (long) r1)
            goto L_0x0038
        L_0x0027:
            java.math.BigInteger r3 = new java.math.BigInteger
            r3.<init>(r2)
            long r1 = (long) r1
            java.math.BigInteger r1 = java.math.BigInteger.valueOf(r1)
            java.math.BigInteger r1 = r3.add(r1)
            r7.a((java.io.ByteArrayOutputStream) r8, (java.math.BigInteger) r1)
        L_0x0038:
            int r1 = r0.b
            r2 = -1
            if (r1 == r2) goto L_0x003f
            r1 = 1
            goto L_0x0040
        L_0x003f:
            r1 = 0
        L_0x0040:
            if (r1 == 0) goto L_0x005a
            java.lang.String r1 = r0.a()
            int r2 = r1.length()
            if (r2 > r4) goto L_0x0051
            long r1 = java.lang.Long.parseLong(r1)
            goto L_0x0023
        L_0x0051:
            java.math.BigInteger r2 = new java.math.BigInteger
            r2.<init>(r1)
            r7.a((java.io.ByteArrayOutputStream) r8, (java.math.BigInteger) r2)
            goto L_0x0038
        L_0x005a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.b.a.o.a(java.io.ByteArrayOutputStream):void");
    }

    public final void a(ByteArrayOutputStream byteArrayOutputStream, long j2) {
        byte[] bArr = new byte[9];
        int i2 = 8;
        bArr[8] = (byte) (((int) j2) & 127);
        while (j2 >= 128) {
            j2 >>= 7;
            i2--;
            bArr[i2] = (byte) ((((int) j2) & 127) | 128);
        }
        byteArrayOutputStream.write(bArr, i2, 9 - i2);
    }

    public final void a(ByteArrayOutputStream byteArrayOutputStream, BigInteger bigInteger) {
        int bitLength = (bigInteger.bitLength() + 6) / 7;
        if (bitLength == 0) {
            byteArrayOutputStream.write(0);
            return;
        }
        byte[] bArr = new byte[bitLength];
        int i2 = bitLength - 1;
        for (int i3 = i2; i3 >= 0; i3--) {
            bArr[i3] = (byte) ((bigInteger.intValue() & 127) | 128);
            bigInteger = bigInteger.shiftRight(7);
        }
        bArr[i2] = (byte) (bArr[i2] & Byte.MAX_VALUE);
        byteArrayOutputStream.write(bArr, 0, bitLength);
    }

    public void a(r rVar, boolean z2) {
        rVar.a(z2, 6, j());
    }

    public boolean a(t tVar) {
        if (tVar == this) {
            return true;
        }
        if (!(tVar instanceof o)) {
            return false;
        }
        return this.x.equals(((o) tVar).x);
    }

    public int f() {
        int length = j().length;
        return d2.a(length) + 1 + length;
    }

    public boolean g() {
        return false;
    }

    public int hashCode() {
        return this.x.hashCode();
    }

    public final synchronized byte[] j() {
        if (this.y == null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            a(byteArrayOutputStream);
            this.y = byteArrayOutputStream.toByteArray();
        }
        return this.y;
    }

    public o k() {
        a aVar = new a(j());
        o oVar = (o) z.get(aVar);
        if (oVar != null) {
            return oVar;
        }
        o putIfAbsent = z.putIfAbsent(aVar, this);
        return putIfAbsent == null ? this : putIfAbsent;
    }

    public String toString() {
        return this.x;
    }

    public o(o oVar, String str) {
        if (a(str, 0)) {
            this.x = e.a.a.a.a.a(new StringBuilder(), oVar.x, CryptoConstants.ALIAS_SEPARATOR, str);
            return;
        }
        throw new IllegalArgumentException(e.a.a.a.a.a("string ", str, " not a valid OID branch"));
    }

    public static o a(b0 b0Var, boolean z2) {
        t j2 = b0Var.j();
        if (z2 || (j2 instanceof o)) {
            return a((Object) j2);
        }
        byte[] j3 = p.a((Object) j2).j();
        o oVar = (o) z.get(new a(j3));
        return oVar == null ? new o(j3) : oVar;
    }
}
