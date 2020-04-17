package e.b.a.a.p;

import java.io.CharConversionException;
import java.io.InputStream;
import java.io.Reader;

public class h extends Reader {
    public int A;
    public int B;
    public final boolean C;
    public char D = 0;
    public int E;
    public int F;
    public final boolean G;
    public char[] H;
    public final b x;
    public InputStream y;
    public byte[] z;

    public h(b bVar, InputStream inputStream, byte[] bArr, int i2, int i3, boolean z2) {
        boolean z3 = false;
        this.x = bVar;
        this.y = inputStream;
        this.z = bArr;
        this.A = i2;
        this.B = i3;
        this.C = z2;
        this.G = inputStream != null ? true : z3;
    }

    public final void a(int i2, int i3) {
        int i4 = this.E;
        throw new CharConversionException("Unexpected EOF in the middle of a 4-byte UTF-32 char: got " + i2 + ", needed " + i3 + ", at char #" + i4 + ", byte #" + (this.F + i2) + ")");
    }

    public void close() {
        InputStream inputStream = this.y;
        if (inputStream != null) {
            this.y = null;
            a();
            inputStream.close();
        }
    }

    public int read() {
        if (this.H == null) {
            this.H = new char[1];
        }
        if (read(this.H, 0, 1) < 1) {
            return -1;
        }
        return this.H[0];
    }

