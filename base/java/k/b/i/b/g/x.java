package k.b.i.b.g;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;

public final class x extends p {
    public final w b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f2161c;

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f2162d;

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f2163e;

    /* renamed from: f  reason: collision with root package name */
    public final byte[] f2164f;

    /* renamed from: g  reason: collision with root package name */
    public volatile a f2165g;

    public static class b {
        public final w a;
        public int b = 0;

        /* renamed from: c  reason: collision with root package name */
        public int f2166c = -1;

        /* renamed from: d  reason: collision with root package name */
        public byte[] f2167d = null;

        /* renamed from: e  reason: collision with root package name */
        public byte[] f2168e = null;

        /* renamed from: f  reason: collision with root package name */
        public byte[] f2169f = null;

        /* renamed from: g  reason: collision with root package name */
        public byte[] f2170g = null;

        /* renamed from: h  reason: collision with root package name */
        public a f2171h = null;

        /* renamed from: i  reason: collision with root package name */
        public byte[] f2172i = null;

        public b(w wVar) {
            this.a = wVar;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:69:0x0148  */
    /* JADX WARNING: Removed duplicated region for block: B:76:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public /* synthetic */ x(k.b.i.b.g.x.b r11, k.b.i.b.g.x.a r12) {
        /*
            r10 = this;
            k.b.i.b.g.w r12 = r11.a
            java.lang.String r12 = r12.f2158f
            r0 = 1
            r10.<init>(r0, r12)
            k.b.i.b.g.w r12 = r11.a
            r10.b = r12
            if (r12 == 0) goto L_0x0151
            int r1 = r12.f2159g
            byte[] r2 = r11.f2172i
            r3 = 0
            if (r2 == 0) goto L_0x0085
            int r12 = r12.b
            int r0 = k.b.c.e.a.b(r2, r3)
            long r3 = (long) r0
            boolean r12 = k.b.c.e.a.a((int) r12, (long) r3)
            if (r12 == 0) goto L_0x007d
            r12 = 4
            byte[] r12 = k.b.c.e.a.b((byte[]) r2, (int) r12, (int) r1)
            r10.f2161c = r12
            int r12 = r1 + 4
            byte[] r3 = k.b.c.e.a.b((byte[]) r2, (int) r12, (int) r1)
            r10.f2162d = r3
            int r12 = r12 + r1
            byte[] r3 = k.b.c.e.a.b((byte[]) r2, (int) r12, (int) r1)
            r10.f2163e = r3
            int r12 = r12 + r1
            byte[] r3 = k.b.c.e.a.b((byte[]) r2, (int) r12, (int) r1)
            r10.f2164f = r3
            int r12 = r12 + r1
            int r1 = r2.length
            int r1 = r1 - r12
            byte[] r12 = k.b.c.e.a.b((byte[]) r2, (int) r12, (int) r1)
            java.lang.Class<k.b.i.b.g.a> r1 = k.b.i.b.g.a.class
            java.lang.Object r12 = k.b.c.e.a.a((byte[]) r12, (java.lang.Class) r1)     // Catch:{ IOException -> 0x0072, ClassNotFoundException -> 0x0067 }
            k.b.i.b.g.a r12 = (k.b.i.b.g.a) r12     // Catch:{ IOException -> 0x0072, ClassNotFoundException -> 0x0067 }
            int r1 = r12.G     // Catch:{ IOException -> 0x0072, ClassNotFoundException -> 0x0067 }
            if (r1 != r0) goto L_0x005f
            k.b.i.b.g.w r11 = r11.a     // Catch:{ IOException -> 0x0072, ClassNotFoundException -> 0x0067 }
            k.b.a.o r11 = r11.f2156d     // Catch:{ IOException -> 0x0072, ClassNotFoundException -> 0x0067 }
            k.b.i.b.g.a r0 = new k.b.i.b.g.a     // Catch:{ IOException -> 0x0072, ClassNotFoundException -> 0x0067 }
            r0.<init>(r12, r11)     // Catch:{ IOException -> 0x0072, ClassNotFoundException -> 0x0067 }
            r10.f2165g = r0     // Catch:{ IOException -> 0x0072, ClassNotFoundException -> 0x0067 }
            goto L_0x0150
        L_0x005f:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException     // Catch:{ IOException -> 0x0072, ClassNotFoundException -> 0x0067 }
            java.lang.String r12 = "serialized BDS has wrong index"
            r11.<init>(r12)     // Catch:{ IOException -> 0x0072, ClassNotFoundException -> 0x0067 }
            throw r11     // Catch:{ IOException -> 0x0072, ClassNotFoundException -> 0x0067 }
        L_0x0067:
            r11 = move-exception
            java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException
            java.lang.String r0 = r11.getMessage()
            r12.<init>(r0, r11)
            throw r12
        L_0x0072:
            r11 = move-exception
            java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException
            java.lang.String r0 = r11.getMessage()
            r12.<init>(r0, r11)
            throw r12
        L_0x007d:
            java.lang.IllegalArgumentException r11 = new java.lang.IllegalArgumentException
            java.lang.String r12 = "index out of bounds"
            r11.<init>(r12)
            throw r11
        L_0x0085:
            byte[] r12 = r11.f2167d
            if (r12 == 0) goto L_0x0097
            int r2 = r12.length
            if (r2 != r1) goto L_0x008f
            r10.f2161c = r12
            goto L_0x009b
        L_0x008f:
            java.lang.IllegalArgumentException r11 = new java.lang.IllegalArgumentException
            java.lang.String r12 = "size of secretKeySeed needs to be equal size of digest"
            r11.<init>(r12)
            throw r11
        L_0x0097:
            byte[] r2 = new byte[r1]
            r10.f2161c = r2
        L_0x009b:
            byte[] r2 = r11.f2168e
            if (r2 == 0) goto L_0x00ad
            int r4 = r2.length
            if (r4 != r1) goto L_0x00a5
            r10.f2162d = r2
            goto L_0x00b1
        L_0x00a5:
            java.lang.IllegalArgumentException r11 = new java.lang.IllegalArgumentException
            java.lang.String r12 = "size of secretKeyPRF needs to be equal size of digest"
            r11.<init>(r12)
            throw r11
        L_0x00ad:
            byte[] r2 = new byte[r1]
            r10.f2162d = r2
        L_0x00b1:
            byte[] r2 = r11.f2169f
            if (r2 == 0) goto L_0x00c3
            int r4 = r2.length
            if (r4 != r1) goto L_0x00bb
            r10.f2163e = r2
            goto L_0x00c7
        L_0x00bb:
            java.lang.IllegalArgumentException r11 = new java.lang.IllegalArgumentException
            java.lang.String r12 = "size of publicSeed needs to be equal size of digest"
            r11.<init>(r12)
            throw r11
        L_0x00c3:
            byte[] r4 = new byte[r1]
            r10.f2163e = r4
        L_0x00c7:
            byte[] r4 = r11.f2170g
            if (r4 == 0) goto L_0x00d9
            int r5 = r4.length
            if (r5 != r1) goto L_0x00d1
            r10.f2164f = r4
            goto L_0x00dd
        L_0x00d1:
            java.lang.IllegalArgumentException r11 = new java.lang.IllegalArgumentException
            java.lang.String r12 = "size of root needs to be equal size of digest"
            r11.<init>(r12)
            throw r11
        L_0x00d9:
            byte[] r1 = new byte[r1]
            r10.f2164f = r1
        L_0x00dd:
            k.b.i.b.g.a r1 = r11.f2171h
            if (r1 == 0) goto L_0x00e2
            goto L_0x011c
        L_0x00e2:
            int r1 = r11.b
            k.b.i.b.g.w r4 = r10.b
            int r5 = r4.b
            int r5 = r0 << r5
            int r5 = r5 + -2
            if (r1 >= r5) goto L_0x011f
            if (r2 == 0) goto L_0x011f
            if (r12 == 0) goto L_0x011f
            k.b.i.b.g.a r1 = new k.b.i.b.g.a
            k.b.i.b.g.j$b r5 = new k.b.i.b.g.j$b
            r5.<init>()
            k.b.i.b.g.o r5 = r5.b()
            k.b.i.b.g.j r5 = (k.b.i.b.g.j) r5
            int r6 = r11.b
            k.b.i.b.g.k r7 = r4.a()
            int r8 = r4.b
            int r4 = r4.f2155c
            int r9 = r0 << r8
            int r9 = r9 - r0
            r1.<init>((k.b.i.b.g.k) r7, (int) r8, (int) r4, (int) r9)
            r1.a(r2, r12, r5)
        L_0x0112:
            int r0 = r1.G
            if (r0 >= r6) goto L_0x011c
            r1.b(r2, r12, r5)
            r1.H = r3
            goto L_0x0112
        L_0x011c:
            r10.f2165g = r1
            goto L_0x013d
        L_0x011f:
            k.b.i.b.g.a r12 = new k.b.i.b.g.a
            k.b.i.b.g.w r1 = r10.b
            int r2 = r1.b
            int r2 = r0 << r2
            int r2 = r2 - r0
            int r3 = r11.b
            k.b.i.b.g.k r4 = r1.a()
            int r5 = r1.b
            int r1 = r1.f2155c
            r12.<init>((k.b.i.b.g.k) r4, (int) r5, (int) r1, (int) r3)
            r12.I = r2
            r12.G = r3
            r12.H = r0
            r10.f2165g = r12
        L_0x013d:
            int r11 = r11.f2166c
            if (r11 < 0) goto L_0x0150
            k.b.i.b.g.a r12 = r10.f2165g
            int r12 = r12.I
            if (r11 != r12) goto L_0x0148
            goto L_0x0150
        L_0x0148:
            java.lang.IllegalArgumentException r11 = new java.lang.IllegalArgumentException
            java.lang.String r12 = "maxIndex set but not reflected in state"
            r11.<init>(r12)
            throw r11
        L_0x0150:
            return
        L_0x0151:
            java.lang.NullPointerException r11 = new java.lang.NullPointerException
            java.lang.String r12 = "params == null"
            r11.<init>(r12)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: k.b.i.b.g.x.<init>(k.b.i.b.g.x$b, k.b.i.b.g.x$a):void");
    }

    public byte[] a() {
        byte[] b2;
        synchronized (this) {
            b2 = b();
        }
        return b2;
    }

    public byte[] b() {
        byte[] a2;
        synchronized (this) {
            int i2 = this.b.f2159g;
            int i3 = i2 + 4;
            int i4 = i3 + i2;
            int i5 = i4 + i2;
            byte[] bArr = new byte[(i2 + i5)];
            k.b.c.e.a.b(this.f2165g.G, bArr, 0);
            k.b.c.e.a.a(bArr, this.f2161c, 4);
            k.b.c.e.a.a(bArr, this.f2162d, i3);
            k.b.c.e.a.a(bArr, this.f2163e, i4);
            k.b.c.e.a.a(bArr, this.f2164f, i5);
            try {
                a aVar = this.f2165g;
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                objectOutputStream.writeObject(aVar);
                objectOutputStream.flush();
                a2 = k.b.c.e.a.a(bArr, byteArrayOutputStream.toByteArray());
            } catch (IOException e2) {
                throw new RuntimeException("error serializing bds state: " + e2.getMessage());
            }
        }
        return a2;
    }
}
