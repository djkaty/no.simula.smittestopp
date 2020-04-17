package k.a.b.a.d.g0;

import com.microsoft.azure.sdk.iot.deps.transport.amqp.SaslListenerImpl;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.logging.Level;
import java.util.logging.Logger;
import k.a.b.a.b.f;
import k.a.b.a.b.l.c;
import k.a.b.a.b.l.e;
import k.a.b.a.b.l.g;
import k.a.b.a.c.i;
import k.a.b.a.c.k0;
import k.a.b.a.c.r;
import k.a.b.a.c.x;
import k.a.b.a.d.v;
import k.a.b.a.d.w;

public class v implements k.a.b.a.d.v, c.a<Void>, t, d0 {
    public static final Logger y = Logger.getLogger(v.class.getName());
    public final r b;

    /* renamed from: c  reason: collision with root package name */
    public final x f1917c;

    /* renamed from: d  reason: collision with root package name */
    public final a0 f1918d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f1919e = false;

    /* renamed from: f  reason: collision with root package name */
    public boolean f1920f = false;

    /* renamed from: g  reason: collision with root package name */
    public final int f1921g;

    /* renamed from: h  reason: collision with root package name */
    public final j f1922h;

    /* renamed from: i  reason: collision with root package name */
    public ByteBuffer f1923i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f1924j;

    /* renamed from: k  reason: collision with root package name */
    public k.a.b.a.b.a f1925k;

    /* renamed from: l  reason: collision with root package name */
    public u f1926l;
    public boolean m;
    public boolean n;
    public boolean o;
    public v.a p = v.a.PN_SASL_NONE;
    public v.b q = v.b.PN_SASL_IDLE;
    public String r;
    public boolean s;
    public f[] t;
    public f u;
    public b v;
    public boolean w = true;
    public w x;

    public class a extends w {
        public a(l0 l0Var, l0 l0Var2) {
            super(l0Var, l0Var2);
        }

        public boolean isDeterminationMade() {
            v vVar = v.this;
            if (vVar.v == b.SERVER && vVar.w) {
                return super.isDeterminationMade();
            }
            this._selectedTransportWrapper = this._wrapper1;
            return true;
        }
    }

    public enum b {
        CLIENT,
        SERVER
    }

    public class c implements l0 {
        public final b0 a;
        public final f0 b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f1927c;

        /* renamed from: d  reason: collision with root package name */
        public final ByteBuffer f1928d;

        /* renamed from: e  reason: collision with root package name */
        public final ByteBuffer f1929e;

        /* renamed from: f  reason: collision with root package name */
        public final ByteBuffer f1930f;

        /* renamed from: g  reason: collision with root package name */
        public final d f1931g;

        public /* synthetic */ c(d dVar, b0 b0Var, f0 f0Var, a aVar) {
            this.a = b0Var;
            this.b = f0Var;
            this.f1929e = ByteBuffer.allocate(v.this.f1921g);
            ByteBuffer allocate = ByteBuffer.allocate(v.this.f1921g);
            this.f1928d = allocate;
            this.f1931g = dVar;
            if (v.this.f1918d.g0) {
                this.f1930f = allocate.asReadOnlyBuffer();
            } else {
                this.f1930f = allocate.duplicate();
            }
            this.f1930f.limit(0);
        }

        public final boolean a() {
            v vVar = v.this;
            b bVar = vVar.v;
            if (bVar != null && (bVar != b.CLIENT || vVar.s)) {
                v vVar2 = v.this;
                if (vVar2.v != b.SERVER || (vVar2.m && vVar2.s)) {
                    return false;
                }
            }
            return true;
        }

        public final boolean b() {
            v vVar = v.this;
            b bVar = vVar.v;
            return bVar == null || (bVar == b.CLIENT && (!vVar.s || !vVar.o)) || (v.this.v == b.SERVER && !this.f1927c);
        }