    public final void a() {
        byte[] bArr = this.z;
        if (bArr != null) {
            this.z = null;
            this.x.a(bArr);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:35:0x0063  */
    /* JADX WARNING: Removed duplicated region for block: B:81:0x008e A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int read(char[] r13, int r14, int r15) {
        /*
            r12 = this;
            byte[] r0 = r12.z
            r1 = -1
            if (r0 != 0) goto L_0x0006
            return r1
        L_0x0006:
            r2 = 1
            if (r15 >= r2) goto L_0x000a
            return r15
        L_0x000a:
            if (r14 < 0) goto L_0x016b
            int r3 = r14 + r15
            int r4 = r13.length
            if (r3 > r4) goto L_0x016b
            char r15 = r12.D
            r4 = 0
            r5 = 4
            if (r15 == 0) goto L_0x001f
            int r0 = r14 + 1
            r13[r14] = r15
            r12.D = r4
            goto L_0x009e
        L_0x001f:
            int r15 = r12.B
            int r6 = r12.A
            int r7 = r15 - r6
            if (r7 >= r5) goto L_0x009d
            int r8 = r12.F
            int r15 = r15 - r7
            int r15 = r15 + r8
            r12.F = r15
            java.lang.String r15 = "Strange I/O stream, returned 0 bytes on read"
            r8 = 0
            if (r7 <= 0) goto L_0x003c
            if (r6 <= 0) goto L_0x0039
            java.lang.System.arraycopy(r0, r6, r0, r4, r7)
            r12.A = r4
        L_0x0039:
            r12.B = r7
            goto L_0x005f
        L_0x003c:
            r12.A = r4
            java.io.InputStream r6 = r12.y
            if (r6 != 0) goto L_0x0044
            r0 = -1
            goto L_0x0048
        L_0x0044:
            int r0 = r6.read(r0)
        L_0x0048:
            if (r0 >= r2) goto L_0x005d
            r12.B = r4
            if (r0 >= 0) goto L_0x0057
            boolean r15 = r12.G
            if (r15 == 0) goto L_0x0055
            r12.a()
        L_0x0055:
            r15 = 0
            goto L_0x008f
        L_0x0057:
            java.io.IOException r13 = new java.io.IOException
            r13.<init>(r15)
            throw r13
        L_0x005d:
            r12.B = r0
        L_0x005f:
            int r0 = r12.B
            if (r0 >= r5) goto L_0x008e
            java.io.InputStream r6 = r12.y
            if (r6 != 0) goto L_0x0069
            r0 = -1
            goto L_0x0071
        L_0x0069:
            byte[] r9 = r12.z
            int r10 = r9.length
            int r10 = r10 - r0
            int r0 = r6.read(r9, r0, r10)
        L_0x0071:
            if (r0 >= r2) goto L_0x0088
            if (r0 >= 0) goto L_0x0082
            boolean r13 = r12.G
            if (r13 == 0) goto L_0x007c
            r12.a()
        L_0x007c:
            int r13 = r12.B
            r12.a(r13, r5)
            throw r8
        L_0x0082:
            java.io.IOException r13 = new java.io.IOException
            r13.<init>(r15)
            throw r13
        L_0x0088:
            int r6 = r12.B
            int r6 = r6 + r0
            r12.B = r6
            goto L_0x005f
        L_0x008e:
            r15 = 1
        L_0x008f:
            if (r15 != 0) goto L_0x009d
            if (r7 != 0) goto L_0x0094
            return r1
        L_0x0094:
            int r13 = r12.B
            int r14 = r12.A
            int r13 = r13 - r14
            r12.a(r13, r5)
            throw r8
        L_0x009d:
            r0 = r14
        L_0x009e:
            int r15 = r12.B
            int r15 = r15 - r5
        L_0x00a1:
            if (r0 >= r3) goto L_0x0164
            int r6 = r12.A
            boolean r7 = r12.C
            if (r7 == 0) goto L_0x00c6
            byte[] r7 = r12.z
            byte r8 = r7[r6]
            int r8 = r8 << 8
            int r9 = r6 + 1
            byte r9 = r7[r9]
            r9 = r9 & 255(0xff, float:3.57E-43)
            r8 = r8 | r9
            int r9 = r6 + 2
            byte r9 = r7[r9]
            r9 = r9 & 255(0xff, float:3.57E-43)
            int r9 = r9 << 8
            int r6 = r6 + 3
            byte r6 = r7[r6]
            r6 = r6 & 255(0xff, float:3.57E-43)
            r6 = r6 | r9
            goto L_0x00e5
        L_0x00c6:
            byte[] r7 = r12.z
            byte r8 = r7[r6]
            r8 = r8 & 255(0xff, float:3.57E-43)
            int r9 = r6 + 1
            byte r9 = r7[r9]
            r9 = r9 & 255(0xff, float:3.57E-43)
            int r9 = r9 << 8
            r8 = r8 | r9
            int r9 = r6 + 2
            byte r9 = r7[r9]
            r9 = r9 & 255(0xff, float:3.57E-43)
            int r6 = r6 + 3
            byte r6 = r7[r6]
            int r6 = r6 << 8
            r6 = r6 | r9
            r11 = r8
            r8 = r6
            r6 = r11
        L_0x00e5:
            int r7 = r12.A
            int r7 = r7 + r5
            r12.A = r7
            if (r8 == 0) goto L_0x0156
            r7 = 65535(0xffff, float:9.1834E-41)
            r7 = r7 & r8
            int r8 = r7 + -1
            r9 = 16
            int r8 = r8 << r9
            r6 = r6 | r8
            if (r7 > r9) goto L_0x0112
            int r7 = r0 + 1
            r8 = 55296(0xd800, float:7.7486E-41)
            int r9 = r6 >> 10
            int r9 = r9 + r8
            char r8 = (char) r9
            r13[r0] = r8
            r0 = 56320(0xdc00, float:7.8921E-41)
            r8 = r6 & 1023(0x3ff, float:1.434E-42)
            r0 = r0 | r8
            if (r7 < r3) goto L_0x010f
            char r13 = (char) r6
            r12.D = r13
            goto L_0x015f
        L_0x010f:
            r6 = r0
            r0 = r7
            goto L_0x0156
        L_0x0112:
            int r0 = r0 - r14
            java.lang.Object[] r13 = new java.lang.Object[r2]
            r14 = 1114111(0x10ffff, float:1.561202E-39)
            java.lang.Integer r14 = java.lang.Integer.valueOf(r14)
            r13[r4] = r14
            java.lang.String r14 = " (above 0x%08x)"
            java.lang.String r13 = java.lang.String.format(r14, r13)
            int r14 = r12.F
            int r15 = r12.A
            int r14 = r14 + r15
            int r14 = r14 + r1
            int r15 = r12.E
            int r15 = r15 + r0
            java.io.CharConversionException r0 = new java.io.CharConversionException
            java.lang.String r1 = "Invalid UTF-32 character 0x"
            java.lang.StringBuilder r1 = e.a.a.a.a.a(r1)
            java.lang.String r2 = java.lang.Integer.toHexString(r6)
            r1.append(r2)
            r1.append(r13)
            java.lang.String r13 = " at char #"
            r1.append(r13)
            r1.append(r15)
            java.lang.String r13 = ", byte #"
            r1.append(r13)
            java.lang.String r13 = ")"
            java.lang.String r13 = e.a.a.a.a.a((java.lang.StringBuilder) r1, (int) r14, (java.lang.String) r13)
            r0.<init>(r13)
            throw r0
        L_0x0156:
            int r7 = r0 + 1
            char r6 = (char) r6
            r13[r0] = r6
            int r0 = r12.A
            if (r0 <= r15) goto L_0x0161
        L_0x015f:
            r0 = r7
            goto L_0x0164
        L_0x0161:
            r0 = r7
            goto L_0x00a1
        L_0x0164:
            int r0 = r0 - r14
            int r13 = r12.E
            int r13 = r13 + r0
            r12.E = r13
            return r0
        L_0x016b:
            java.lang.ArrayIndexOutOfBoundsException r0 = new java.lang.ArrayIndexOutOfBoundsException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "read(buf,"
            r1.append(r2)
            r1.append(r14)
            java.lang.String r14 = ","
            r1.append(r14)
            r1.append(r15)
            java.lang.String r14 = "), cbuf["
            r1.append(r14)
            int r13 = r13.length
            java.lang.String r14 = "]"
            java.lang.String r13 = e.a.a.a.a.a((java.lang.StringBuilder) r1, (int) r13, (java.lang.String) r14)
            r0.<init>(r13)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: e.b.a.a.p.h.read(char[], int, int):int");
    }
}
