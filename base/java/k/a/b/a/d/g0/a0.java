package k.a.b.a.d.g0;

import com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpResourceLimitExceededException;
import com.microsoft.azure.storage.Constants;
import e.a.a.a.a;
import e.c.a.a.b.l.c;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import k.a.b.a.b.f;
import k.a.b.a.b.n.j;
import k.a.b.a.b.n.k;
import k.a.b.a.b.n.l;
import k.a.b.a.b.n.m;
import k.a.b.a.c.i;
import k.a.b.a.c.k0;
import k.a.b.a.c.r;
import k.a.b.a.c.x;
import k.a.b.a.d.b0;
import k.a.b.a.d.d0;
import k.a.b.a.d.e0;
import k.a.b.a.d.f0;
import k.a.b.a.d.g0.m0.g;
import k.a.b.a.d.g0.v;
import k.a.b.a.d.h;
import k.a.b.a.d.s;
import k.a.b.a.d.v;
import k.a.b.a.d.z;
import k.a.b.a.g.d;

public class a0 extends f implements s, l.a<Integer>, h, h0, c0 {
    public static final int B0 = Integer.getInteger("proton.transport_buffer_release_threshold", 2097152).intValue();
    public static final boolean C0;
    public static final int D0 = Integer.getInteger("proton.trace_frame_payload_length", 1024).intValue();
    public static String E0 = "<-";
    public static String F0 = "->";
    public final k.a.b.a.b.n.s A0;
    public int H;
    public i I;
    public d J;
    public boolean K;
    public boolean L;
    public boolean M;
    public Map<Integer, k0> N;
    public Map<Integer, k0> O;
    public b0 P;
    public f0 Q;
    public r R;
    public x S;
    public int T;
    public int U;
    public int V;
    public int W;
    public final j X;
    public boolean Y;
    public m Z;
    public v a0;
    public g b0;
    public final s<p> c0;
    public boolean d0;
    public boolean e0;
    public boolean f0;
    public boolean g0;
    public h h0;
    public boolean i0;
    public boolean j0;
    public boolean k0;
    public boolean l0;
    public boolean m0;
    public int n0;
    public int o0;
    public long p0;
    public long q0;
    public long r0;
    public long s0;
    public long t0;
    public long u0;
    public k.a.b.a.g.g v0;
    public d w0;
    public List<d0> x0;
    public final k.a.b.a.b.n.g y0;
    public final k z0;

    static {
        String str = System.getenv("PN_TRACE_FRM");
        C0 = "true".equalsIgnoreCase(str) || "1".equals(str) || "yes".equalsIgnoreCase(str);
    }

    public a0() {
        this.H = C0 ? 2 : 0;
        this.N = new HashMap();
        this.O = new HashMap();
        r rVar = new r();
        this.R = rVar;
        this.S = new x(rVar);
        this.T = -1;
        this.U = Constants.PAGE_SIZE;
        this.V = 0;
        this.W = 65535;
        this.c0 = new s<>(null);
        e0 e0Var = f0.a;
        this.f0 = true;
        this.g0 = true;
        this.h0 = this;
        this.i0 = false;
        this.k0 = false;
        this.l0 = false;
        this.m0 = false;
        this.n0 = 0;
        this.o0 = 0;
        this.p0 = 0;
        this.q0 = 0;
        this.r0 = 0;
        this.s0 = 0;
        this.t0 = 0;
        this.u0 = 0;
        this.y0 = new k.a.b.a.b.n.g();
        this.z0 = new k();
        this.A0 = new k.a.b.a.b.n.s();
        c.a((i) this.R, this.S);
        this.T = -1;
        this.X = new j(this.S, this.U, (byte) 0, this);
    }

    public void B() {
    }