        /* JADX WARNING: Code restructure failed: missing block: B:21:0x0090, code lost:
            if (r0.hasRemaining() == false) goto L_0x0039;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:22:0x0092, code lost:
            r6 = r0.get();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:23:0x009a, code lost:
            if (r6 == k.a.b.a.d.g0.b.b[1]) goto L_0x00b8;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:24:0x009c, code lost:
            r7 = new k.a.b.a.d.d0("AMQP SASL header mismatch value %x, expecting %x. In state: %s", java.lang.Byte.valueOf(r6), java.lang.Byte.valueOf(k.a.b.a.d.g0.b.b[1]), r5);
            r5 = k.a.b.a.d.g0.u.a.ERROR;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:25:0x00b8, code lost:
            r5 = k.a.b.a.d.g0.u.a.HEADER2;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:81:0x0247, code lost:
            r4 = r4 | (r0.get() & 255);
            r5 = k.a.b.a.d.g0.u.a.PRE_PARSE;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:82:0x0250, code lost:
            if (r4 >= 8) goto L_0x0265;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:83:0x0252, code lost:
            r7 = new k.a.b.a.d.d0("specified frame size %d smaller than minimum SASL frame header size 8", java.lang.Integer.valueOf(r4));
            r5 = k.a.b.a.d.g0.u.a.ERROR;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:85:0x0267, code lost:
            if (r4 <= r3.f1915f) goto L_0x0284;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:86:0x0269, code lost:
            r7 = new k.a.b.a.d.d0("specified frame size %d larger than maximum SASL frame size %d", java.lang.Integer.valueOf(r4), java.lang.Integer.valueOf(r3.f1915f));
            r5 = k.a.b.a.d.g0.u.a.ERROR;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:87:0x0284, code lost:
            r9 = r4 - 4;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:88:0x028a, code lost:
            if (r0.remaining() >= r9) goto L_0x0299;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:89:0x028c, code lost:
            r5 = java.nio.ByteBuffer.allocate(r9);
            r3.f1913d = r5;
            r5.put(r0);
            r5 = k.a.b.a.d.g0.u.a.BUFFERING;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void c() {
            /*
                r17 = this;
                r1 = r17
                boolean r0 = r17.a()
                r2 = 1
                if (r0 == 0) goto L_0x03ff
                java.util.logging.Logger r0 = k.a.b.a.d.g0.v.y
                java.util.logging.Level r3 = java.util.logging.Level.FINER
                boolean r0 = r0.isLoggable(r3)
                if (r0 == 0) goto L_0x002d
                java.util.logging.Logger r0 = k.a.b.a.d.g0.v.y
                java.util.logging.Level r3 = java.util.logging.Level.FINER
                java.lang.StringBuilder r4 = new java.lang.StringBuilder
                r4.<init>()
                k.a.b.a.d.g0.v r5 = k.a.b.a.d.g0.v.this
                r4.append(r5)
                java.lang.String r5 = " about to call input."
                r4.append(r5)
                java.lang.String r4 = r4.toString()
                r0.log(r3, r4)
            L_0x002d:
                k.a.b.a.d.g0.v r0 = k.a.b.a.d.g0.v.this
                k.a.b.a.d.g0.u r3 = r0.f1926l
                java.nio.ByteBuffer r0 = r1.f1929e
                int r4 = r3.f1912c
                k.a.b.a.d.g0.u$a r5 = r3.b
                r7 = 0
                r8 = 0
            L_0x0039:
                boolean r9 = r0.hasRemaining()
                if (r9 == 0) goto L_0x03ec
                k.a.b.a.d.g0.u$a r9 = k.a.b.a.d.g0.u.a.ERROR
                if (r5 == r9) goto L_0x03ec
                k.a.b.a.d.g0.t r9 = r3.a
                k.a.b.a.d.g0.v r9 = (k.a.b.a.d.g0.v) r9
                boolean r9 = r9.b()
                if (r9 != 0) goto L_0x03ec
                int r9 = r5.ordinal()
                r10 = 4
                r11 = 8
                java.lang.String r12 = "AMQP SASL header mismatch value %x, expecting %x. In state: %s"
                r13 = 3
                r14 = 2
                r15 = 0
                switch(r9) {
                    case 0: goto L_0x005e;
                    case 1: goto L_0x008c;
                    case 2: goto L_0x00ba;
                    case 3: goto L_0x00e9;
                    case 4: goto L_0x0118;
                    case 5: goto L_0x0147;
                    case 6: goto L_0x0178;
                    case 7: goto L_0x01a9;
                    case 8: goto L_0x01f6;
                    case 9: goto L_0x021f;
                    case 10: goto L_0x0233;
                    case 11: goto L_0x0247;
                    case 12: goto L_0x0250;
                    case 13: goto L_0x0299;
                    case 14: goto L_0x02e0;
                    default: goto L_0x005c;
                }
            L_0x005c:
                goto L_0x03e9
            L_0x005e:
                boolean r9 = r0.hasRemaining()
                if (r9 == 0) goto L_0x03e9
                byte r9 = r0.get()
                byte[] r16 = k.a.b.a.d.g0.b.b
                byte r6 = r16[r15]
                if (r9 == r6) goto L_0x008a
                k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
                java.lang.Object[] r6 = new java.lang.Object[r13]
                java.lang.Byte r9 = java.lang.Byte.valueOf(r9)
                r6[r15] = r9
                byte[] r9 = k.a.b.a.d.g0.b.b
                byte r9 = r9[r15]
                java.lang.Byte r9 = java.lang.Byte.valueOf(r9)
                r6[r2] = r9
                r6[r14] = r5
                r7.<init>((java.lang.String) r12, (java.lang.Object[]) r6)
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.ERROR
                goto L_0x0039
            L_0x008a:
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.HEADER1
            L_0x008c:
                boolean r6 = r0.hasRemaining()
                if (r6 == 0) goto L_0x0039
                byte r6 = r0.get()
                byte[] r9 = k.a.b.a.d.g0.b.b
                byte r9 = r9[r2]
                if (r6 == r9) goto L_0x00b8
                k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
                java.lang.Object[] r9 = new java.lang.Object[r13]
                java.lang.Byte r6 = java.lang.Byte.valueOf(r6)
                r9[r15] = r6
                byte[] r6 = k.a.b.a.d.g0.b.b
                byte r6 = r6[r2]
                java.lang.Byte r6 = java.lang.Byte.valueOf(r6)
                r9[r2] = r6
                r9[r14] = r5
                r7.<init>((java.lang.String) r12, (java.lang.Object[]) r9)
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.ERROR
                goto L_0x0039
            L_0x00b8:
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.HEADER2
            L_0x00ba:
                boolean r6 = r0.hasRemaining()
                if (r6 == 0) goto L_0x0039
                byte r6 = r0.get()
                byte[] r9 = k.a.b.a.d.g0.b.b
                byte r9 = r9[r14]
                if (r6 == r9) goto L_0x00e7
                k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
                java.lang.Object[] r9 = new java.lang.Object[r13]
                java.lang.Byte r6 = java.lang.Byte.valueOf(r6)
                r9[r15] = r6
                byte[] r6 = k.a.b.a.d.g0.b.b
                byte r6 = r6[r14]
                java.lang.Byte r6 = java.lang.Byte.valueOf(r6)
                r9[r2] = r6
                r9[r14] = r5
                r7.<init>((java.lang.String) r12, (java.lang.Object[]) r9)
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.ERROR
                goto L_0x0039
            L_0x00e7:
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.HEADER3
            L_0x00e9:
                boolean r6 = r0.hasRemaining()
                if (r6 == 0) goto L_0x0039
                byte r6 = r0.get()
                byte[] r9 = k.a.b.a.d.g0.b.b
                byte r9 = r9[r13]
                if (r6 == r9) goto L_0x0116
                k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
                java.lang.Object[] r9 = new java.lang.Object[r13]
                java.lang.Byte r6 = java.lang.Byte.valueOf(r6)
                r9[r15] = r6
                byte[] r6 = k.a.b.a.d.g0.b.b
                byte r6 = r6[r13]
                java.lang.Byte r6 = java.lang.Byte.valueOf(r6)
                r9[r2] = r6
                r9[r14] = r5
                r7.<init>((java.lang.String) r12, (java.lang.Object[]) r9)
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.ERROR
                goto L_0x0039
            L_0x0116:
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.HEADER4
            L_0x0118:
                boolean r6 = r0.hasRemaining()
                if (r6 == 0) goto L_0x0039
                byte r6 = r0.get()
                byte[] r9 = k.a.b.a.d.g0.b.b
                byte r9 = r9[r10]
                if (r6 == r9) goto L_0x0145
                k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
                java.lang.Object[] r9 = new java.lang.Object[r13]
                java.lang.Byte r6 = java.lang.Byte.valueOf(r6)
                r9[r15] = r6
                byte[] r6 = k.a.b.a.d.g0.b.b
                byte r6 = r6[r10]
                java.lang.Byte r6 = java.lang.Byte.valueOf(r6)
                r9[r2] = r6
                r9[r14] = r5
                r7.<init>((java.lang.String) r12, (java.lang.Object[]) r9)
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.ERROR
                goto L_0x0039
            L_0x0145:
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.HEADER5
            L_0x0147:
                boolean r6 = r0.hasRemaining()
                if (r6 == 0) goto L_0x0039
                byte r6 = r0.get()
                byte[] r9 = k.a.b.a.d.g0.b.b
                r16 = 5
                byte r9 = r9[r16]
                if (r6 == r9) goto L_0x0176
                k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
                java.lang.Object[] r9 = new java.lang.Object[r13]
                java.lang.Byte r6 = java.lang.Byte.valueOf(r6)
                r9[r15] = r6
                byte[] r6 = k.a.b.a.d.g0.b.b
                byte r6 = r6[r16]
                java.lang.Byte r6 = java.lang.Byte.valueOf(r6)
                r9[r2] = r6
                r9[r14] = r5
                r7.<init>((java.lang.String) r12, (java.lang.Object[]) r9)
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.ERROR
                goto L_0x0039
            L_0x0176:
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.HEADER6
            L_0x0178:
                boolean r6 = r0.hasRemaining()
                if (r6 == 0) goto L_0x0039
                byte r6 = r0.get()
                byte[] r9 = k.a.b.a.d.g0.b.b
                r16 = 6
                byte r9 = r9[r16]
                if (r6 == r9) goto L_0x01a7
                k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
                java.lang.Object[] r9 = new java.lang.Object[r13]
                java.lang.Byte r6 = java.lang.Byte.valueOf(r6)
                r9[r15] = r6
                byte[] r6 = k.a.b.a.d.g0.b.b
                byte r6 = r6[r16]
                java.lang.Byte r6 = java.lang.Byte.valueOf(r6)
                r9[r2] = r6
                r9[r14] = r5
                r7.<init>((java.lang.String) r12, (java.lang.Object[]) r9)
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.ERROR
                goto L_0x0039
            L_0x01a7:
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.HEADER7
            L_0x01a9:
                boolean r6 = r0.hasRemaining()
                if (r6 == 0) goto L_0x0039
                byte r6 = r0.get()
                byte[] r9 = k.a.b.a.d.g0.b.b
                r16 = 7
                byte r9 = r9[r16]
                if (r6 == r9) goto L_0x01d8
                k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
                java.lang.Object[] r9 = new java.lang.Object[r13]
                java.lang.Byte r6 = java.lang.Byte.valueOf(r6)
                r9[r15] = r6
                byte[] r6 = k.a.b.a.d.g0.b.b
                byte r6 = r6[r16]
                java.lang.Byte r6 = java.lang.Byte.valueOf(r6)
                r9[r2] = r6
                r9[r14] = r5
                r7.<init>((java.lang.String) r12, (java.lang.Object[]) r9)
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.ERROR
                goto L_0x0039
            L_0x01d8:
                k.a.b.a.d.g0.a0 r5 = r3.f1916g
                boolean r5 = r5.X()
                if (r5 == 0) goto L_0x01f4
                k.a.b.a.d.g0.a0 r5 = r3.f1916g
                java.lang.String r6 = k.a.b.a.d.g0.a0.E0
                java.lang.String r9 = "SASL"
                r5.a((java.lang.String) r6, (java.lang.String) r9)
                k.a.b.a.d.g0.a0 r5 = r3.f1916g
                k.a.b.a.d.g0.p r5 = r5.V()
                if (r5 == 0) goto L_0x01f4
                r5.a()
            L_0x01f4:
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.SIZE_0
            L_0x01f6:
                boolean r6 = r0.hasRemaining()
                if (r6 != 0) goto L_0x01fe
                goto L_0x0039
            L_0x01fe:
                int r4 = r0.remaining()
                if (r4 < r10) goto L_0x020c
                int r4 = r0.getInt()
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.PRE_PARSE
                goto L_0x0039
            L_0x020c:
                byte r4 = r0.get()
                int r4 = r4 << 24
                r5 = -16777216(0xffffffffff000000, float:-1.7014118E38)
                r4 = r4 & r5
                boolean r5 = r0.hasRemaining()
                if (r5 != 0) goto L_0x021f
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.SIZE_1
                goto L_0x0039
            L_0x021f:
                byte r5 = r0.get()
                int r5 = r5 << 16
                r6 = 16711680(0xff0000, float:2.3418052E-38)
                r5 = r5 & r6
                r4 = r4 | r5
                boolean r5 = r0.hasRemaining()
                if (r5 != 0) goto L_0x0233
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.SIZE_2
                goto L_0x0039
            L_0x0233:
                byte r5 = r0.get()
                int r5 = r5 << r11
                r6 = 65280(0xff00, float:9.1477E-41)
                r5 = r5 & r6
                r4 = r4 | r5
                boolean r5 = r0.hasRemaining()
                if (r5 != 0) goto L_0x0247
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.SIZE_3
                goto L_0x0039
            L_0x0247:
                byte r5 = r0.get()
                r5 = r5 & 255(0xff, float:3.57E-43)
                r4 = r4 | r5
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.PRE_PARSE
            L_0x0250:
                if (r4 >= r11) goto L_0x0265
                k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
                java.lang.Object[] r5 = new java.lang.Object[r2]
                java.lang.Integer r6 = java.lang.Integer.valueOf(r4)
                r5[r15] = r6
                java.lang.String r6 = "specified frame size %d smaller than minimum SASL frame header size 8"
                r7.<init>((java.lang.String) r6, (java.lang.Object[]) r5)
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.ERROR
                goto L_0x0039
            L_0x0265:
                int r6 = r3.f1915f
                if (r4 <= r6) goto L_0x0284
                k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
                java.lang.Object[] r5 = new java.lang.Object[r14]
                java.lang.Integer r6 = java.lang.Integer.valueOf(r4)
                r5[r15] = r6
                int r6 = r3.f1915f
                java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
                r5[r2] = r6
                java.lang.String r6 = "specified frame size %d larger than maximum SASL frame size %d"
                r7.<init>((java.lang.String) r6, (java.lang.Object[]) r5)
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.ERROR
                goto L_0x0039
            L_0x0284:
                int r6 = r0.remaining()
                int r9 = r4 + -4
                if (r6 >= r9) goto L_0x0299
                java.nio.ByteBuffer r5 = java.nio.ByteBuffer.allocate(r9)
                r3.f1913d = r5
                r5.put(r0)
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.BUFFERING
                goto L_0x0039
            L_0x0299:
                java.nio.ByteBuffer r6 = r3.f1913d
                if (r6 == 0) goto L_0x02e0
                int r6 = r0.remaining()
                java.nio.ByteBuffer r9 = r3.f1913d
                int r9 = r9.remaining()
                if (r6 >= r9) goto L_0x02b0
                java.nio.ByteBuffer r6 = r3.f1913d
                r6.put(r0)
                goto L_0x0039
            L_0x02b0:
                java.nio.ByteBuffer r5 = r0.duplicate()
                int r6 = r5.position()
                java.nio.ByteBuffer r8 = r3.f1913d
                int r8 = r8.remaining()
                int r8 = r8 + r6
                r5.limit(r8)
                int r6 = r0.position()
                java.nio.ByteBuffer r8 = r3.f1913d
                int r8 = r8.remaining()
                int r8 = r8 + r6
                r0.position(r8)
                java.nio.ByteBuffer r6 = r3.f1913d
                r6.put(r5)
                java.nio.ByteBuffer r5 = r3.f1913d
                r5.flip()
                java.nio.ByteBuffer r5 = r3.f1913d
                k.a.b.a.d.g0.u$a r6 = k.a.b.a.d.g0.u.a.PARSING
                r8 = r0
                r0 = r5
            L_0x02e0:
                byte r5 = r0.get()
                int r5 = r5 << r14
                r5 = r5 & 1023(0x3ff, float:1.434E-42)
                if (r5 >= r11) goto L_0x0302
                k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
                java.lang.Object[] r6 = new java.lang.Object[r14]
                java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
                r6[r15] = r5
                java.lang.Integer r5 = java.lang.Integer.valueOf(r11)
                r6[r2] = r5
                java.lang.String r5 = "specified frame data offset %d smaller than minimum frame header size %d"
                r7.<init>((java.lang.String) r5, (java.lang.Object[]) r6)
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.ERROR
                goto L_0x0039
            L_0x0302:
                if (r5 <= r4) goto L_0x031d
                k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
                java.lang.Object[] r6 = new java.lang.Object[r14]
                java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
                r6[r15] = r5
                java.lang.Integer r5 = java.lang.Integer.valueOf(r4)
                r6[r2] = r5
                java.lang.String r5 = "specified frame data offset %d larger than the frame size %d"
                r7.<init>((java.lang.String) r5, (java.lang.Object[]) r6)
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.ERROR
                goto L_0x0039
            L_0x031d:
                byte r6 = r0.get()
                r6 = r6 & 255(0xff, float:3.57E-43)
                r0.get()
                r0.get()
                if (r6 == r2) goto L_0x033e
                k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
                java.lang.Object[] r5 = new java.lang.Object[r2]
                java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
                r5[r15] = r6
                java.lang.String r6 = "unknown frame type: %d"
                r7.<init>((java.lang.String) r6, (java.lang.Object[]) r5)
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.ERROR
                goto L_0x0039
            L_0x033e:
                if (r5 == r11) goto L_0x0349
                int r6 = r0.position()
                int r6 = r6 + r5
                int r6 = r6 - r11
                r0.position(r6)
            L_0x0349:
                if (r8 != 0) goto L_0x035d
                java.nio.ByteBuffer r6 = r0.duplicate()
                int r8 = r6.position()
                int r8 = r8 + r4
                int r8 = r8 - r5
                r6.limit(r8)
                r0.position(r8)
                r8 = r0
                goto L_0x035e
            L_0x035d:
                r6 = r0
            L_0x035e:
                k.a.b.a.c.i r0 = r3.f1914e     // Catch:{ q -> 0x03dd }
                k.a.b.a.c.r r0 = (k.a.b.a.c.r) r0
                r0.a((java.nio.ByteBuffer) r6)     // Catch:{ q -> 0x03dd }
                k.a.b.a.c.i r0 = r3.f1914e     // Catch:{ q -> 0x03dd }
                k.a.b.a.c.r r0 = (k.a.b.a.c.r) r0
                java.lang.Object r0 = r0.d()     // Catch:{ q -> 0x03dd }
                boolean r5 = r6.hasRemaining()     // Catch:{ q -> 0x03dd }
                if (r5 == 0) goto L_0x0382
                int r5 = r6.remaining()     // Catch:{ q -> 0x03dd }
                byte[] r5 = new byte[r5]     // Catch:{ q -> 0x03dd }
                r6.get(r5)     // Catch:{ q -> 0x03dd }
                k.a.b.a.b.a r9 = new k.a.b.a.b.a     // Catch:{ q -> 0x03dd }
                r9.<init>(r5)     // Catch:{ q -> 0x03dd }
                goto L_0x0383
            L_0x0382:
                r9 = 0
            L_0x0383:
                boolean r5 = r0 instanceof k.a.b.a.b.l.c     // Catch:{ q -> 0x03dd }
                if (r5 == 0) goto L_0x03bf
                k.a.b.a.b.l.c r0 = (k.a.b.a.b.l.c) r0     // Catch:{ q -> 0x03dd }
                k.a.b.a.d.g0.t r5 = r3.a     // Catch:{ q -> 0x03dd }
                k.a.b.a.d.g0.v r5 = (k.a.b.a.d.g0.v) r5     // Catch:{ q -> 0x03dd }
                k.a.b.a.d.g0.a0 r10 = r5.f1918d     // Catch:{ q -> 0x03dd }
                java.lang.String r11 = k.a.b.a.d.g0.a0.E0     // Catch:{ q -> 0x03dd }
                boolean r12 = r10.Z()     // Catch:{ q -> 0x03dd }
                if (r12 == 0) goto L_0x039e
                r12 = 0
                r10.a(r11, r15, r0, r12)     // Catch:{ q -> 0x03dd }
                goto L_0x039e
            L_0x039c:
                r10 = 0
                goto L_0x03df
            L_0x039e:
                k.a.b.a.d.g0.a0 r10 = r5.f1918d     // Catch:{ q -> 0x03dd }
                k.a.b.a.d.g0.p r10 = r10.V()     // Catch:{ q -> 0x03dd }
                if (r10 == 0) goto L_0x03a9
                r10.c()     // Catch:{ q -> 0x03dd }
            L_0x03a9:
                r10 = 0
                r0.a(r5, r9, r10)     // Catch:{ q -> 0x03db }
                r3.f1912c = r15     // Catch:{ q -> 0x03db }
                k.a.b.a.d.g0.u$a r0 = k.a.b.a.d.g0.u.a.SIZE_0     // Catch:{ q -> 0x03db }
                r3.b = r0     // Catch:{ q -> 0x03db }
                r3.f1913d = r10     // Catch:{ q -> 0x03bb }
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.SIZE_0     // Catch:{ q -> 0x03bb }
                r0 = r8
                r8 = r10
                goto L_0x0039
            L_0x03bb:
                r0 = move-exception
                r6 = r8
                r8 = r10
                goto L_0x03df
            L_0x03bf:
                r10 = 0
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.ERROR     // Catch:{ q -> 0x03db }
                k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0     // Catch:{ q -> 0x03db }
                java.lang.String r9 = "Unexpected frame type encountered. Found a %s which does not implement %s"
                java.lang.Object[] r11 = new java.lang.Object[r14]     // Catch:{ q -> 0x03db }
                if (r0 != 0) goto L_0x03cd
                java.lang.String r0 = "null"
                goto L_0x03d1
            L_0x03cd:
                java.lang.Class r0 = r0.getClass()     // Catch:{ q -> 0x03db }
            L_0x03d1:
                r11[r15] = r0     // Catch:{ q -> 0x03db }
                java.lang.Class<k.a.b.a.b.l.c> r0 = k.a.b.a.b.l.c.class
                r11[r2] = r0     // Catch:{ q -> 0x03db }
                r7.<init>((java.lang.String) r9, (java.lang.Object[]) r11)     // Catch:{ q -> 0x03db }
                goto L_0x03e6
            L_0x03db:
                r0 = move-exception
                goto L_0x03df
            L_0x03dd:
                r0 = move-exception
                goto L_0x039c
            L_0x03df:
                k.a.b.a.d.g0.u$a r5 = k.a.b.a.d.g0.u.a.ERROR
                k.a.b.a.d.d0 r7 = new k.a.b.a.d.d0
                r7.<init>((java.lang.Throwable) r0)
            L_0x03e6:
                r0 = r6
                goto L_0x0039
            L_0x03e9:
                r10 = 0
                goto L_0x0039
            L_0x03ec:
                r3.b = r5
                r3.f1912c = r4
                k.a.b.a.d.g0.u$a r0 = k.a.b.a.d.g0.u.a.ERROR
                if (r5 != r0) goto L_0x03ff
                if (r7 == 0) goto L_0x03f7
                throw r7
            L_0x03f7:
                k.a.b.a.d.d0 r0 = new k.a.b.a.d.d0
                java.lang.String r2 = "Unable to parse, probably because of a previous error"
                r0.<init>((java.lang.String) r2)
                throw r0
            L_0x03ff:
                boolean r0 = r17.a()
                if (r0 != 0) goto L_0x045a
                java.util.logging.Logger r0 = k.a.b.a.d.g0.v.y
                java.util.logging.Level r3 = java.util.logging.Level.FINER
                boolean r0 = r0.isLoggable(r3)
                if (r0 == 0) goto L_0x0429
                java.util.logging.Logger r0 = k.a.b.a.d.g0.v.y
                java.util.logging.Level r3 = java.util.logging.Level.FINER
                java.lang.StringBuilder r4 = new java.lang.StringBuilder
                r4.<init>()
                k.a.b.a.d.g0.v r5 = k.a.b.a.d.g0.v.this
                r4.append(r5)
                java.lang.String r5 = " about to call plain input"
                r4.append(r5)
                java.lang.String r4 = r4.toString()
                r0.log(r3, r4)
            L_0x0429:
                java.nio.ByteBuffer r0 = r1.f1929e
                boolean r0 = r0.hasRemaining()
                if (r0 == 0) goto L_0x044f
                java.nio.ByteBuffer r0 = r1.f1929e
                k.a.b.a.d.g0.b0 r3 = r1.a
                int r0 = e.c.a.a.b.l.c.a((java.nio.ByteBuffer) r0, (k.a.b.a.d.g0.b0) r3)
                r3 = -1
                if (r0 != r3) goto L_0x0440
                k.a.b.a.d.g0.v r0 = k.a.b.a.d.g0.v.this
                r0.f1919e = r2
            L_0x0440:
                java.nio.ByteBuffer r0 = r1.f1929e
                boolean r0 = r0.hasRemaining()
                if (r0 != 0) goto L_0x0455
                k.a.b.a.d.g0.v$d r0 = r1.f1931g
                k.a.b.a.d.g0.b0 r2 = r0.a
                r0.f1933c = r2
                goto L_0x0455
            L_0x044f:
                k.a.b.a.d.g0.v$d r0 = r1.f1931g
                k.a.b.a.d.g0.b0 r2 = r0.a
                r0.f1933c = r2
            L_0x0455:
                k.a.b.a.d.g0.b0 r0 = r1.a
                r0.process()
            L_0x045a:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.d.g0.v.c.c():void");
        }

        public int capacity() {
            if (v.this.f1919e) {
                return -1;
            }
            if (a()) {
                return this.f1929e.remaining();
            }
            return this.a.capacity();
        }

        public void close_head() {
            d dVar = this.f1931g;
            dVar.f1934d = dVar.b;
            this.b.close_head();
        }

        public void close_tail() {
            v.this.f1919e = true;
            if (a()) {
                v.this.f1920f = true;
                this.a.close_tail();
                return;
            }
            this.a.close_tail();
        }

        public ByteBuffer head() {
            if (b() || this.f1928d.position() != 0) {
                pending();
                return this.f1930f;
            }
            d dVar = this.f1931g;
            dVar.f1934d = dVar.b;
            return this.b.head();
        }

        public int pending() {
            if (b() || this.f1928d.position() != 0) {
                if (b()) {
                    v vVar = v.this;
                    if (!vVar.f1924j) {
                        if (vVar.f1918d.X()) {
                            vVar.f1918d.a(a0.F0, "SASL");
                            p V = vVar.f1918d.V();
                            if (V != null) {
                                V.d();
                            }
                        }
                        j jVar = vVar.f1922h;
                        byte[] bArr = b.b;
                        jVar.f1865c.a(bArr, 0, bArr.length);
                        vVar.f1924j = true;
                        int length = b.b.length;
                    }
                    b bVar = vVar.v;
                    if (bVar == b.SERVER) {
                        if (!vVar.n && vVar.t != null) {
                            e eVar = new e();
                            eVar.a(vVar.t);
                            vVar.f1922h.a(0, eVar, (k0) null, (Runnable) null);
                            vVar.n = true;
                            vVar.q = v.b.PN_SASL_STEP;
                        }
                        if (vVar.q == v.b.PN_SASL_STEP && vVar.f1925k != null) {
                            k.a.b.a.b.l.a aVar = new k.a.b.a.b.l.a();
                            k.a.b.a.b.a aVar2 = vVar.f1925k;
                            if (aVar2 != null) {
                                aVar.a = aVar2;
                                vVar.f1922h.a(0, aVar, (k0) null, (Runnable) null);
                                vVar.f1925k = null;
                            } else {
                                throw new NullPointerException("the challenge field is mandatory");
                            }
                        }
                        if (vVar.s) {
                            k.a.b.a.b.l.f fVar = new k.a.b.a.b.l.f();
                            k.a.b.a.b.l.b bVar2 = k.a.b.a.b.l.b.values()[vVar.p.getCode()];
                            if (bVar2 != null) {
                                fVar.a = bVar2;
                                if (vVar.p == k.a.b.a.d.v.a) {
                                    fVar.b = vVar.f1925k;
                                }
                                vVar.f1922h.a(0, fVar, (k0) null, (Runnable) null);
                                vVar.f1925k = null;
                            } else {
                                throw new NullPointerException("the code field is mandatory");
                            }
                        }
                    } else if (bVar == b.CLIENT) {
                        if (vVar.q == v.b.PN_SASL_IDLE && vVar.u != null) {
                            k.a.b.a.b.l.d dVar = new k.a.b.a.b.l.d();
                            dVar.f1594c = vVar.r;
                            f fVar2 = vVar.u;
                            if (fVar2 != null) {
                                dVar.a = fVar2;
                                k.a.b.a.b.a aVar3 = vVar.f1925k;
                                if (aVar3 != null) {
                                    dVar.b = aVar3;
                                    vVar.f1925k = null;
                                }
                                vVar.o = true;
                                vVar.f1922h.a(0, dVar, (k0) null, (Runnable) null);
                                vVar.q = v.b.PN_SASL_STEP;
                                v.a aVar4 = vVar.p;
                                if (aVar4 != v.a.PN_SASL_NONE) {
                                    vVar.q = aVar4 == v.a.PN_SASL_OK ? v.b.PN_SASL_PASS : v.b.PN_SASL_FAIL;
                                }
                            } else {
                                throw new NullPointerException("the mechanism field is mandatory");
                            }
                        }
                        if (vVar.q == v.b.PN_SASL_STEP && vVar.f1925k != null) {
                            g gVar = new g();
                            k.a.b.a.b.a aVar5 = vVar.f1925k;
                            if (aVar5 != null) {
                                gVar.a = aVar5;
                                vVar.f1925k = null;
                                vVar.f1922h.a(0, gVar, (k0) null, (Runnable) null);
                            } else {
                                throw new NullPointerException("the response field is mandatory");
                            }
                        }
                    }
                    v.this.f1922h.a(this.f1928d);
                    if (v.y.isLoggable(Level.FINER)) {
                        Logger logger = v.y;
                        Level level = Level.FINER;
                        StringBuilder a2 = e.a.a.a.a.a("Finished writing SASL output. Output Buffer : ");
                        a2.append(this.f1928d);
                        logger.log(level, a2.toString());
                    }
                    if (v.this.s) {
                        this.f1927c = true;
                    }
                }
                this.f1930f.limit(this.f1928d.position());
                if (!v.this.f1920f || this.f1928d.position() != 0) {
                    return this.f1928d.position();
                }
                return -1;
            }
            d dVar2 = this.f1931g;
            dVar2.f1934d = dVar2.b;
            return this.b.pending();
        }

        public void pop(int i2) {
            if (b() || this.f1928d.position() != 0) {
                this.f1928d.flip();
                this.f1928d.position(i2);
                this.f1928d.compact();
                this.f1930f.position(0);
                this.f1930f.limit(this.f1928d.position());
                return;
            }
            d dVar = this.f1931g;
            dVar.f1934d = dVar.b;
            this.b.pop(i2);
        }

        public int position() {
            if (v.this.f1919e) {
                return -1;
            }
            if (a()) {
                return this.f1929e.position();
            }
            return this.a.position();
        }

        public void process() {
            this.f1929e.flip();
            try {
                c();
            } finally {
                this.f1929e.compact();
            }
        }

        public ByteBuffer tail() {
            if (!a()) {
                return this.a.tail();
            }
            return this.f1929e;
        }
    }

    public class d implements l0 {
        public final b0 a;
        public final f0 b;

        /* renamed from: c  reason: collision with root package name */
        public b0 f1933c;

