package k.c.a.a.a.s.s;

import java.io.InputStream;

public class v extends InputStream {
    public byte[] A;
    public int B;
    public int C;
    public int D = 0;
    public byte[] x;
    public int y;
    public int z;

    public v(byte[] bArr, int i2, int i3, byte[] bArr2, int i4, int i5) {
        this.x = (byte[]) bArr.clone();
        this.A = (byte[]) bArr2.clone();
        this.y = i2;
        this.B = i4;
        this.z = i3;
        this.C = i5;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v1, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v2, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v7, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v8, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v9, resolved type: byte} */
    /* JADX WARNING: Failed to insert additional move for type inference */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int read() {
        /*
            r4 = this;
            int r0 = r4.D
            int r1 = r4.z
            if (r0 >= r1) goto L_0x000e
            byte[] r1 = r4.x
            int r2 = r4.y
            int r2 = r2 + r0
            byte r0 = r1[r2]
            goto L_0x001b
        L_0x000e:
            int r2 = r4.C
            int r2 = r2 + r1
            if (r0 >= r2) goto L_0x0026
            byte[] r2 = r4.A
            int r3 = r4.B
            int r3 = r3 + r0
            int r3 = r3 - r1
            byte r0 = r2[r3]
        L_0x001b:
            if (r0 >= 0) goto L_0x001f
            int r0 = r0 + 256
        L_0x001f:
            int r1 = r4.D
            int r1 = r1 + 1
            r4.D = r1
            return r0
        L_0x0026:
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k.c.a.a.a.s.s.v.read():int");
    }
}
