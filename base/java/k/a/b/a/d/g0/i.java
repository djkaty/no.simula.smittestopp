package k.a.b.a.d.g0;

import com.microsoft.azure.storage.Constants;
import java.nio.ByteBuffer;
import java.util.logging.Logger;
import k.a.b.a.d.d0;

public class i implements b0 {
    public static final Logger m = Logger.getLogger("proton.trace");
    public static final ByteBuffer n = ByteBuffer.allocate(0);
    public final h a;
    public final k.a.b.a.c.i b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1854c;

    /* renamed from: d  reason: collision with root package name */
    public final int f1855d;

    /* renamed from: e  reason: collision with root package name */
    public final a0 f1856e;

    /* renamed from: f  reason: collision with root package name */
    public ByteBuffer f1857f = null;

    /* renamed from: g  reason: collision with root package name */
    public boolean f1858g = false;

    /* renamed from: h  reason: collision with root package name */
    public a f1859h = a.HEADER0;

    /* renamed from: i  reason: collision with root package name */
    public long f1860i = 0;

    /* renamed from: j  reason: collision with root package name */
    public int f1861j;

    /* renamed from: k  reason: collision with root package name */
    public ByteBuffer f1862k;

    /* renamed from: l  reason: collision with root package name */
    public k.a.b.a.e.a f1863l;

    public enum a {
        HEADER0,
        HEADER1,
        HEADER2,
        HEADER3,
        HEADER4,
        HEADER5,
        HEADER6,
        HEADER7,
        SIZE_0,
        SIZE_1,
        SIZE_2,
        SIZE_3,
        PRE_PARSE,
        BUFFERING,
        PARSING,
        ERROR
    }