        /* renamed from: d  reason: collision with root package name */
        public f0 f1934d;

        public /* synthetic */ d(v vVar, b0 b0Var, f0 f0Var, a aVar) {
            this.a = b0Var;
            this.b = f0Var;
            c cVar = new c(this, b0Var, f0Var, (a) null);
            this.f1933c = cVar;
            this.f1934d = cVar;
        }

        public int capacity() {
            return this.f1933c.capacity();
        }

        public void close_head() {
            this.f1934d.close_head();
        }

        public void close_tail() {
            this.f1933c.close_tail();
        }

        public ByteBuffer head() {
            return this.f1934d.head();
        }

        public int pending() {
            return this.f1934d.pending();
        }

        public void pop(int i2) {
            this.f1934d.pop(i2);
        }

        public int position() {
            return this.f1933c.position();
        }

        public void process() {
            this.f1933c.process();
        }

        public ByteBuffer tail() {
            return this.f1933c.tail();
        }
    }

    public v(a0 a0Var, int i2) {
        r rVar = new r();
        this.b = rVar;
        x xVar = new x(rVar);
        this.f1917c = xVar;
        this.f1918d = a0Var;
        this.f1921g = i2;
        e.c.a.a.b.l.c.a((i) this.b, xVar);
        this.f1926l = new u(this, this.b, i2, this.f1918d);
        this.f1922h = new j(this.f1917c, i2, (byte) 1, this.f1918d);
    }