    public v E() {
        if (this.a0 == null) {
            if (!this.e0) {
                W();
                v vVar = new v(this, this.U);
                this.a0 = vVar;
                b0 b0Var = this.P;
                f0 f0Var = this.Q;
                if (vVar != null) {
                    v.a aVar = new v.a(new v.d(vVar, b0Var, f0Var, (v.a) null), new o(f0Var, b0Var));
                    this.P = aVar;
                    this.Q = aVar;
                } else {
                    throw null;
                }
            } else {
                throw new IllegalStateException("Sasl can't be initiated after transport has started processing");
            }
        }
        return this.a0;
    }

    public void F() {
    }

    public j L() {
        j jVar = this.z;
        if (jVar.a != null) {
            return jVar;
        }
        return null;
    }

    public void S() {
    }

    public p V() {
        return (p) this.c0.a;
    }

    public final void W() {
        if (!this.d0) {
            this.d0 = true;
            i iVar = new i(this.h0, this.R, this.T, this);
            this.I = iVar;
            this.P = iVar;
            this.Q = new g0(this, this.T, this.g0);
        }
    }

    public boolean X() {
        return ((this.H & 2) == 0 && this.c0.a == null) ? false : true;
    }

    public boolean Y() {
        return this.J != null || this.y == k.a.b.a.d.g.UNINITIALIZED;
    }

    public boolean Z() {
        return (this.H & 2) != 0;
    }

    public final long a(long j2, long j3) {
        long j4 = j2 + j3;
        if (j4 != 0) {
            return j4;
        }
        return 1;
    }

    public final k0 a(y yVar) {
        k0 k0Var = yVar.L;
        if (k0Var != null) {
            return k0Var;
        }
        k0 k0Var2 = new k0(this, yVar);
        yVar.L = k0Var2;
        return k0Var2;
    }

    public /* synthetic */ void a0() {
        this.A0.f1637f = true;
    }

