package k.b.a;

import java.util.Enumeration;
import java.util.Vector;

public class h0 extends p {
    public final int y;
    public final p[] z;

    public class a implements Enumeration {
        public int a = 0;

        public a() {
        }

        public boolean hasMoreElements() {
            return this.a < h0.this.z.length;
        }

        public Object nextElement() {
            p[] pVarArr = h0.this.z;
            int i2 = this.a;
            this.a = i2 + 1;
            return pVarArr[i2];
        }
    }

    public h0(byte[] bArr) {
        super(bArr);
        this.z = null;
        this.y = 1000;
    }

    public static h0 a(u uVar) {
        int size = uVar.size();
        p[] pVarArr = new p[size];
        for (int i2 = 0; i2 < size; i2++) {
            pVarArr[i2] = p.a((Object) uVar.a(i2));
        }
        return new h0(pVarArr);
    }

    public void a(r rVar, boolean z2) {
        Enumeration k2 = k();
        if (z2) {
            rVar.a.write(36);
        }
        rVar.a.write(128);
        rVar.a(k2);
        rVar.a.write(0);
        rVar.a.write(0);
    }

    public int f() {
        Enumeration k2 = k();
        int i2 = 0;
        while (k2.hasMoreElements()) {
            i2 += ((e) k2.nextElement()).c().f();
        }
        return i2 + 2 + 2;
    }

    public boolean g() {
        return true;
    }

    public byte[] j() {
        return this.x;
    }

    public Enumeration k() {
        if (this.z != null) {
            return new a();
        }
        Vector vector = new Vector();
        int i2 = 0;
        while (true) {
            byte[] bArr = this.x;
            if (i2 >= bArr.length) {
                return vector.elements();
            }
            int i3 = this.y + i2;
            if (i3 > bArr.length) {
                i3 = bArr.length;
            }
            int i4 = i3 - i2;
            byte[] bArr2 = new byte[i4];
            System.arraycopy(this.x, i2, bArr2, 0, i4);
            vector.addElement(new a1(bArr2));
            i2 += this.y;
        }
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public h0(k.b.a.p[] r4) {
        /*
            r3 = this;
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream
            r0.<init>()
            r1 = 0
        L_0x0006:
            int r2 = r4.length
            if (r1 == r2) goto L_0x004e
            r2 = r4[r1]     // Catch:{ ClassCastException -> 0x002d, IOException -> 0x0015 }
            k.b.a.a1 r2 = (k.b.a.a1) r2     // Catch:{ ClassCastException -> 0x002d, IOException -> 0x0015 }
            byte[] r2 = r2.x     // Catch:{ ClassCastException -> 0x002d, IOException -> 0x0015 }
            r0.write(r2)     // Catch:{ ClassCastException -> 0x002d, IOException -> 0x0015 }
            int r1 = r1 + 1
            goto L_0x0006
        L_0x0015:
            r4 = move-exception
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "exception converting octets "
            java.lang.StringBuilder r1 = e.a.a.a.a.a(r1)
            java.lang.String r4 = r4.toString()
            r1.append(r4)
            java.lang.String r4 = r1.toString()
            r0.<init>(r4)
            throw r0
        L_0x002d:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r4 = r4[r1]
            java.lang.Class r4 = r4.getClass()
            java.lang.String r4 = r4.getName()
            r2.append(r4)
            java.lang.String r4 = " found in input should only contain DEROctetString"
            r2.append(r4)
            java.lang.String r4 = r2.toString()
            r0.<init>(r4)
            throw r0
        L_0x004e:
            byte[] r0 = r0.toByteArray()
            r3.<init>(r0)
            r3.z = r4
            r4 = 1000(0x3e8, float:1.401E-42)
            r3.y = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.b.a.h0.<init>(k.b.a.p[]):void");
    }
}