    public void a(String... strArr) {
        if (strArr != null) {
            this.t = new f[strArr.length];
            for (int i2 = 0; i2 < strArr.length; i2++) {
                this.t[i2] = f.a(strArr[i2]);
            }
        }
        if (this.v == b.CLIENT) {
            this.u = f.a(strArr[0]);
        }
    }

    public boolean b() {
        return this.s && (this.v == b.CLIENT || this.m);
    }

    public String toString() {
        StringBuilder a2 = e.a.a.a.a.a("SaslImpl [_outcome=");
        a2.append(this.p);
        a2.append(", state=");
        a2.append(this.q);
        a2.append(", done=");
        a2.append(this.s);
        a2.append(", role=");
        a2.append(this.v);
        a2.append("]");
        return a2.toString();
    }

    public l0 wrap(b0 b0Var, f0 f0Var) {
        return new a(new d(this, b0Var, f0Var, (a) null), new o(f0Var, b0Var));
    }

    public final void a(b bVar) {
        if (bVar != this.v) {
            StringBuilder a2 = e.a.a.a.a.a("Role is ");
            a2.append(this.v);
            a2.append(" but should be ");
            a2.append(bVar);
            throw new IllegalStateException(a2.toString());
        }
    }

    public void a(String str, String str2) {
        a();
        this.u = f.a(SaslListenerImpl.PLAIN);
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        byte[] bytes2 = str2.getBytes(StandardCharsets.UTF_8);
        byte[] bArr = new byte[(bytes.length + bytes2.length + 2)];
        System.arraycopy(bytes, 0, bArr, 1, bytes.length);
        System.arraycopy(bytes2, 0, bArr, bytes.length + 2, bytes2.length);
        this.f1925k = new k.a.b.a.b.a(bArr);
    }

    public void a() {
        this.v = b.CLIENT;
        f[] fVarArr = this.t;
        if (fVarArr != null) {
            this.u = fVarArr[0];
        }
    }
}
