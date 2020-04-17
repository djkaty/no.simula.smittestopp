package k.e.a;

public class b {
    public final String a;
    public byte[] b;

    /* renamed from: c  reason: collision with root package name */
    public b f2333c;

    public static final class a {
        public int a;
        public b[] b = new b[6];

        public void a(b bVar) {
            boolean z;
            while (bVar != null) {
                int i2 = 0;
                while (true) {
                    if (i2 >= this.a) {
                        z = false;
                        break;
                    } else if (this.b[i2].a.equals(bVar.a)) {
                        z = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (!z) {
                    int i3 = this.a;
                    b[] bVarArr = this.b;
                    if (i3 >= bVarArr.length) {
                        b[] bVarArr2 = new b[(bVarArr.length + 6)];
                        System.arraycopy(bVarArr, 0, bVarArr2, 0, i3);
                        this.b = bVarArr2;
                    }
                    b[] bVarArr3 = this.b;
                    int i4 = this.a;
                    this.a = i4 + 1;
                    bVarArr3[i4] = bVar;
                }
                bVar = bVar.f2333c;
            }
        }
    }

    public b(String str) {
        this.a = str;
    }

    public final int a() {
        int i2 = 0;
        for (b bVar = this; bVar != null; bVar = bVar.f2333c) {
            i2++;
        }
        return i2;
    }

    public final int a(x xVar) {
        return a(xVar, (byte[]) null, 0, -1, -1);
    }

    public final int a(x xVar, byte[] bArr, int i2, int i3, int i4) {
        g gVar = xVar.a;
        int i5 = 0;
        for (b bVar = this; bVar != null; bVar = bVar.f2333c) {
            xVar.c(bVar.a);
            i5 += bVar.b.length + 6;
        }
        return i5;
    }

    public final void a(x xVar, c cVar) {
        a(xVar, (byte[]) null, 0, -1, -1, cVar);
    }

    public static int a(x xVar, int i2, int i3) {
        int i4;
        if ((i2 & 4096) == 0 || xVar.f2426c >= 49) {
            i4 = 0;
        } else {
            xVar.c("Synthetic");
            i4 = 6;
        }
        if (i3 != 0) {
            xVar.c("Signature");
            i4 += 8;
        }
        if ((i2 & 131072) == 0) {
            return i4;
        }
        xVar.c("Deprecated");
        return i4 + 6;
    }

    public static void a(x xVar, int i2, int i3, c cVar) {
        if ((i2 & 4096) != 0 && xVar.f2426c < 49) {
            cVar.d(xVar.c("Synthetic"));
            cVar.c(0);
        }
        if (i3 != 0) {
            cVar.d(xVar.c("Signature"));
            cVar.c(2);
            cVar.d(i3);
        }
        if ((i2 & 131072) != 0) {
            cVar.d(xVar.c("Deprecated"));
            cVar.c(0);
        }
    }

    public final void a(x xVar, byte[] bArr, int i2, int i3, int i4, c cVar) {
        g gVar = xVar.a;
        for (b bVar = this; bVar != null; bVar = bVar.f2333c) {
            byte[] bArr2 = bVar.b;
            int length = bArr2.length;
            cVar.d(xVar.c(bVar.a));
            cVar.c(length);
            cVar.a(bArr2, 0, length);
        }
    }
}