    public i(h hVar, k.a.b.a.c.i iVar, int i2, a0 a0Var) {
        this.a = hVar;
        this.b = iVar;
        this.f1855d = i2;
        this.f1854c = i2 <= 0 ? Constants.MIN_PERMITTED_BLOCK_SIZE : i2;
        this.f1856e = a0Var;
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:188:0x0016, code lost:
        continue;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:189:0x0016, code lost:
        continue;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0066, code lost:
        if (r0.hasRemaining() == false) goto L_0x0016;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:190:0x0016, code lost:
        continue;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:191:0x0016, code lost:
        continue;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:192:0x0016, code lost:
        continue;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:193:0x0016, code lost:
        continue;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:194:0x0016, code lost:
        continue;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:195:0x0016, code lost:
        continue;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0068, code lost:
        r4 = r0.get();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0070, code lost:
        if (r4 == k.a.b.a.d.g0.b.a[1]) goto L_0x008f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0072, code lost:
        r7 = new k.a.b.a.d.d0("AMQP header mismatch value %x, expecting %x. In state: %s", java.lang.Byte.valueOf(r4), java.lang.Byte.valueOf(k.a.b.a.d.g0.b.a[1]), r5);
        r4 = k.a.b.a.d.g0.i.a.ERROR;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x008f, code lost:
        r5 = k.a.b.a.d.g0.i.a.HEADER2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0096, code lost:
        if (r0.hasRemaining() == false) goto L_0x0016;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0098, code lost:
        r4 = r0.get();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x00a0, code lost:
        if (r4 == k.a.b.a.d.g0.b.a[2]) goto L_0x00bf;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x00a2, code lost:
        r7 = new k.a.b.a.d.d0("AMQP header mismatch value %x, expecting %x. In state: %s", java.lang.Byte.valueOf(r4), java.lang.Byte.valueOf(k.a.b.a.d.g0.b.a[2]), r5);
        r4 = k.a.b.a.d.g0.i.a.ERROR;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x00bf, code lost:
        r5 = k.a.b.a.d.g0.i.a.HEADER3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x00c6, code lost:
        if (r0.hasRemaining() == false) goto L_0x0016;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x00c8, code lost:
        r4 = r0.get();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00d0, code lost:
        if (r4 == k.a.b.a.d.g0.b.a[3]) goto L_0x00ef;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x00d2, code lost:
        r7 = new k.a.b.a.d.d0("AMQP header mismatch value %x, expecting %x. In state: %s", java.lang.Byte.valueOf(r4), java.lang.Byte.valueOf(k.a.b.a.d.g0.b.a[3]), r5);
        r4 = k.a.b.a.d.g0.i.a.ERROR;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00ef, code lost:
        r5 = k.a.b.a.d.g0.i.a.HEADER4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00f6, code lost:
        if (r0.hasRemaining() == false) goto L_0x0016;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00f8, code lost:
        r4 = r0.get();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x0100, code lost:
        if (r4 == k.a.b.a.d.g0.b.a[4]) goto L_0x011f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x0102, code lost:
        r7 = new k.a.b.a.d.d0("AMQP header mismatch value %x, expecting %x. In state: %s", java.lang.Byte.valueOf(r4), java.lang.Byte.valueOf(k.a.b.a.d.g0.b.a[4]), r5);
        r4 = k.a.b.a.d.g0.i.a.ERROR;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x011f, code lost:
        r5 = k.a.b.a.d.g0.i.a.HEADER5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x0126, code lost:
        if (r0.hasRemaining() == false) goto L_0x0016;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x0128, code lost:
        r4 = r0.get();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x0132, code lost:
        if (r4 == k.a.b.a.d.g0.b.a[5]) goto L_0x0151;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x0134, code lost:
        r7 = new k.a.b.a.d.d0("AMQP header mismatch value %x, expecting %x. In state: %s", java.lang.Byte.valueOf(r4), java.lang.Byte.valueOf(k.a.b.a.d.g0.b.a[5]), r5);
        r4 = k.a.b.a.d.g0.i.a.ERROR;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x0151, code lost:
        r5 = k.a.b.a.d.g0.i.a.HEADER6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x0158, code lost:
        if (r0.hasRemaining() == false) goto L_0x0016;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x015a, code lost:
        r4 = r0.get();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x0164, code lost:
        if (r4 == k.a.b.a.d.g0.b.a[6]) goto L_0x0183;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x0166, code lost:
        r7 = new k.a.b.a.d.d0("AMQP header mismatch value %x, expecting %x. In state: %s", java.lang.Byte.valueOf(r4), java.lang.Byte.valueOf(k.a.b.a.d.g0.b.a[6]), r5);
        r4 = k.a.b.a.d.g0.i.a.ERROR;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x0183, code lost:
        r5 = k.a.b.a.d.g0.i.a.HEADER7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x018a, code lost:
        if (r0.hasRemaining() == false) goto L_0x0016;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x018c, code lost:
        r4 = r0.get();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x0196, code lost:
        if (r4 == k.a.b.a.d.g0.b.a[7]) goto L_0x01b4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x0198, code lost:
        r7 = new k.a.b.a.d.d0("AMQP header mismatch value %x, expecting %x. In state: %s", java.lang.Byte.valueOf(r4), java.lang.Byte.valueOf(k.a.b.a.d.g0.b.a[7]), r5);
        r4 = k.a.b.a.d.g0.i.a.ERROR;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x01ba, code lost:
        if (r1.f1856e.X() == false) goto L_0x01d0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x01bc, code lost:
        r1.f1856e.a(k.a.b.a.d.g0.a0.E0, "AMQP");
        r4 = r1.f1856e.V();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x01cb, code lost:
        if (r4 == null) goto L_0x01d0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x01cd, code lost:
        r4.a();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x01d0, code lost:
        r5 = k.a.b.a.d.g0.i.a.SIZE_0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x01d7, code lost:
        if (r0.hasRemaining() != false) goto L_0x01db;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x01df, code lost:
        if (r0.remaining() < 4) goto L_0x01e8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:0x01e1, code lost:
        r2 = r0.getInt();
        r4 = k.a.b.a.d.g0.i.a.PRE_PARSE;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x01e8, code lost:
        r2 = (r0.get() << 24) & -16777216;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x01f5, code lost:
        if (r0.hasRemaining() != false) goto L_0x01fa;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x01f7, code lost:
        r4 = k.a.b.a.d.g0.i.a.SIZE_1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:72:0x01fa, code lost:
        r2 = r2 | ((r0.get() << 16) & 16711680);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:73:0x0208, code lost:
        if (r0.hasRemaining() != false) goto L_0x020f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x020a, code lost:
        r4 = k.a.b.a.d.g0.i.a.SIZE_2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:79:0x0222, code lost:
        r2 = r2 | (r0.get() & 255);
        r5 = k.a.b.a.d.g0.i.a.PRE_PARSE;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:80:0x022b, code lost:
        if (r2 >= 8) goto L_0x0245;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:81:0x022d, code lost:
        r7 = new k.a.b.a.d.d0("specified frame size %d smaller than minimum frame header size %d", java.lang.Integer.valueOf(r2), 8);
        r4 = k.a.b.a.d.g0.i.a.ERROR;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x0245, code lost:
        r4 = r1.f1855d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:83:0x0247, code lost:
        if (r4 <= 0) goto L_0x0265;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:84:0x0249, code lost:
        if (r2 <= r4) goto L_0x0265;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:85:0x024b, code lost:
        r7 = new k.a.b.a.d.d0("specified frame size %d greater than maximum valid frame size %d", java.lang.Integer.valueOf(r2), java.lang.Integer.valueOf(r1.f1855d));
        r4 = k.a.b.a.d.g0.i.a.ERROR;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:86:0x0265, code lost:
        r9 = r2 - 4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:87:0x026b, code lost:
        if (r0.remaining() >= r9) goto L_0x0279;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:88:0x026d, code lost:
        r4 = java.nio.ByteBuffer.allocate(r9);
        r1.f1862k = r4;
        r4.put(r0);
        r4 = k.a.b.a.d.g0.i.a.BUFFERING;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:90:0x027b, code lost:
        if (r1.f1862k == null) goto L_0x02c0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:92:0x0287, code lost:
        if (r0.remaining() >= r1.f1862k.remaining()) goto L_0x0290;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:93:0x0289, code lost:
        r1.f1862k.put(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:94:0x0290, code lost:
        r4 = r0.duplicate();
        r4.limit(r1.f1862k.remaining() + r4.position());
        r0.position(r1.f1862k.remaining() + r0.position());
        r1.f1862k.put(r4);
        r1.f1862k.flip();
        r4 = r1.f1862k;
        r5 = k.a.b.a.d.g0.i.a.PARSING;
        r8 = r0;
        r0 = r4;
     */
    /* JADX WARNING: Removed duplicated region for block: B:128:0x037d A[Catch:{ q -> 0x0424 }] */
    /* JADX WARNING: Removed duplicated region for block: B:157:0x03fa A[SYNTHETIC, Splitter:B:157:0x03fa] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(java.nio.ByteBuffer r18) {
        /*
            r17 = this;
            r1 = r17
            r17.a()
            k.a.b.a.e.a r0 = r1.f1863l
            if (r0 == 0) goto L_0x000a
            return
        L_0x000a:
            int r0 = r1.f1861j
            k.a.b.a.d.g0.i$a r2 = r1.f1859h
            r3 = 1
            r5 = r2
            r6 = 1
            r7 = 0
            r8 = 0
            r2 = r0
            r0 = r18
        L_0x0016:
            boolean r9 = r0.hasRemaining()
            if (r9 == 0) goto L_0x042f
            k.a.b.a.d.g0.i$a r9 = k.a.b.a.d.g0.i.a.ERROR
            if (r5 == r9) goto L_0x042f
            if (r6 == 0) goto L_0x042f
            int r9 = r5.ordinal()
            r10 = 4
            r11 = 8
            java.lang.String r12 = "AMQP header mismatch value %x, expecting %x. In state: %s"
            r13 = 3
            r14 = 2
            r15 = 0
            switch(r9) {
                case 0: goto L_0x0032;
                case 1: goto L_0x0062;
                case 2: goto L_0x0092;
                case 3: goto L_0x00c2;
                case 4: goto L_0x00f2;
                case 5: goto L_0x0122;
                case 6: goto L_0x0154;
                case 7: goto L_0x0186;
                case 8: goto L_0x01d3;
                case 9: goto L_0x01fa;
                case 10: goto L_0x020f;
                case 11: goto L_0x0222;
                case 12: goto L_0x022b;
                case 13: goto L_0x0279;
                case 14: goto L_0x02c0;
                default: goto L_0x0031;
            }
        L_0x0031:
            goto L_0x0016
        L_0x0032:
            boolean r9 = r0.hasRemaining()
            if (r9 == 0) goto L_0x0016
            byte r9 = r0.get()
            byte[] r16 = k.a.b.a.d.g0.b.a
            byte r4 = r16[r15]
            if (r9 == r4) goto L_0x005f
            k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
            java.lang.Object[] r4 = new java.lang.Object[r13]
            java.lang.Byte r9 = java.lang.Byte.valueOf(r9)
            r4[r15] = r9
            byte[] r9 = k.a.b.a.d.g0.b.a
            byte r9 = r9[r15]
            java.lang.Byte r9 = java.lang.Byte.valueOf(r9)
            r4[r3] = r9
            r4[r14] = r5
            r7.<init>((java.lang.String) r12, (java.lang.Object[]) r4)
            k.a.b.a.d.g0.i$a r4 = k.a.b.a.d.g0.i.a.ERROR
            goto L_0x020c
        L_0x005f:
            k.a.b.a.d.g0.i$a r4 = k.a.b.a.d.g0.i.a.HEADER1
            r5 = r4
        L_0x0062:
            boolean r4 = r0.hasRemaining()
            if (r4 == 0) goto L_0x0016
            byte r4 = r0.get()
            byte[] r9 = k.a.b.a.d.g0.b.a
            byte r9 = r9[r3]
            if (r4 == r9) goto L_0x008f
            k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
            java.lang.Object[] r9 = new java.lang.Object[r13]
            java.lang.Byte r4 = java.lang.Byte.valueOf(r4)
            r9[r15] = r4
            byte[] r4 = k.a.b.a.d.g0.b.a
            byte r4 = r4[r3]
            java.lang.Byte r4 = java.lang.Byte.valueOf(r4)
            r9[r3] = r4
            r9[r14] = r5
            r7.<init>((java.lang.String) r12, (java.lang.Object[]) r9)
            k.a.b.a.d.g0.i$a r4 = k.a.b.a.d.g0.i.a.ERROR
            goto L_0x020c
        L_0x008f:
            k.a.b.a.d.g0.i$a r4 = k.a.b.a.d.g0.i.a.HEADER2
            r5 = r4
        L_0x0092:
            boolean r4 = r0.hasRemaining()
            if (r4 == 0) goto L_0x0016
            byte r4 = r0.get()
            byte[] r9 = k.a.b.a.d.g0.b.a
            byte r9 = r9[r14]
            if (r4 == r9) goto L_0x00bf
            k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
            java.lang.Object[] r9 = new java.lang.Object[r13]
            java.lang.Byte r4 = java.lang.Byte.valueOf(r4)
            r9[r15] = r4
            byte[] r4 = k.a.b.a.d.g0.b.a
            byte r4 = r4[r14]
            java.lang.Byte r4 = java.lang.Byte.valueOf(r4)
            r9[r3] = r4
            r9[r14] = r5
            r7.<init>((java.lang.String) r12, (java.lang.Object[]) r9)
            k.a.b.a.d.g0.i$a r4 = k.a.b.a.d.g0.i.a.ERROR
            goto L_0x020c
        L_0x00bf:
            k.a.b.a.d.g0.i$a r4 = k.a.b.a.d.g0.i.a.HEADER3
            r5 = r4
        L_0x00c2:
            boolean r4 = r0.hasRemaining()
            if (r4 == 0) goto L_0x0016
            byte r4 = r0.get()
            byte[] r9 = k.a.b.a.d.g0.b.a
            byte r9 = r9[r13]
            if (r4 == r9) goto L_0x00ef
            k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
            java.lang.Object[] r9 = new java.lang.Object[r13]
            java.lang.Byte r4 = java.lang.Byte.valueOf(r4)
            r9[r15] = r4
            byte[] r4 = k.a.b.a.d.g0.b.a
            byte r4 = r4[r13]
            java.lang.Byte r4 = java.lang.Byte.valueOf(r4)
            r9[r3] = r4
            r9[r14] = r5
            r7.<init>((java.lang.String) r12, (java.lang.Object[]) r9)
            k.a.b.a.d.g0.i$a r4 = k.a.b.a.d.g0.i.a.ERROR
            goto L_0x020c
        L_0x00ef:
            k.a.b.a.d.g0.i$a r4 = k.a.b.a.d.g0.i.a.HEADER4
            r5 = r4
        L_0x00f2:
            boolean r4 = r0.hasRemaining()
            if (r4 == 0) goto L_0x0016
            byte r4 = r0.get()
            byte[] r9 = k.a.b.a.d.g0.b.a
            byte r9 = r9[r10]
            if (r4 == r9) goto L_0x011f
            k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
            java.lang.Object[] r9 = new java.lang.Object[r13]
            java.lang.Byte r4 = java.lang.Byte.valueOf(r4)
            r9[r15] = r4
            byte[] r4 = k.a.b.a.d.g0.b.a
            byte r4 = r4[r10]
            java.lang.Byte r4 = java.lang.Byte.valueOf(r4)
            r9[r3] = r4
            r9[r14] = r5
            r7.<init>((java.lang.String) r12, (java.lang.Object[]) r9)
            k.a.b.a.d.g0.i$a r4 = k.a.b.a.d.g0.i.a.ERROR
            goto L_0x020c
        L_0x011f:
            k.a.b.a.d.g0.i$a r4 = k.a.b.a.d.g0.i.a.HEADER5
            r5 = r4
        L_0x0122:
            boolean r4 = r0.hasRemaining()
            if (r4 == 0) goto L_0x0016
            byte r4 = r0.get()
            byte[] r9 = k.a.b.a.d.g0.b.a
            r16 = 5
            byte r9 = r9[r16]
            if (r4 == r9) goto L_0x0151
            k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
            java.lang.Object[] r9 = new java.lang.Object[r13]
            java.lang.Byte r4 = java.lang.Byte.valueOf(r4)
            r9[r15] = r4
            byte[] r4 = k.a.b.a.d.g0.b.a
            byte r4 = r4[r16]
            java.lang.Byte r4 = java.lang.Byte.valueOf(r4)
            r9[r3] = r4
            r9[r14] = r5
            r7.<init>((java.lang.String) r12, (java.lang.Object[]) r9)
            k.a.b.a.d.g0.i$a r4 = k.a.b.a.d.g0.i.a.ERROR
            goto L_0x020c
        L_0x0151:
            k.a.b.a.d.g0.i$a r4 = k.a.b.a.d.g0.i.a.HEADER6
            r5 = r4
        L_0x0154:
            boolean r4 = r0.hasRemaining()
            if (r4 == 0) goto L_0x0016
            byte r4 = r0.get()
            byte[] r9 = k.a.b.a.d.g0.b.a
            r16 = 6
            byte r9 = r9[r16]
            if (r4 == r9) goto L_0x0183
            k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
            java.lang.Object[] r9 = new java.lang.Object[r13]
            java.lang.Byte r4 = java.lang.Byte.valueOf(r4)
            r9[r15] = r4
            byte[] r4 = k.a.b.a.d.g0.b.a
            byte r4 = r4[r16]
            java.lang.Byte r4 = java.lang.Byte.valueOf(r4)
            r9[r3] = r4
            r9[r14] = r5
            r7.<init>((java.lang.String) r12, (java.lang.Object[]) r9)
            k.a.b.a.d.g0.i$a r4 = k.a.b.a.d.g0.i.a.ERROR
            goto L_0x020c
        L_0x0183:
            k.a.b.a.d.g0.i$a r4 = k.a.b.a.d.g0.i.a.HEADER7
            r5 = r4
        L_0x0186:
            boolean r4 = r0.hasRemaining()
            if (r4 == 0) goto L_0x0016
            byte r4 = r0.get()
            byte[] r9 = k.a.b.a.d.g0.b.a
            r16 = 7
            byte r9 = r9[r16]
            if (r4 == r9) goto L_0x01b4
            k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
            java.lang.Object[] r9 = new java.lang.Object[r13]
            java.lang.Byte r4 = java.lang.Byte.valueOf(r4)
            r9[r15] = r4
            byte[] r4 = k.a.b.a.d.g0.b.a
            byte r4 = r4[r16]
            java.lang.Byte r4 = java.lang.Byte.valueOf(r4)
            r9[r3] = r4
            r9[r14] = r5
            r7.<init>((java.lang.String) r12, (java.lang.Object[]) r9)
            k.a.b.a.d.g0.i$a r4 = k.a.b.a.d.g0.i.a.ERROR
            goto L_0x020c
        L_0x01b4:
            k.a.b.a.d.g0.a0 r4 = r1.f1856e
            boolean r4 = r4.X()
            if (r4 == 0) goto L_0x01d0
            k.a.b.a.d.g0.a0 r4 = r1.f1856e
            java.lang.String r5 = k.a.b.a.d.g0.a0.E0
            java.lang.String r9 = "AMQP"
            r4.a((java.lang.String) r5, (java.lang.String) r9)
            k.a.b.a.d.g0.a0 r4 = r1.f1856e
            k.a.b.a.d.g0.p r4 = r4.V()
            if (r4 == 0) goto L_0x01d0
            r4.a()
        L_0x01d0:
            k.a.b.a.d.g0.i$a r4 = k.a.b.a.d.g0.i.a.SIZE_0
            r5 = r4
        L_0x01d3:
            boolean r4 = r0.hasRemaining()
            if (r4 != 0) goto L_0x01db
            goto L_0x0016
        L_0x01db:
            int r2 = r0.remaining()
            if (r2 < r10) goto L_0x01e8
            int r2 = r0.getInt()
            k.a.b.a.d.g0.i$a r4 = k.a.b.a.d.g0.i.a.PRE_PARSE
            goto L_0x020c
        L_0x01e8:
            byte r2 = r0.get()
            int r2 = r2 << 24
            r4 = -16777216(0xffffffffff000000, float:-1.7014118E38)
            r2 = r2 & r4
            boolean r4 = r0.hasRemaining()
            if (r4 != 0) goto L_0x01fa
            k.a.b.a.d.g0.i$a r4 = k.a.b.a.d.g0.i.a.SIZE_1
            goto L_0x020c
        L_0x01fa:
            byte r4 = r0.get()
            int r4 = r4 << 16
            r5 = 16711680(0xff0000, float:2.3418052E-38)
            r4 = r4 & r5
            r2 = r2 | r4
            boolean r4 = r0.hasRemaining()
            if (r4 != 0) goto L_0x020f
            k.a.b.a.d.g0.i$a r4 = k.a.b.a.d.g0.i.a.SIZE_2
        L_0x020c:
            r5 = r4
            goto L_0x0016
        L_0x020f:
            byte r4 = r0.get()
            int r4 = r4 << r11
            r5 = 65280(0xff00, float:9.1477E-41)
            r4 = r4 & r5
            r2 = r2 | r4
            boolean r4 = r0.hasRemaining()
            if (r4 != 0) goto L_0x0222
            k.a.b.a.d.g0.i$a r4 = k.a.b.a.d.g0.i.a.SIZE_3
            goto L_0x020c
        L_0x0222:
            byte r4 = r0.get()
            r4 = r4 & 255(0xff, float:3.57E-43)
            r2 = r2 | r4
            k.a.b.a.d.g0.i$a r5 = k.a.b.a.d.g0.i.a.PRE_PARSE
        L_0x022b:
            if (r2 >= r11) goto L_0x0245
            k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
            java.lang.Object[] r4 = new java.lang.Object[r14]
            java.lang.Integer r5 = java.lang.Integer.valueOf(r2)
            r4[r15] = r5
            java.lang.Integer r5 = java.lang.Integer.valueOf(r11)
            r4[r3] = r5
            java.lang.String r5 = "specified frame size %d smaller than minimum frame header size %d"
            r7.<init>((java.lang.String) r5, (java.lang.Object[]) r4)
            k.a.b.a.d.g0.i$a r4 = k.a.b.a.d.g0.i.a.ERROR
            goto L_0x020c
        L_0x0245:
            int r4 = r1.f1855d
            if (r4 <= 0) goto L_0x0265
            if (r2 <= r4) goto L_0x0265
            k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
            java.lang.Object[] r4 = new java.lang.Object[r14]
            java.lang.Integer r5 = java.lang.Integer.valueOf(r2)
            r4[r15] = r5
            int r5 = r1.f1855d
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            r4[r3] = r5
            java.lang.String r5 = "specified frame size %d greater than maximum valid frame size %d"
            r7.<init>((java.lang.String) r5, (java.lang.Object[]) r4)
            k.a.b.a.d.g0.i$a r4 = k.a.b.a.d.g0.i.a.ERROR
            goto L_0x020c
        L_0x0265:
            int r4 = r0.remaining()
            int r9 = r2 + -4
            if (r4 >= r9) goto L_0x0279
            java.nio.ByteBuffer r4 = java.nio.ByteBuffer.allocate(r9)
            r1.f1862k = r4
            r4.put(r0)
            k.a.b.a.d.g0.i$a r4 = k.a.b.a.d.g0.i.a.BUFFERING
            goto L_0x020c
        L_0x0279:
            java.nio.ByteBuffer r4 = r1.f1862k
            if (r4 == 0) goto L_0x02c0
            int r4 = r0.remaining()
            java.nio.ByteBuffer r9 = r1.f1862k
            int r9 = r9.remaining()
            if (r4 >= r9) goto L_0x0290
            java.nio.ByteBuffer r4 = r1.f1862k
            r4.put(r0)
            goto L_0x0016
        L_0x0290:
            java.nio.ByteBuffer r4 = r0.duplicate()
            int r5 = r4.position()
            java.nio.ByteBuffer r8 = r1.f1862k
            int r8 = r8.remaining()
            int r8 = r8 + r5
            r4.limit(r8)
            int r5 = r0.position()
            java.nio.ByteBuffer r8 = r1.f1862k
            int r8 = r8.remaining()
            int r8 = r8 + r5
            r0.position(r8)
            java.nio.ByteBuffer r5 = r1.f1862k
            r5.put(r4)
            java.nio.ByteBuffer r4 = r1.f1862k
            r4.flip()
            java.nio.ByteBuffer r4 = r1.f1862k
            k.a.b.a.d.g0.i$a r5 = k.a.b.a.d.g0.i.a.PARSING
            r8 = r0
            r0 = r4
        L_0x02c0:
            byte r4 = r0.get()
            int r4 = r4 << r14
            r4 = r4 & 1023(0x3ff, float:1.434E-42)
            if (r4 >= r11) goto L_0x02e2
            k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
            java.lang.Object[] r5 = new java.lang.Object[r14]
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r5[r15] = r4
            java.lang.Integer r4 = java.lang.Integer.valueOf(r11)
            r5[r3] = r4
            java.lang.String r4 = "specified frame data offset %d smaller than minimum frame header size %d"
            r7.<init>((java.lang.String) r4, (java.lang.Object[]) r5)
            k.a.b.a.d.g0.i$a r4 = k.a.b.a.d.g0.i.a.ERROR
            goto L_0x020c
        L_0x02e2:
            if (r4 <= r2) goto L_0x02fd
            k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
            java.lang.Object[] r5 = new java.lang.Object[r14]
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r5[r15] = r4
            java.lang.Integer r4 = java.lang.Integer.valueOf(r2)
            r5[r3] = r4
            java.lang.String r4 = "specified frame data offset %d larger than the frame size %d"
            r7.<init>((java.lang.String) r4, (java.lang.Object[]) r5)
            k.a.b.a.d.g0.i$a r4 = k.a.b.a.d.g0.i.a.ERROR
            goto L_0x020c
        L_0x02fd:
            byte r5 = r0.get()
            r5 = r5 & 255(0xff, float:3.57E-43)
            short r9 = r0.getShort()
            r10 = 65535(0xffff, float:9.1834E-41)
            r9 = r9 & r10
            if (r5 == 0) goto L_0x0320
            k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
            java.lang.Object[] r4 = new java.lang.Object[r3]
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            r4[r15] = r5
            java.lang.String r5 = "unknown frame type: %d"
            r7.<init>((java.lang.String) r5, (java.lang.Object[]) r4)
            k.a.b.a.d.g0.i$a r4 = k.a.b.a.d.g0.i.a.ERROR
            goto L_0x020c
        L_0x0320:
            if (r4 == r11) goto L_0x032b
            int r5 = r0.position()
            int r5 = r5 + r4
            int r5 = r5 - r11
            r0.position(r5)
        L_0x032b:
            int r4 = r2 - r4
            if (r8 != 0) goto L_0x0340
            java.nio.ByteBuffer r5 = r0.duplicate()
            int r8 = r5.position()
            int r8 = r8 + r4
            r5.limit(r8)
            r0.position(r8)
            r8 = r0
            goto L_0x0341
        L_0x0340:
            r5 = r0
        L_0x0341:
            long r10 = r1.f1860i     // Catch:{ q -> 0x0424 }
            r12 = 1
            long r10 = r10 + r12
            r1.f1860i = r10     // Catch:{ q -> 0x0424 }
            if (r4 <= 0) goto L_0x0376
            k.a.b.a.c.i r0 = r1.b     // Catch:{ q -> 0x0424 }
            k.a.b.a.c.r r0 = (k.a.b.a.c.r) r0
            r0.a((java.nio.ByteBuffer) r5)     // Catch:{ q -> 0x0424 }
            k.a.b.a.c.i r0 = r1.b     // Catch:{ q -> 0x0424 }
            k.a.b.a.c.r r0 = (k.a.b.a.c.r) r0
            java.lang.Object r0 = r0.d()     // Catch:{ q -> 0x0424 }
            k.a.b.a.c.i r4 = r1.b     // Catch:{ q -> 0x0424 }
            k.a.b.a.c.r r4 = (k.a.b.a.c.r) r4
            r10 = 0
            r4.a((java.nio.ByteBuffer) r10)     // Catch:{ q -> 0x0424 }
            boolean r4 = r5.hasRemaining()     // Catch:{ q -> 0x0424 }
            if (r4 == 0) goto L_0x0378
            int r4 = r5.remaining()     // Catch:{ q -> 0x0424 }
            byte[] r4 = new byte[r4]     // Catch:{ q -> 0x0424 }
            r5.get(r4)     // Catch:{ q -> 0x0424 }
            k.a.b.a.b.a r10 = new k.a.b.a.b.a     // Catch:{ q -> 0x0424 }
            r10.<init>(r4)     // Catch:{ q -> 0x0424 }
            goto L_0x0379
        L_0x0376:
            k.a.b.a.b.n.h r0 = k.a.b.a.b.n.h.a     // Catch:{ q -> 0x0424 }
        L_0x0378:
            r10 = 0
        L_0x0379:
            boolean r4 = r0 instanceof k.a.b.a.b.n.l     // Catch:{ q -> 0x0424 }
            if (r4 == 0) goto L_0x03fa
            k.a.b.a.b.n.l r0 = (k.a.b.a.b.n.l) r0     // Catch:{ q -> 0x0424 }
            java.util.logging.Logger r4 = m     // Catch:{ q -> 0x0424 }
            java.util.logging.Level r11 = java.util.logging.Level.FINE     // Catch:{ q -> 0x0424 }
            boolean r4 = r4.isLoggable(r11)     // Catch:{ q -> 0x0424 }
            if (r4 == 0) goto L_0x03c7
            java.util.logging.Logger r4 = m     // Catch:{ q -> 0x0424 }
            java.util.logging.Level r11 = java.util.logging.Level.FINE     // Catch:{ q -> 0x0424 }
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch:{ q -> 0x0424 }
            r12.<init>()     // Catch:{ q -> 0x0424 }
            java.lang.String r13 = "IN: CH["
            r12.append(r13)     // Catch:{ q -> 0x0424 }
            r12.append(r9)     // Catch:{ q -> 0x0424 }
            java.lang.String r13 = "] : "
            r12.append(r13)     // Catch:{ q -> 0x0424 }
            r12.append(r0)     // Catch:{ q -> 0x0424 }
            if (r10 != 0) goto L_0x03a7
            java.lang.String r13 = ""
            goto L_0x03bd
        L_0x03a7:
            java.lang.StringBuilder r13 = new java.lang.StringBuilder     // Catch:{ q -> 0x0424 }
            r13.<init>()     // Catch:{ q -> 0x0424 }
            java.lang.String r14 = "["
            r13.append(r14)     // Catch:{ q -> 0x0424 }
            r13.append(r10)     // Catch:{ q -> 0x0424 }
            java.lang.String r14 = "]"
            r13.append(r14)     // Catch:{ q -> 0x0424 }
            java.lang.String r13 = r13.toString()     // Catch:{ q -> 0x0424 }
        L_0x03bd:
            r12.append(r13)     // Catch:{ q -> 0x0424 }
            java.lang.String r12 = r12.toString()     // Catch:{ q -> 0x0424 }
            r4.log(r11, r12)     // Catch:{ q -> 0x0424 }
        L_0x03c7:
            k.a.b.a.e.a r4 = new k.a.b.a.e.a     // Catch:{ q -> 0x0424 }
            r4.<init>(r9, r0, r10)     // Catch:{ q -> 0x0424 }
            k.a.b.a.d.g0.h r0 = r1.a     // Catch:{ q -> 0x0424 }
            k.a.b.a.d.g0.a0 r0 = (k.a.b.a.d.g0.a0) r0
            boolean r0 = r0.Y()     // Catch:{ q -> 0x0424 }
            if (r0 == 0) goto L_0x03e1
            k.a.b.a.d.g0.h r0 = r1.a     // Catch:{ q -> 0x0424 }
            k.a.b.a.d.g0.a0 r0 = (k.a.b.a.d.g0.a0) r0
            boolean r0 = r0.a((k.a.b.a.e.a) r4)     // Catch:{ q -> 0x0424 }
            r1.f1858g = r0     // Catch:{ q -> 0x0424 }
            goto L_0x03e4
        L_0x03e1:
            r1.f1863l = r4     // Catch:{ q -> 0x03f7 }
            r6 = 0
        L_0x03e4:
            r1.f1861j = r15     // Catch:{ q -> 0x0424 }
            k.a.b.a.d.g0.i$a r0 = k.a.b.a.d.g0.i.a.SIZE_0     // Catch:{ q -> 0x0424 }
            r1.f1859h = r0     // Catch:{ q -> 0x0424 }
            r4 = 0
            r1.f1862k = r4     // Catch:{ q -> 0x03f3 }
            k.a.b.a.d.g0.i$a r5 = k.a.b.a.d.g0.i.a.SIZE_0     // Catch:{ q -> 0x03f3 }
            r0 = r8
            r8 = 0
            goto L_0x0016
        L_0x03f3:
            r0 = move-exception
            r5 = r8
            r8 = 0
            goto L_0x0425
        L_0x03f7:
            r0 = move-exception
            r6 = 0
            goto L_0x0425
        L_0x03fa:
            k.a.b.a.d.d0 r4 = new k.a.b.a.d.d0     // Catch:{ q -> 0x0424 }
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch:{ q -> 0x0424 }
            r7.<init>()     // Catch:{ q -> 0x0424 }
            java.lang.String r9 = "Frameparser encountered a "
            r7.append(r9)     // Catch:{ q -> 0x0424 }
            if (r0 != 0) goto L_0x040b
            java.lang.String r0 = "null"
            goto L_0x040f
        L_0x040b:
            java.lang.Class r0 = r0.getClass()     // Catch:{ q -> 0x0424 }
        L_0x040f:
            r7.append(r0)     // Catch:{ q -> 0x0424 }
            java.lang.String r0 = " which is not a "
            r7.append(r0)     // Catch:{ q -> 0x0424 }
            java.lang.Class<k.a.b.a.b.n.l> r0 = k.a.b.a.b.n.l.class
            r7.append(r0)     // Catch:{ q -> 0x0424 }
            java.lang.String r0 = r7.toString()     // Catch:{ q -> 0x0424 }
            r4.<init>((java.lang.String) r0)     // Catch:{ q -> 0x0424 }
            throw r4     // Catch:{ q -> 0x0424 }
        L_0x0424:
            r0 = move-exception
        L_0x0425:
            k.a.b.a.d.g0.i$a r4 = k.a.b.a.d.g0.i.a.ERROR
            k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
            r7.<init>((java.lang.Throwable) r0)
            r0 = r5
            goto L_0x020c
        L_0x042f:
            boolean r4 = r1.f1858g
            if (r4 == 0) goto L_0x0459
            boolean r0 = r0.hasRemaining()
            if (r0 == 0) goto L_0x0443
            k.a.b.a.d.g0.i$a r5 = k.a.b.a.d.g0.i.a.ERROR
            k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
            java.lang.String r0 = "framing error"
            r7.<init>((java.lang.String) r0)
            goto L_0x0459
        L_0x0443:
            k.a.b.a.d.g0.i$a r0 = k.a.b.a.d.g0.i.a.SIZE_0
            if (r5 == r0) goto L_0x0451
            k.a.b.a.d.g0.i$a r5 = k.a.b.a.d.g0.i.a.ERROR
            k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
            java.lang.String r0 = "connection aborted"
            r7.<init>((java.lang.String) r0)
            goto L_0x0459
        L_0x0451:
            k.a.b.a.d.g0.h r0 = r1.a
            k.a.b.a.d.g0.a0 r0 = (k.a.b.a.d.g0.a0) r0
            r4 = 0
            r0.a((k.a.b.a.d.d0) r4)
        L_0x0459:
            r1.f1859h = r5
            r1.f1861j = r2
            k.a.b.a.d.g0.i$a r0 = k.a.b.a.d.g0.i.a.ERROR
            if (r5 != r0) goto L_0x0475
            r1.f1858g = r3
            if (r7 == 0) goto L_0x046d
            k.a.b.a.d.g0.h r0 = r1.a
            k.a.b.a.d.g0.a0 r0 = (k.a.b.a.d.g0.a0) r0
            r0.a((k.a.b.a.d.d0) r7)
            goto L_0x0475
        L_0x046d:
            k.a.b.a.d.d0 r0 = new k.a.b.a.d.d0
            java.lang.String r2 = "Unable to parse, probably because of a previous error"
            r0.<init>((java.lang.String) r2)
            throw r0
        L_0x0475:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.d.g0.i.a(java.nio.ByteBuffer):void");
    }

    public int capacity() {
        if (this.f1858g) {
            return -1;
        }
        ByteBuffer byteBuffer = this.f1857f;
        if (byteBuffer != null) {
            return byteBuffer.remaining();
        }
        return this.f1854c;
    }

    public void close_tail() {
        this.f1858g = true;
        process();
    }

    public int position() {
        if (this.f1858g) {
            return -1;
        }
        ByteBuffer byteBuffer = this.f1857f;
        if (byteBuffer == null) {
            return 0;
        }
        return byteBuffer.position();
    }

    public void process() {
        ByteBuffer byteBuffer = this.f1857f;
        if (byteBuffer != null) {
            byteBuffer.flip();
            try {
                a(this.f1857f);
                if (this.f1857f.hasRemaining()) {
                    this.f1857f.compact();
                } else if (this.f1857f.capacity() > a0.B0) {
                    this.f1857f = null;
                } else {
                    this.f1857f.clear();
                }
            } catch (Throwable th) {
                if (this.f1857f.hasRemaining()) {
                    this.f1857f.compact();
                } else if (this.f1857f.capacity() > a0.B0) {
                    this.f1857f = null;
                } else {
                    this.f1857f.clear();
                }
                throw th;
            }
        } else {
            a(n);
        }
    }

    public ByteBuffer tail() {
        if (!this.f1858g) {
            if (this.f1857f == null) {
                this.f1857f = ByteBuffer.allocate(this.f1854c);
            }
            return this.f1857f;
        }
        throw new d0("tail closed");
    }

    public final void a() {
        if (this.f1863l != null && ((a0) this.a).Y()) {
            this.f1858g = ((a0) this.a).a(this.f1863l);
            this.f1863l = null;
        }
    }
}
