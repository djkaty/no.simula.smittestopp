package k.a.b.a.d.g0;

import com.microsoft.azure.storage.Constants;
import java.nio.ByteBuffer;
import k.a.b.a.d.d0;

public class g0 implements f0 {

    /* renamed from: h  reason: collision with root package name */
    public static final ByteBuffer f1848h;
    public final h0 a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public ByteBuffer f1849c = null;

    /* renamed from: d  reason: collision with root package name */
    public ByteBuffer f1850d = null;

    /* renamed from: e  reason: collision with root package name */
    public boolean f1851e = false;

    /* renamed from: f  reason: collision with root package name */
    public boolean f1852f = false;

    /* renamed from: g  reason: collision with root package name */
    public boolean f1853g = true;

    static {
        ByteBuffer allocate = ByteBuffer.allocate(0);
        allocate.flip();
        f1848h = allocate.asReadOnlyBuffer();
    }

    public g0(h0 h0Var, int i2, boolean z) {
        this.a = h0Var;
        this.b = i2 <= 0 ? Constants.MIN_PERMITTED_BLOCK_SIZE : i2;
        this.f1853g = z;
    }

    public final void a() {
        this.f1850d = null;
        this.f1849c = null;
    }

    public void close_head() {
        this.f1852f = true;
        ((a0) this.a).a((d0) null);
        a();
    }