    public void b(k.a.b.a.d.c cVar) {
        this.J = (d) cVar;
        a(h.b.CONNECTION_BOUND, (Object) cVar);
        d dVar = this.J;
        dVar.R = this;
        dVar.w();
        if (this.y != k.a.b.a.d.g.UNINITIALIZED) {
            d dVar2 = this.J;
            m mVar = this.Z;
            if (dVar2 != null) {
                dVar2.y = k.a.b.a.d.g.ACTIVE;
                String str = mVar.b;
                dVar2.a(h.b.CONNECTION_REMOTE_OPEN, dVar2);
                k.a.b.a.d.g gVar = this.y;
                k.a.b.a.d.g gVar2 = k.a.b.a.d.g.CLOSED;
                if (gVar == gVar2) {
                    this.J.y = gVar2;
                }
                i iVar = this.I;
                iVar.a();
                if (iVar.f1863l == null) {
                    iVar.process();
                    return;
                }
                return;
            }
            throw null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:115:0x01ea  */
    /* JADX WARNING: Removed duplicated region for block: B:116:0x01f0  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void b0() {
        /*
            r15 = this;
            k.a.b.a.d.g0.d r0 = r15.J
            if (r0 == 0) goto L_0x0244
            boolean r1 = r15.K
            if (r1 == 0) goto L_0x0244
            boolean r1 = r15.L
            if (r1 != 0) goto L_0x0244
            k.a.b.a.d.g0.e r0 = r0.S
        L_0x000e:
            if (r0 == 0) goto L_0x0244
            k.a.b.a.d.g0.m r1 = r0.H
            boolean r2 = r1 instanceof k.a.b.a.d.g0.x
            r3 = 0
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L_0x01f4
            k.a.b.a.d.g0.x r1 = (k.a.b.a.d.g0.x) r1
            k.a.b.a.d.g0.j0 r2 = r1.a0
            k.a.b.a.d.g0.y r6 = r1.H
            k.a.b.a.d.g0.k0 r7 = r6.L
            boolean r8 = r0.S
            if (r8 != 0) goto L_0x0192
            k.a.b.a.c.k0 r9 = r0.U
            if (r9 != 0) goto L_0x002b
            r9 = 0
            goto L_0x002f
        L_0x002b:
            int r9 = r9.c()
        L_0x002f:
            if (r9 > 0) goto L_0x0035
            k.a.b.a.d.g0.e r9 = r1.K
            if (r0 == r9) goto L_0x0192
        L_0x0035:
            k.a.b.a.b.h r9 = r7.o
            if (r9 != 0) goto L_0x003a
            goto L_0x0044
        L_0x003a:
            k.a.b.a.b.h r10 = k.a.b.a.b.h.z
            int r9 = r9.compareTo(r10)
            if (r9 <= 0) goto L_0x0044
            r9 = 1
            goto L_0x0045
        L_0x0044:
            r9 = 0
        L_0x0045:
            if (r9 == 0) goto L_0x0192
            k.a.b.a.b.h r9 = r2.f1843e
            k.a.b.a.b.h r10 = k.a.b.a.b.h.z
            int r9 = r9.compareTo(r10)
            if (r9 <= 0) goto L_0x0053
            r9 = 1
            goto L_0x0054
        L_0x0053:
            r9 = 0
        L_0x0054:
            if (r9 == 0) goto L_0x0192
            boolean r9 = r7.a()
            if (r9 == 0) goto L_0x0192
            k.a.b.a.b.h r9 = r2.a
            if (r9 == 0) goto L_0x0192
            k.a.b.a.d.g0.j r9 = r15.X
            k.a.b.a.d.g0.k r10 = r9.f1865c
            int r10 = r10.b
            int r9 = r9.f1868f
            if (r10 <= r9) goto L_0x006c
            r9 = 1
            goto L_0x006d
        L_0x006c:
            r9 = 0
        L_0x006d:
            if (r9 != 0) goto L_0x0192
            k.a.b.a.d.g0.e r9 = r2.f1872j
            if (r9 == 0) goto L_0x0077
            if (r9 == r0) goto L_0x0077
            goto L_0x01e8
        L_0x0077:
            k.a.b.a.d.g0.z r9 = r0.P
            if (r9 == 0) goto L_0x007e
            k.a.b.a.b.h r9 = r9.a
            goto L_0x0088
        L_0x007e:
            k.a.b.a.b.h r9 = r7.f1876f
            k.a.b.a.b.h r10 = k.a.b.a.b.h.A
            k.a.b.a.b.h r10 = r9.a((k.a.b.a.b.h) r10)
            r7.f1876f = r10
        L_0x0088:
            k.a.b.a.d.g0.z r10 = new k.a.b.a.d.g0.z
            r10.<init>(r9, r0, r2)
            r0.P = r10
            k.a.b.a.b.n.s r10 = r15.A0
            r10.b = r9
            k.a.b.a.b.a r11 = new k.a.b.a.b.a
            byte[] r12 = r0.G
            r11.<init>(r12)
            r10.f1634c = r11
            k.a.b.a.b.n.s r10 = r15.A0
            k.a.b.a.b.h r11 = r2.a
            r10.a(r11)
            k.a.b.a.b.n.s r10 = r15.A0
            r10.f1638g = r3
            r10.f1640i = r5
            r10.f1641j = r5
            r10.f1642k = r5
            k.a.b.a.b.n.e r11 = r0.I
            if (r11 == 0) goto L_0x00b4
            r10.f1639h = r11
            goto L_0x00b6
        L_0x00b4:
            r10.f1639h = r3
        L_0x00b6:
            boolean r10 = r0.J
            if (r10 == 0) goto L_0x00c1
            k.a.b.a.b.n.s r9 = r15.A0
            java.lang.Boolean r10 = java.lang.Boolean.TRUE
            r9.f1636e = r10
            goto L_0x00cc
        L_0x00c1:
            k.a.b.a.b.n.s r10 = r15.A0
            java.lang.Boolean r11 = java.lang.Boolean.FALSE
            r10.f1636e = r11
            java.util.Map<k.a.b.a.b.h, k.a.b.a.d.g0.e> r10 = r7.q
            r10.put(r9, r0)
        L_0x00cc:
            k.a.b.a.d.g0.e r9 = r1.K
            if (r9 != r0) goto L_0x00d5
            k.a.b.a.b.n.s r9 = r15.A0
            r9.f1637f = r4
            goto L_0x00d9
        L_0x00d5:
            k.a.b.a.b.n.s r9 = r15.A0
            r9.f1637f = r5
        L_0x00d9:
            int r9 = r0.N
            if (r9 != 0) goto L_0x00e4
            k.a.b.a.b.n.s r9 = r15.A0
            k.a.b.a.b.h r10 = k.a.b.a.b.h.z
            r9.f1635d = r10
            goto L_0x00ec
        L_0x00e4:
            k.a.b.a.b.n.s r10 = r15.A0
            k.a.b.a.b.h r9 = k.a.b.a.b.h.a((int) r9)
            r10.f1635d = r9
        L_0x00ec:
            k.a.b.a.c.k0 r9 = r0.U
            if (r9 != 0) goto L_0x00f2
            k.a.b.a.c.k0 r9 = k.a.b.a.d.g0.e.V
        L_0x00f2:
            int r10 = r9.c()
            int r11 = r7.f1873c     // Catch:{ all -> 0x017d }
            k.a.b.a.b.n.s r12 = r15.A0     // Catch:{ all -> 0x017d }
            k.a.b.a.d.g0.a r13 = new k.a.b.a.d.g0.a     // Catch:{ all -> 0x017d }
            r13.<init>(r15)     // Catch:{ all -> 0x017d }
            k.a.b.a.d.g0.j r14 = r15.X     // Catch:{ all -> 0x017d }
            r14.a(r11, r12, r9, r13)     // Catch:{ all -> 0x017d }
            k.a.b.a.c.k0 r11 = r0.U
            if (r11 == 0) goto L_0x0117
            r11.n()
            k.a.b.a.c.k0 r11 = r0.U
            boolean r11 = r11.b()
            if (r11 != 0) goto L_0x0117
            k.a.b.a.c.l r11 = r0.T
            r0.U = r11
        L_0x0117:
            k.a.b.a.b.h r11 = r7.f1879i
            k.a.b.a.b.h r12 = k.a.b.a.b.h.A
            k.a.b.a.b.h r11 = r11.a((k.a.b.a.b.h) r12)
            r7.f1879i = r11
            k.a.b.a.b.h r11 = r7.o
            k.a.b.a.b.h r12 = k.a.b.a.b.h.A
            k.a.b.a.b.h r11 = r11.c(r12)
            r7.o = r11
            boolean r11 = r9.b()
            if (r11 != 0) goto L_0x0160
            int r9 = -r10
            r6.c(r9)
            k.a.b.a.b.n.s r9 = r15.A0
            boolean r9 = r9.f1637f
            if (r9 != 0) goto L_0x016b
            r2.f1872j = r3
            r0.S = r4
            k.a.b.a.b.h r9 = r2.f1842d
            k.a.b.a.b.h r10 = k.a.b.a.b.h.A
            k.a.b.a.b.h r9 = r9.a((k.a.b.a.b.h) r10)
            r2.f1842d = r9
            k.a.b.a.b.h r9 = r2.f1843e
            k.a.b.a.b.h r10 = k.a.b.a.b.h.A
            k.a.b.a.b.h r9 = r9.c(r10)
            r2.f1843e = r9
            int r2 = r6.Q
            int r2 = r2 + -1
            r6.Q = r2
            int r2 = r1.Q
            int r2 = r2 + -1
            r1.Q = r2
            goto L_0x016b
        L_0x0160:
            int r9 = r9.c()
            int r10 = r10 - r9
            int r9 = -r10
            r6.c(r9)
            r2.f1872j = r0
        L_0x016b:
            boolean r2 = r15.f0
            if (r2 == 0) goto L_0x0192
            k.a.b.a.d.g r2 = r1.x
            k.a.b.a.d.g r6 = k.a.b.a.d.g.CLOSED
            if (r2 == r6) goto L_0x0192
            k.a.b.a.d.g0.d r2 = r15.J
            k.a.b.a.d.h$b r6 = k.a.b.a.d.h.b.LINK_FLOW
            r2.a(r6, r1)
            goto L_0x0192
        L_0x017d:
            r1 = move-exception
            k.a.b.a.c.k0 r2 = r0.U
            if (r2 == 0) goto L_0x0191
            r2.n()
            k.a.b.a.c.k0 r2 = r0.U
            boolean r2 = r2.b()
            if (r2 != 0) goto L_0x0191
            k.a.b.a.c.l r2 = r0.T
            r0.U = r2
        L_0x0191:
            throw r1
        L_0x0192:
            if (r8 == 0) goto L_0x01c6
            k.a.b.a.b.n.e r1 = r0.I
            if (r1 == 0) goto L_0x01c6
            k.a.b.a.d.g0.z r1 = r0.P
            k.a.b.a.b.n.g r2 = r15.y0
            k.a.b.a.b.h r6 = r1.a
            r2.a((k.a.b.a.b.h) r6)
            k.a.b.a.b.n.g r2 = r15.y0
            k.a.b.a.b.h r6 = r1.a
            r2.f1612c = r6
            k.a.b.a.b.n.o r6 = k.a.b.a.b.n.o.SENDER
            r2.a((k.a.b.a.b.n.o) r6)
            k.a.b.a.b.n.g r2 = r15.y0
            boolean r6 = r0.J
            r2.f1613d = r6
            r2.f1615f = r5
            if (r6 == 0) goto L_0x01b9
            r1.a()
        L_0x01b9:
            k.a.b.a.b.n.g r1 = r15.y0
            k.a.b.a.b.n.e r2 = r0.I
            r1.f1614e = r2
            int r2 = r7.f1873c
            k.a.b.a.d.g0.j r6 = r15.X
            r6.a(r2, r1, r3, r3)
        L_0x01c6:
            boolean r1 = r0.K
            if (r1 == 0) goto L_0x01cb
            goto L_0x01e7
        L_0x01cb:
            k.a.b.a.d.g0.m r1 = r0.H
            boolean r1 = r1 instanceof k.a.b.a.d.g0.x
            if (r1 == 0) goto L_0x01e7
            boolean r1 = r0.S
            if (r1 == 0) goto L_0x01d6
            goto L_0x01e7
        L_0x01d6:
            k.a.b.a.c.k0 r1 = r0.U
            if (r1 == 0) goto L_0x01df
            boolean r1 = r1.b()
            goto L_0x01e0
        L_0x01df:
            r1 = 0
        L_0x01e0:
            boolean r2 = r0.Q
            if (r2 != 0) goto L_0x01e6
            if (r1 == 0) goto L_0x01e7
        L_0x01e6:
            r5 = 1
        L_0x01e7:
            r5 = r5 ^ r4
        L_0x01e8:
            if (r5 == 0) goto L_0x01f0
            k.a.b.a.d.g0.e r0 = r0.i()
            goto L_0x000e
        L_0x01f0:
            k.a.b.a.d.g0.e r0 = r0.C
            goto L_0x000e
        L_0x01f4:
            k.a.b.a.d.g0.q r1 = (k.a.b.a.d.g0.q) r1
            k.a.b.a.d.g0.z r2 = r0.P
            k.a.b.a.d.g0.y r1 = r1.H
            k.a.b.a.d.g0.k0 r1 = r1.L
            boolean r6 = r1.a()
            if (r6 == 0) goto L_0x0237
            boolean r6 = r0.J
            k.a.b.a.b.n.e r7 = r0.I
            k.a.b.a.b.n.g r8 = r15.y0
            k.a.b.a.b.h r9 = r2.a
            r8.a((k.a.b.a.b.h) r9)
            k.a.b.a.b.n.g r8 = r15.y0
            k.a.b.a.b.h r9 = r2.a
            r8.f1612c = r9
            k.a.b.a.b.n.o r9 = k.a.b.a.b.n.o.RECEIVER
            r8.a((k.a.b.a.b.n.o) r9)
            k.a.b.a.b.n.g r8 = r15.y0
            r8.f1613d = r6
            r8.f1614e = r7
            r8.f1615f = r5
            if (r7 != 0) goto L_0x0228
            if (r6 == 0) goto L_0x0228
            k.a.b.a.b.n.e r5 = r0.M
            r8.f1614e = r5
        L_0x0228:
            int r1 = r1.f1873c
            k.a.b.a.b.n.g r5 = r15.y0
            k.a.b.a.d.g0.j r7 = r15.X
            r7.a(r1, r5, r3, r3)
            if (r6 == 0) goto L_0x0238
            r2.a()
            goto L_0x0238
        L_0x0237:
            r4 = 0
        L_0x0238:
            if (r4 == 0) goto L_0x0240
            k.a.b.a.d.g0.e r0 = r0.i()
            goto L_0x000e
        L_0x0240:
            k.a.b.a.d.g0.e r0 = r0.C
            goto L_0x000e
        L_0x0244:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.d.g0.a0.b0():void");
    }

    public int capacity() {
        W();
        return this.P.capacity();
    }

    public void close_head() {
        this.Q.close_head();
    }

    public void close_tail() {
        W();
        this.P.close_tail();
    }

    public ByteBuffer head() {
        W();
        return this.Q.head();
    }

    public boolean m() {
        return pending() == -1 && capacity() == -1;
    }

    public void n() {
    }

    public d o() {
        return this.J;
    }

    public int pending() {
        W();
        return this.Q.pending();
    }

    public void pop(int i2) {
        W();
        this.Q.pop(i2);
        this.q0 += (long) i2;
        if (pending() < 0 && !this.k0) {
            a(h.b.TRANSPORT_HEAD_CLOSED, (Object) this);
            this.k0 = true;
            if (this.l0) {
                a(h.b.TRANSPORT_CLOSED, (Object) this);
            }
        }
    }

    public void process() {
        this.e0 = true;
        try {
            W();
            int position = this.P.position();
            this.P.process();
            this.p0 += (long) (position - this.P.position());
        } catch (d0 e2) {
            this.i0 = true;
            throw e2;
        }
    }

    public ByteBuffer tail() {
        W();
        return this.P.tail();
    }

    public String toString() {
        StringBuilder a = a.a("TransportImpl [_connectionEndpoint=");
        a.append(this.J);
        a.append(", ");
        return a.a(a, super.toString(), "]");
    }

    public void v() {
        for (k0 next : this.O.values()) {
            next.b();
            next.c();
        }
        for (k0 next2 : this.N.values()) {
            next2.b();
            next2.c();
        }
        a(h.b.CONNECTION_UNBOUND, (Object) this.J);
        d dVar = this.J;
        List<y> list = dVar.H;
        if (list != null) {
            for (y next3 : list) {
                for (x c2 : next3.I.values()) {
                    c2.c(true);
                }
                for (q c3 : next3.J.values()) {
                    c3.c(true);
                }
                next3.c(true);
            }
        }
        if (!dVar.G) {
            dVar.c(true);
        }
        d dVar2 = this.J;
        dVar2.R = null;
        dVar2.i();
    }

    public void a(j jVar) {
        super.a(jVar);
        this.j0 = (jVar == null || jVar.a == null) ? false : true;
    }

    public z a(k.a.b.a.d.a0 a0Var) {
        if (this.b0 == null) {
            W();
            g gVar = new g(a0Var, (b0) null);
            this.b0 = gVar;
            l0 wrap = gVar.wrap(this.P, this.Q);
            this.P = wrap;
            this.Q = wrap;
        }
        return this.b0;
    }

    public final void a(k0 k0Var, e0 e0Var) {
        k kVar = this.z0;
        kVar.a = k0Var.f1880j;
        kVar.b(k0Var.f1879i);
        k0Var.d();
        this.z0.a(k0Var.f1877g);
        this.z0.c(k0Var.f1878h);
        k kVar2 = this.z0;
        kVar2.f1625k = null;
        if (e0Var != null) {
            kVar2.f1619e = e0Var.a;
            kVar2.f1620f = e0Var.f1842d;
            kVar2.f1621g = e0Var.f1843e;
            kVar2.f1623i = e0Var.f1844f.X;
        } else {
            kVar2.f1619e = null;
            kVar2.f1620f = null;
            kVar2.f1621g = null;
            kVar2.f1623i = false;
        }
        this.X.a(k0Var.f1873c, this.z0, (k0) null, (Runnable) null);
    }

    public final boolean b(y yVar) {
        if (this.J != null && !this.Y && (yVar == null || !yVar.L.s)) {
            for (f fVar = this.J.J; fVar != null; fVar = fVar.C) {
                if (fVar instanceof x) {
                    x xVar = (x) fVar;
                    if ((yVar == null || xVar.H == yVar) && xVar.Q != 0 && !a((m) xVar).f1846h) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final e0<?> a(m mVar) {
        e0<?> V2 = mVar.V();
        if (V2 != null) {
            return V2;
        }
        if (mVar instanceof q) {
            q qVar = (q) mVar;
            i0 i0Var = new i0(qVar);
            qVar.a0 = i0Var;
            return i0Var;
        }
        x xVar = (x) mVar;
        j0 j0Var = new j0(xVar);
        xVar.a0 = j0Var;
        return j0Var;
    }

    public boolean a(k.a.b.a.e.a aVar) {
        if (Y()) {
            String str = E0;
            if (Z()) {
                a(str, aVar.a, aVar.b, aVar.f1937c);
            }
            p pVar = (p) this.c0.a;
            if (pVar != null) {
                pVar.b(aVar);
            }
            aVar.b.a(this, aVar.f1937c, Integer.valueOf(aVar.a));
            return this.Y;
        }
        throw new IllegalStateException("Transport cannot accept frame: " + aVar);
    }

    public void a(h.b bVar, Object obj) {
        c cVar;
        d dVar = this.J;
        if (dVar != null && (cVar = dVar.X) != null) {
            cVar.a(bVar, obj);
        }
    }

    public void a(d0 d0Var) {
        String str;
        if (!this.Y || d0Var != null) {
            if (!this.j0) {
                if (d0Var == null) {
                    str = "connection aborted";
                } else {
                    str = d0Var.toString();
                }
                a(new j(k.a.b.a.b.n.d.a, str));
            }
            this.i0 = true;
        }
        if (this.j0 && !this.m0) {
            a(h.b.TRANSPORT_ERROR, (Object) this);
            this.m0 = true;
        }
        if (!this.l0) {
            a(h.b.TRANSPORT_TAIL_CLOSED, (Object) this);
            this.l0 = true;
            if (this.k0) {
                a(h.b.TRANSPORT_CLOSED, (Object) this);
            }
        }
    }

    public long a(long j2) {
        long j3;
        long j4 = j2;
        int i2 = this.n0;
        if (i2 > 0) {
            long j5 = this.r0;
            if (j5 == 0 || this.s0 != this.p0) {
                this.r0 = a(j4, (long) this.n0);
                this.s0 = this.p0;
            } else if (j5 - j4 <= 0) {
                this.r0 = a(j4, (long) i2);
                d dVar = this.J;
                if (!(dVar == null || dVar.x == k.a.b.a.d.g.CLOSED)) {
                    j jVar = new j(f.a(AmqpResourceLimitExceededException.errorCode), "local-idle-timeout expired");
                    this.J.a(jVar);
                    this.J.x = k.a.b.a.d.g.CLOSED;
                    if (!this.K) {
                        v vVar = this.a0;
                        if (vVar != null && !vVar.b()) {
                            v vVar2 = this.a0;
                            v.b bVar = vVar2.v;
                            if (bVar == null || bVar == v.b.CLIENT) {
                                vVar2.v = v.b.CLIENT;
                                vVar2.o = true;
                            } else {
                                vVar2.m = true;
                            }
                            vVar2.s = true;
                            vVar2.p = v.a.PN_SASL_SYS;
                        }
                        m mVar = new m();
                        this.K = true;
                        this.X.a(0, mVar, (k0) null, (Runnable) null);
                    }
                    if (!this.L) {
                        k.a.b.a.b.n.c cVar = new k.a.b.a.b.n.c();
                        cVar.a = jVar;
                        this.L = true;
                        this.X.a(0, cVar, (k0) null, (Runnable) null);
                    }
                    close_tail();
                }
            }
            j3 = this.r0;
        } else {
            j3 = 0;
        }
        int i3 = this.o0;
        if (i3 == 0 || this.L) {
            return j3;
        }
        long j6 = this.u0;
        if (j6 == 0 || this.t0 != this.q0) {
            this.u0 = a(j4, (long) (this.o0 / 2));
            this.t0 = this.q0;
        } else if (j6 - j4 <= 0) {
            this.u0 = a(j4, (long) (i3 / 2));
            if (pending() == 0) {
                this.X.a(0, (Object) null, (k0) null, (Runnable) null);
                this.t0 += (long) pending();
            }
        }
        if (j3 == 0) {
            return this.u0;
        }
        long j7 = this.u0;
        long j8 = this.r0;
        return j7 - j8 <= 0 ? j7 : j8;
    }

    public void a(String str, String str2) {
        if (Z()) {
            a(str, 0, str2, (k.a.b.a.b.a) null);
        }
    }

    public final void a(String str, int i2, Object obj, k.a.b.a.b.a aVar) {
        StringBuilder a = a.a("[");
        a.append(System.identityHashCode(this));
        a.append(":");
        a.append(i2);
        a.append("] ");
        a.append(str);
        a.append(" ");
        a.append(obj);
        if (aVar != null) {
            a.append(" (");
            a.append(aVar.f1569c);
            a.append(") ");
            int i3 = D0;
            byte[] bArr = aVar.a;
            int i4 = aVar.f1569c;
            int i5 = aVar.b;
            StringBuilder a2 = a.a("\"");
            boolean z = false;
            int i6 = 0;
            int i7 = 0;
            while (true) {
                if (i6 >= i4) {
                    break;
                }
                byte b = bArr[i5 + i6];
                if (b > 31 && b < Byte.MAX_VALUE && b != 92) {
                    i7++;
                    if (i7 > i3) {
                        break;
                    }
                    a2.append((char) b);
                } else {
                    i7 += 4;
                    if (i7 > i3) {
                        break;
                    }
                    a2.append(String.format("\\x%02x", new Object[]{Byte.valueOf(b)}));
                }
                i6++;
            }
            z = true;
            a2.append("\"");
            if (z) {
                a2.append("...(truncated)");
            }
            a.append(a2.toString());
        }
        System.out.println(a.toString());
    }

    public void a(d0 d0Var) {
        if (!this.e0) {
            if (this.x0 == null) {
                this.x0 = new ArrayList();
            }
            if (!this.x0.contains(d0Var)) {
                W();
                l0 wrap = d0Var.wrap(this.P, this.Q);
                this.P = wrap;
                this.Q = wrap;
                this.x0.add(d0Var);
                return;
            }
            return;
        }
        throw new IllegalStateException("Additional layer can't be added after transport has started processing");
    }
}