    public ByteBuffer head() {
        pending();
        ByteBuffer byteBuffer = this.f1850d;
        return byteBuffer != null ? byteBuffer : f1848h;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:107:0x019c, code lost:
        if ((r9.a != null) != false) goto L_0x019e;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int pending() {
        /*
            r14 = this;
            boolean r0 = r14.f1852f
            r1 = -1
            if (r0 == 0) goto L_0x0006
            return r1
        L_0x0006:
            java.nio.ByteBuffer r0 = r14.f1849c
            r2 = 0
            if (r0 != 0) goto L_0x0029
            int r0 = r14.b
            java.nio.ByteBuffer r0 = java.nio.ByteBuffer.allocate(r0)
            r14.f1849c = r0
            boolean r3 = r14.f1853g
            if (r3 == 0) goto L_0x001e
            java.nio.ByteBuffer r0 = r0.asReadOnlyBuffer()
            r14.f1850d = r0
            goto L_0x0024
        L_0x001e:
            java.nio.ByteBuffer r0 = r0.duplicate()
            r14.f1850d = r0
        L_0x0024:
            java.nio.ByteBuffer r0 = r14.f1850d
            r0.limit(r2)
        L_0x0029:
            k.a.b.a.d.g0.h0 r0 = r14.a
            java.nio.ByteBuffer r3 = r14.f1849c
            k.a.b.a.d.g0.a0 r0 = (k.a.b.a.d.g0.a0) r0
            boolean r4 = r0.M
            r5 = 1
            if (r4 != 0) goto L_0x0056
            boolean r4 = r0.X()
            if (r4 == 0) goto L_0x004a
            java.lang.String r4 = k.a.b.a.d.g0.a0.F0
            java.lang.String r6 = "AMQP"
            r0.a((java.lang.String) r4, (java.lang.String) r6)
            k.a.b.a.d.g0.p r4 = r0.V()
            if (r4 == 0) goto L_0x004a
            r4.d()
        L_0x004a:
            k.a.b.a.d.g0.j r4 = r0.X
            byte[] r6 = k.a.b.a.d.g0.b.a
            k.a.b.a.d.g0.k r4 = r4.f1865c
            int r7 = r6.length
            r4.a(r6, r2, r7)
            r0.M = r5
        L_0x0056:
            boolean r4 = r0.K
            r6 = 0
            if (r4 != 0) goto L_0x00b8
            boolean r4 = r0.j0
            if (r4 != 0) goto L_0x0069
            k.a.b.a.d.g0.d r4 = r0.J
            if (r4 == 0) goto L_0x00b8
            k.a.b.a.d.g r4 = r4.x
            k.a.b.a.d.g r7 = k.a.b.a.d.g.UNINITIALIZED
            if (r4 == r7) goto L_0x00b8
        L_0x0069:
            k.a.b.a.b.n.m r4 = new k.a.b.a.b.n.m
            r4.<init>()
            k.a.b.a.d.g0.d r7 = r0.J
            java.lang.String r8 = ""
            if (r7 == 0) goto L_0x008a
            java.lang.String r7 = r7.V
            if (r7 != 0) goto L_0x0079
            goto L_0x007a
        L_0x0079:
            r8 = r7
        L_0x007a:
            r4.a(r8)
            k.a.b.a.d.g0.d r7 = r0.J
            java.lang.String r7 = r7.W
            r4.b = r7
            r4.f1632i = r6
            r4.f1631h = r6
            r4.f1633j = r6
            goto L_0x008d
        L_0x008a:
            r4.a(r8)
        L_0x008d:
            int r7 = r0.T
            if (r7 <= 0) goto L_0x0097
            k.a.b.a.b.h r7 = k.a.b.a.b.h.a((int) r7)
            r4.f1626c = r7
        L_0x0097:
            int r7 = r0.W
            if (r7 <= 0) goto L_0x00a2
            short r7 = (short) r7
            k.a.b.a.b.j r7 = k.a.b.a.b.j.a(r7)
            r4.f1627d = r7
        L_0x00a2:
            int r7 = r0.n0
            if (r7 <= 0) goto L_0x00b1
            k.a.b.a.b.h r7 = new k.a.b.a.b.h
            int r8 = r0.n0
            int r8 = r8 / 2
            r7.<init>(r8)
            r4.f1628e = r7
        L_0x00b1:
            r0.K = r5
            k.a.b.a.d.g0.j r7 = r0.X
            r7.a(r2, r4, r6, r6)
        L_0x00b8:
            k.a.b.a.d.g0.d r4 = r0.J
            if (r4 == 0) goto L_0x015c
            boolean r7 = r0.K
            if (r7 == 0) goto L_0x015c
            boolean r7 = r0.L
            if (r7 != 0) goto L_0x015c
            k.a.b.a.d.g0.f r4 = r4.J
        L_0x00c6:
            if (r4 == 0) goto L_0x015c
            boolean r7 = r4 instanceof k.a.b.a.d.g0.y
            if (r7 == 0) goto L_0x0158
            r7 = r4
            k.a.b.a.d.g0.y r7 = (k.a.b.a.d.g0.y) r7
            k.a.b.a.d.g0.k0 r8 = r0.a((k.a.b.a.d.g0.y) r7)
            k.a.b.a.d.g r9 = r7.x
            k.a.b.a.d.g r10 = k.a.b.a.d.g.UNINITIALIZED
            if (r9 == r10) goto L_0x0158
            boolean r9 = r8.t
            if (r9 != 0) goto L_0x0158
            r9 = 0
        L_0x00de:
            k.a.b.a.d.g0.d r10 = r0.J
            int r10 = r10.K
            if (r9 >= r10) goto L_0x010a
            java.util.Map<java.lang.Integer, k.a.b.a.d.g0.k0> r10 = r0.O
            java.lang.Integer r11 = java.lang.Integer.valueOf(r9)
            boolean r10 = r10.containsKey(r11)
            if (r10 != 0) goto L_0x0107
            java.util.Map<java.lang.Integer, k.a.b.a.d.g0.k0> r10 = r0.O
            java.lang.Integer r11 = java.lang.Integer.valueOf(r9)
            r10.put(r11, r8)
            boolean r10 = r8.a()
            if (r10 != 0) goto L_0x0104
            k.a.b.a.d.g0.y r10 = r8.b
            r10.w()
        L_0x0104:
            r8.f1873c = r9
            goto L_0x010b
        L_0x0107:
            int r9 = r9 + 1
            goto L_0x00de
        L_0x010a:
            r9 = -1
        L_0x010b:
            k.a.b.a.b.n.b r10 = new k.a.b.a.b.n.b
            r10.<init>()
            k.a.b.a.d.g r7 = r7.y
            k.a.b.a.d.g r11 = k.a.b.a.d.g.UNINITIALIZED
            if (r7 == r11) goto L_0x011f
            int r7 = r8.f1874d
            short r7 = (short) r7
            k.a.b.a.b.j r7 = k.a.b.a.b.j.a(r7)
            r10.a = r7
        L_0x011f:
            r8.d()
            k.a.b.a.b.h r7 = r8.f1875e
            r10.f1607e = r7
            k.a.b.a.b.h r7 = r8.f1877g
            if (r7 == 0) goto L_0x0150
            r10.f1605c = r7
            k.a.b.a.b.h r7 = r8.f1878h
            if (r7 == 0) goto L_0x0148
            r10.f1606d = r7
            k.a.b.a.b.h r7 = r8.f1879i
            if (r7 == 0) goto L_0x0140
            r10.b = r7
            k.a.b.a.d.g0.j r7 = r0.X
            r7.a(r9, r10, r6, r6)
            r8.t = r5
            goto L_0x0158
        L_0x0140:
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            java.lang.String r1 = "the next-outgoing-id field is mandatory"
            r0.<init>(r1)
            throw r0
        L_0x0148:
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            java.lang.String r1 = "the outgoing-window field is mandatory"
            r0.<init>(r1)
            throw r0
        L_0x0150:
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            java.lang.String r1 = "the incoming-window field is mandatory"
            r0.<init>(r1)
            throw r0
        L_0x0158:
            k.a.b.a.d.g0.f r4 = r4.C
            goto L_0x00c6
        L_0x015c:
            k.a.b.a.d.g0.d r4 = r0.J
            java.lang.String r7 = "the handle field is mandatory"
            if (r4 == 0) goto L_0x0245
            boolean r8 = r0.K
            if (r8 == 0) goto L_0x0245
            boolean r8 = r0.L
            if (r8 != 0) goto L_0x0245
            k.a.b.a.d.g0.f r4 = r4.J
        L_0x016c:
            if (r4 == 0) goto L_0x0245
            boolean r8 = r4 instanceof k.a.b.a.d.g0.m
            if (r8 == 0) goto L_0x0241
            r8 = r4
            k.a.b.a.d.g0.m r8 = (k.a.b.a.d.g0.m) r8
            k.a.b.a.d.g0.e0 r9 = r0.a((k.a.b.a.d.g0.m) r8)
            k.a.b.a.d.g0.y r10 = r8.H
            k.a.b.a.d.g0.k0 r10 = r0.a((k.a.b.a.d.g0.y) r10)
            k.a.b.a.d.g r11 = r8.x
            k.a.b.a.d.g r12 = k.a.b.a.d.g.UNINITIALIZED
            if (r11 == r12) goto L_0x0241
            boolean r11 = r9.f1847i
            if (r11 != 0) goto L_0x0241
            boolean r11 = r10.a()
            if (r11 == 0) goto L_0x0241
            k.a.b.a.d.g r11 = r8.y
            k.a.b.a.d.g r12 = k.a.b.a.d.g.ACTIVE
            if (r11 != r12) goto L_0x019e
            k.a.b.a.b.h r11 = r9.a
            if (r11 == 0) goto L_0x019b
            r11 = 1
            goto L_0x019c
        L_0x019b:
            r11 = 0
        L_0x019c:
            if (r11 == 0) goto L_0x01a4
        L_0x019e:
            k.a.b.a.d.g r11 = r8.y
            k.a.b.a.d.g r12 = k.a.b.a.d.g.UNINITIALIZED
            if (r11 != r12) goto L_0x0241
        L_0x01a4:
            r11 = 0
        L_0x01a5:
            r12 = 65535(0xffff, float:9.1834E-41)
            if (r11 > r12) goto L_0x0239
            k.a.b.a.b.h r12 = k.a.b.a.b.h.a((int) r11)
            java.util.Map<k.a.b.a.b.h, k.a.b.a.d.g0.e0<?>> r13 = r10.f1882l
            boolean r13 = r13.containsKey(r12)
            if (r13 != 0) goto L_0x0235
            java.util.Map<k.a.b.a.b.h, k.a.b.a.d.g0.e0<?>> r11 = r10.f1882l
            r11.put(r12, r9)
            k.a.b.a.b.h r11 = r9.a
            if (r11 != 0) goto L_0x01c4
            T r11 = r9.f1844f
            r11.w()
        L_0x01c4:
            r9.a = r12
            k.a.b.a.d.g r11 = r8.y
            k.a.b.a.d.g r13 = k.a.b.a.d.g.UNINITIALIZED
            if (r11 != r13) goto L_0x01d3
            java.util.Map<java.lang.String, k.a.b.a.d.g0.e0> r11 = r10.m
            java.lang.String r13 = r9.b
            r11.put(r13, r9)
        L_0x01d3:
            k.a.b.a.b.n.a r11 = new k.a.b.a.b.n.a
            r11.<init>()
            if (r12 == 0) goto L_0x022f
            r11.b = r12
            java.lang.String r12 = r9.b
            if (r12 == 0) goto L_0x0227
            r11.a = r12
            k.a.b.a.b.n.p r12 = r8.U
            if (r12 == 0) goto L_0x01e8
            r11.f1596d = r12
        L_0x01e8:
            k.a.b.a.b.n.n r12 = r8.V
            if (r12 == 0) goto L_0x01ee
            r11.f1597e = r12
        L_0x01ee:
            k.a.b.a.b.n.q r12 = r8.M
            if (r12 == 0) goto L_0x01f4
            r11.f1598f = r12
        L_0x01f4:
            k.a.b.a.b.n.r r12 = r8.O
            if (r12 == 0) goto L_0x01fa
            r11.f1599g = r12
        L_0x01fa:
            java.util.Map<k.a.b.a.b.f, java.lang.Object> r12 = r8.Y
            if (r12 == 0) goto L_0x0200
            r11.n = r12
        L_0x0200:
            boolean r12 = r4 instanceof k.a.b.a.d.g0.q
            if (r12 == 0) goto L_0x0207
            k.a.b.a.b.n.o r12 = k.a.b.a.b.n.o.RECEIVER
            goto L_0x0209
        L_0x0207:
            k.a.b.a.b.n.o r12 = k.a.b.a.b.n.o.SENDER
        L_0x0209:
            if (r12 == 0) goto L_0x021f
            r11.f1595c = r12
            boolean r8 = r8 instanceof k.a.b.a.d.g0.x
            if (r8 == 0) goto L_0x0215
            k.a.b.a.b.h r8 = k.a.b.a.b.h.z
            r11.f1602j = r8
        L_0x0215:
            int r8 = r10.f1873c
            k.a.b.a.d.g0.j r10 = r0.X
            r10.a(r8, r11, r6, r6)
            r9.f1847i = r5
            goto L_0x0241
        L_0x021f:
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            java.lang.String r1 = "Role cannot be null"
            r0.<init>(r1)
            throw r0
        L_0x0227:
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            java.lang.String r1 = "the name field is mandatory"
            r0.<init>(r1)
            throw r0
        L_0x022f:
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            r0.<init>(r7)
            throw r0
        L_0x0235:
            int r11 = r11 + 1
            goto L_0x01a5
        L_0x0239:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "no local handle available for allocation"
            r0.<init>(r1)
            throw r0
        L_0x0241:
            k.a.b.a.d.g0.f r4 = r4.C
            goto L_0x016c
        L_0x0245:
            k.a.b.a.d.g0.d r4 = r0.J
            if (r4 == 0) goto L_0x02c4
            boolean r8 = r0.K
            if (r8 == 0) goto L_0x02c4
            boolean r8 = r0.L
            if (r8 != 0) goto L_0x02c4
            k.a.b.a.d.g0.f r4 = r4.J
        L_0x0253:
            if (r4 == 0) goto L_0x0297
            boolean r8 = r4 instanceof k.a.b.a.d.g0.q
            if (r8 == 0) goto L_0x0294
            r8 = r4
            k.a.b.a.d.g0.q r8 = (k.a.b.a.d.g0.q) r8
            k.a.b.a.d.g0.e0 r9 = r0.a((k.a.b.a.d.g0.m) r8)
            k.a.b.a.d.g0.y r10 = r8.H
            k.a.b.a.d.g0.k0 r10 = r0.a((k.a.b.a.d.g0.y) r10)
            k.a.b.a.d.g r11 = r8.x
            k.a.b.a.d.g r12 = k.a.b.a.d.g.ACTIVE
            if (r11 != r12) goto L_0x0294
            boolean r11 = r10.a()
            if (r11 == 0) goto L_0x0294
            int r11 = r8.b0
            r8.b0 = r2
            if (r11 != 0) goto L_0x0286
            boolean r8 = r8.X
            if (r8 != 0) goto L_0x0286
            k.a.b.a.b.h r8 = r10.f1877g
            k.a.b.a.b.h r12 = k.a.b.a.b.h.z
            boolean r8 = r8.equals(r12)
            if (r8 == 0) goto L_0x0294
        L_0x0286:
            k.a.b.a.b.h r8 = r9.f1843e
            int r8 = r8.x
            int r8 = r8 + r11
            k.a.b.a.b.h r8 = k.a.b.a.b.h.a((int) r8)
            r9.f1843e = r8
            r0.a((k.a.b.a.d.g0.k0) r10, (k.a.b.a.d.g0.e0) r9)
        L_0x0294:
            k.a.b.a.d.g0.f r4 = r4.C
            goto L_0x0253
        L_0x0297:
            k.a.b.a.d.g0.d r4 = r0.J
            k.a.b.a.d.g0.f r4 = r4.J
        L_0x029b:
            if (r4 == 0) goto L_0x02c4
            boolean r8 = r4 instanceof k.a.b.a.d.g0.y
            if (r8 == 0) goto L_0x02c1
            r8 = r4
            k.a.b.a.d.g0.y r8 = (k.a.b.a.d.g0.y) r8
            k.a.b.a.d.g0.k0 r9 = r0.a((k.a.b.a.d.g0.y) r8)
            k.a.b.a.d.g r8 = r8.x
            k.a.b.a.d.g r10 = k.a.b.a.d.g.ACTIVE
            if (r8 != r10) goto L_0x02c1
            boolean r8 = r9.a()
            if (r8 == 0) goto L_0x02c1
            k.a.b.a.b.h r8 = r9.f1877g
            k.a.b.a.b.h r10 = k.a.b.a.b.h.z
            boolean r8 = r8.equals(r10)
            if (r8 == 0) goto L_0x02c1
            r0.a((k.a.b.a.d.g0.k0) r9, (k.a.b.a.d.g0.e0) r6)
        L_0x02c1:
            k.a.b.a.d.g0.f r4 = r4.C
            goto L_0x029b
        L_0x02c4:
            r0.b0()
            r0.b0()
            k.a.b.a.d.g0.d r4 = r0.J
            if (r4 == 0) goto L_0x0305
            boolean r8 = r0.K
            if (r8 == 0) goto L_0x0305
            boolean r8 = r0.L
            if (r8 != 0) goto L_0x0305
            k.a.b.a.d.g0.f r4 = r4.J
        L_0x02d8:
            if (r4 == 0) goto L_0x0305
            boolean r8 = r4 instanceof k.a.b.a.d.g0.x
            if (r8 == 0) goto L_0x0302
            r8 = r4
            k.a.b.a.d.g0.x r8 = (k.a.b.a.d.g0.x) r8
            boolean r9 = r8.X
            if (r9 == 0) goto L_0x0302
            int r9 = r8.T
            if (r9 <= 0) goto L_0x0302
            k.a.b.a.d.g0.j0 r9 = r8.a0
            k.a.b.a.d.g0.y r10 = r8.H
            k.a.b.a.d.g0.k0 r10 = r10.L
            k.a.b.a.b.h r11 = r9.f1843e
            k.a.b.a.b.h r12 = k.a.b.a.b.h.z
            r9.f1843e = r12
            k.a.b.a.b.h r12 = r9.f1842d
            k.a.b.a.b.h r11 = r12.a((k.a.b.a.b.h) r11)
            r9.f1842d = r11
            r8.T = r2
            r0.a((k.a.b.a.d.g0.k0) r10, (k.a.b.a.d.g0.e0) r9)
        L_0x0302:
            k.a.b.a.d.g0.f r4 = r4.C
            goto L_0x02d8
        L_0x0305:
            k.a.b.a.d.g0.d r4 = r0.J
            if (r4 == 0) goto L_0x038a
            boolean r8 = r0.K
            if (r8 == 0) goto L_0x038a
            k.a.b.a.d.g0.f r4 = r4.J
        L_0x030f:
            if (r4 == 0) goto L_0x038a
            boolean r8 = r4 instanceof k.a.b.a.d.g0.m
            if (r8 == 0) goto L_0x0387
            r8 = r4
            k.a.b.a.d.g0.m r8 = (k.a.b.a.d.g0.m) r8
            k.a.b.a.d.g0.e0 r9 = r0.a((k.a.b.a.d.g0.m) r8)
            k.a.b.a.d.g0.y r10 = r8.H
            k.a.b.a.d.g0.k0 r10 = r0.a((k.a.b.a.d.g0.y) r10)
            k.a.b.a.d.g r11 = r8.x
            k.a.b.a.d.g r12 = k.a.b.a.d.g.CLOSED
            if (r11 == r12) goto L_0x0329
            goto L_0x0384
        L_0x0329:
            k.a.b.a.b.h r11 = r9.a
            if (r11 == 0) goto L_0x032f
            r11 = 1
            goto L_0x0330
        L_0x032f:
            r11 = 0
        L_0x0330:
            if (r11 == 0) goto L_0x0384
            boolean r11 = r10.a()
            if (r11 == 0) goto L_0x0384
            boolean r11 = r0.L
            if (r11 != 0) goto L_0x0384
            boolean r11 = r8 instanceof k.a.b.a.d.g0.x
            if (r11 == 0) goto L_0x0353
            int r11 = r8.Q
            if (r11 <= 0) goto L_0x0353
            boolean r11 = r9.f1846h
            if (r11 != 0) goto L_0x0353
            boolean r11 = r10.s
            if (r11 != 0) goto L_0x0353
            boolean r11 = r0.Y
            if (r11 != 0) goto L_0x0353
            k.a.b.a.d.g0.f r4 = r4.C
            goto L_0x030f
        L_0x0353:
            k.a.b.a.b.h r11 = r9.a
            if (r11 == 0) goto L_0x035c
            T r12 = r9.f1844f
            r12.i()
        L_0x035c:
            r9.a = r6
            java.util.Map<k.a.b.a.b.h, k.a.b.a.d.g0.e0<?>> r9 = r10.f1882l
            r9.remove(r11)
            k.a.b.a.b.n.f r9 = new k.a.b.a.b.n.f
            r9.<init>()
            if (r11 == 0) goto L_0x037e
            r9.a = r11
            r9.b = r5
            k.a.b.a.b.n.j r8 = r8.z
            k.a.b.a.b.f r11 = r8.a
            if (r11 == 0) goto L_0x0376
            r9.f1611c = r8
        L_0x0376:
            int r8 = r10.f1873c
            k.a.b.a.d.g0.j r10 = r0.X
            r10.a(r8, r9, r6, r6)
            goto L_0x0384
        L_0x037e:
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            r0.<init>(r7)
            throw r0
        L_0x0384:
            r4.h()
        L_0x0387:
            k.a.b.a.d.g0.f r4 = r4.C
            goto L_0x030f
        L_0x038a:
            k.a.b.a.d.g0.d r4 = r0.J
            if (r4 == 0) goto L_0x03e0
            boolean r7 = r0.K
            if (r7 == 0) goto L_0x03e0
            k.a.b.a.d.g0.f r4 = r4.J
        L_0x0394:
            if (r4 == 0) goto L_0x03e0
            boolean r7 = r4 instanceof k.a.b.a.d.g0.y
            if (r7 == 0) goto L_0x03dd
            r7 = r4
            k.a.b.a.d.g0.y r7 = (k.a.b.a.d.g0.y) r7
            k.a.b.a.d.g r8 = r7.x
            k.a.b.a.d.g r9 = k.a.b.a.d.g.CLOSED
            if (r8 != r9) goto L_0x03da
            k.a.b.a.d.g0.k0 r8 = r7.L
            boolean r9 = r8.a()
            if (r9 == 0) goto L_0x03da
            boolean r9 = r0.L
            if (r9 != 0) goto L_0x03da
            boolean r7 = r0.b((k.a.b.a.d.g0.y) r7)
            if (r7 == 0) goto L_0x03b8
            k.a.b.a.d.g0.f r4 = r4.C
            goto L_0x0394
        L_0x03b8:
            int r7 = r8.f1873c
            java.util.Map<java.lang.Integer, k.a.b.a.d.g0.k0> r9 = r0.O
            java.lang.Integer r10 = java.lang.Integer.valueOf(r7)
            r9.remove(r10)
            r8.b()
            k.a.b.a.b.n.i r8 = new k.a.b.a.b.n.i
            r8.<init>()
            k.a.b.a.b.n.j r9 = r4.L()
            k.a.b.a.b.f r10 = r9.a
            if (r10 == 0) goto L_0x03d5
            r8.a = r9
        L_0x03d5:
            k.a.b.a.d.g0.j r9 = r0.X
            r9.a(r7, r8, r6, r6)
        L_0x03da:
            r4.h()
        L_0x03dd:
            k.a.b.a.d.g0.f r4 = r4.C
            goto L_0x0394
        L_0x03e0:
            boolean r4 = r0.j0
            if (r4 != 0) goto L_0x03ee
            k.a.b.a.d.g0.d r4 = r0.J
            if (r4 == 0) goto L_0x041e
            k.a.b.a.d.g r4 = r4.x
            k.a.b.a.d.g r7 = k.a.b.a.d.g.CLOSED
            if (r4 != r7) goto L_0x041e
        L_0x03ee:
            boolean r4 = r0.L
            if (r4 != 0) goto L_0x041e
            boolean r4 = r0.b((k.a.b.a.d.g0.y) r6)
            if (r4 != 0) goto L_0x041e
            k.a.b.a.b.n.c r4 = new k.a.b.a.b.n.c
            r4.<init>()
            k.a.b.a.d.g0.d r7 = r0.J
            if (r7 != 0) goto L_0x0406
            k.a.b.a.b.n.j r7 = r0.L()
            goto L_0x0408
        L_0x0406:
            k.a.b.a.b.n.j r7 = r7.z
        L_0x0408:
            if (r7 == 0) goto L_0x0410
            k.a.b.a.b.f r8 = r7.a
            if (r8 == 0) goto L_0x0410
            r4.a = r7
        L_0x0410:
            r0.L = r5
            k.a.b.a.d.g0.j r7 = r0.X
            r7.a(r2, r4, r6, r6)
            k.a.b.a.d.g0.d r4 = r0.J
            if (r4 == 0) goto L_0x041e
            r4.h()
        L_0x041e:
            k.a.b.a.d.g0.j r4 = r0.X
            r4.a(r3)
            boolean r3 = r0.L
            if (r3 != 0) goto L_0x042d
            boolean r0 = r0.i0
            if (r0 == 0) goto L_0x042c
            goto L_0x042d
        L_0x042c:
            r5 = 0
        L_0x042d:
            r14.f1851e = r5
            java.nio.ByteBuffer r0 = r14.f1850d
            java.nio.ByteBuffer r3 = r14.f1849c
            int r3 = r3.position()
            r0.limit(r3)
            java.nio.ByteBuffer r0 = r14.f1849c
            int r0 = r0.position()
            if (r0 != 0) goto L_0x044f
            java.nio.ByteBuffer r0 = r14.f1849c
            int r0 = r0.capacity()
            int r3 = k.a.b.a.d.g0.a0.B0
            if (r0 <= r3) goto L_0x044f
            r14.a()
        L_0x044f:
            boolean r0 = r14.f1851e
            if (r0 == 0) goto L_0x045e
            java.nio.ByteBuffer r0 = r14.f1849c
            if (r0 == 0) goto L_0x045d
            int r0 = r0.position()
            if (r0 != 0) goto L_0x045e
        L_0x045d:
            return r1
        L_0x045e:
            java.nio.ByteBuffer r0 = r14.f1849c
            if (r0 != 0) goto L_0x0463
            goto L_0x0467
        L_0x0463:
            int r2 = r0.position()
        L_0x0467:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.d.g0.g0.pending():int");
    }

    public void pop(int i2) {
        ByteBuffer byteBuffer = this.f1849c;
        if (byteBuffer != null) {
            byteBuffer.flip();
            this.f1849c.position(i2);
            this.f1849c.compact();
            this.f1850d.position(0);
            this.f1850d.limit(this.f1849c.position());
            if (this.f1849c.position() == 0 && this.f1849c.capacity() > a0.B0) {
                a();
            }
        }
    }
}
