package k.c.a.a.a.s;

import com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsDeviceTwin;
import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;
import java.util.Vector;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import k.c.a.a.a.f;
import k.c.a.a.a.i;
import k.c.a.a.a.j;
import k.c.a.a.a.k;
import k.c.a.a.a.o;
import k.c.a.a.a.p;
import k.c.a.a.a.q;
import k.c.a.a.a.r;
import k.c.a.a.a.s.s.d;
import k.c.a.a.a.s.s.e;
import k.c.a.a.a.s.s.u;
import k.c.a.a.a.t.c;

public class a {
    public final String a;
    public final k.c.a.a.a.t.b b;

    /* renamed from: c  reason: collision with root package name */
    public k.c.a.a.a.b f2199c;

    /* renamed from: d  reason: collision with root package name */
    public int f2200d;

    /* renamed from: e  reason: collision with root package name */
    public i[] f2201e;

    /* renamed from: f  reason: collision with root package name */
    public d f2202f;

    /* renamed from: g  reason: collision with root package name */
    public e f2203g;

    /* renamed from: h  reason: collision with root package name */
    public c f2204h;

    /* renamed from: i  reason: collision with root package name */
    public b f2205i;

    /* renamed from: j  reason: collision with root package name */
    public i f2206j;

    /* renamed from: k  reason: collision with root package name */
    public k.c.a.a.a.u.a f2207k;

    /* renamed from: l  reason: collision with root package name */
    public o f2208l;
    public f m;
    public boolean n;
    public byte o;
    public final Object p;
    public boolean q;
    public ExecutorService r;

    /* renamed from: k.c.a.a.a.s.a$a  reason: collision with other inner class name */
    public class C0105a implements Runnable {
        public String A;
        public a x = null;
        public q y;
        public d z;

        public C0105a(a aVar, q qVar, d dVar) {
            this.x = aVar;
            this.y = qVar;
            this.z = dVar;
            this.A = "MQTT Con: " + ((f) a.this.f2199c).y;
        }

        public void run() {
            k kVar;
            Thread.currentThread().setName(this.A);
            a aVar = a.this;
            aVar.b.b(aVar.a, "connectBG:run", "220");
            k e2 = null;
            try {
                for (j jVar : a.this.m.c()) {
                    jVar.a.a((k) null);
                }
                a.this.m.a(this.y, (u) this.z);
                i iVar = a.this.f2201e[a.this.f2200d];
                iVar.start();
                a.this.f2202f = new d(this.x, a.this.f2205i, a.this.m, iVar.b());
                a.this.f2202f.a("MQTT Rec: " + ((f) a.this.f2199c).y, a.this.r);
                a.this.f2203g = new e(this.x, a.this.f2205i, a.this.m, iVar.a());
                a.this.f2203g.a("MQTT Snd: " + ((f) a.this.f2199c).y, a.this.r);
                a.this.f2204h.a("MQTT Call: " + ((f) a.this.f2199c).y, a.this.r);
                a.this.a((u) this.z, this.y);
            } catch (k e3) {
                e2 = e3;
                a aVar2 = a.this;
                aVar2.b.a(aVar2.a, "connectBG:run", "212", (Object[]) null, e2);
            } catch (Exception e4) {
                a aVar3 = a.this;
                aVar3.b.a(aVar3.a, "connectBG:run", "209", (Object[]) null, e4);
                if (e4.getClass().getName().equals("java.security.GeneralSecurityException")) {
                    kVar = new p((Throwable) e4);
                } else {
                    kVar = new k((Throwable) e4);
                }
                e2 = kVar;
            }
            if (e2 != null) {
                a.this.a(this.y, e2);
            }
        }
    }

    public class b implements Runnable {
        public String A;
        public e x;
        public long y;
        public q z;

        public b(e eVar, long j2, q qVar) {
            this.x = eVar;
            this.y = j2;
            this.z = qVar;
        }

        public void a() {
            this.A = "MQTT Disc: " + ((f) a.this.f2199c).y;
            ExecutorService executorService = a.this.r;
            if (executorService == null) {
                new Thread(this).start();
            } else {
                executorService.execute(this);
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:10:0x0051, code lost:
            if (r1.a() != false) goto L_0x0091;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:23:0x0088, code lost:
            if (r1.a() != false) goto L_0x0091;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            /*
                r4 = this;
                java.lang.Thread r0 = java.lang.Thread.currentThread()
                java.lang.String r1 = r4.A
                r0.setName(r1)
                k.c.a.a.a.s.a r0 = k.c.a.a.a.s.a.this
                k.c.a.a.a.t.b r1 = r0.b
                java.lang.String r0 = r0.a
                java.lang.String r2 = "disconnectBG:run"
                java.lang.String r3 = "221"
                r1.b(r0, r2, r3)
                k.c.a.a.a.s.a r0 = k.c.a.a.a.s.a.this
                k.c.a.a.a.s.b r0 = r0.f2205i
                long r1 = r4.y
                r0.a((long) r1)
                r0 = 0
                k.c.a.a.a.s.a r1 = k.c.a.a.a.s.a.this     // Catch:{ k -> 0x0077, all -> 0x0054 }
                k.c.a.a.a.s.s.e r2 = r4.x     // Catch:{ k -> 0x0077, all -> 0x0054 }
                k.c.a.a.a.q r3 = r4.z     // Catch:{ k -> 0x0077, all -> 0x0054 }
                r1.a((k.c.a.a.a.s.s.u) r2, (k.c.a.a.a.q) r3)     // Catch:{ k -> 0x0077, all -> 0x0054 }
                k.c.a.a.a.s.a r1 = k.c.a.a.a.s.a.this     // Catch:{ k -> 0x0077, all -> 0x0054 }
                k.c.a.a.a.s.e r1 = r1.f2203g     // Catch:{ k -> 0x0077, all -> 0x0054 }
                if (r1 == 0) goto L_0x0040
                k.c.a.a.a.s.a r1 = k.c.a.a.a.s.a.this     // Catch:{ k -> 0x0077, all -> 0x0054 }
                k.c.a.a.a.s.e r1 = r1.f2203g     // Catch:{ k -> 0x0077, all -> 0x0054 }
                boolean r1 = r1.a()     // Catch:{ k -> 0x0077, all -> 0x0054 }
                if (r1 == 0) goto L_0x0040
                k.c.a.a.a.q r1 = r4.z     // Catch:{ k -> 0x0077, all -> 0x0054 }
                k.c.a.a.a.s.p r1 = r1.a     // Catch:{ k -> 0x0077, all -> 0x0054 }
                r1.c()     // Catch:{ k -> 0x0077, all -> 0x0054 }
            L_0x0040:
                k.c.a.a.a.q r1 = r4.z
                k.c.a.a.a.s.p r1 = r1.a
                r1.a(r0, r0)
                k.c.a.a.a.s.a r1 = k.c.a.a.a.s.a.this
                k.c.a.a.a.s.e r1 = r1.f2203g
                if (r1 == 0) goto L_0x008a
                boolean r1 = r1.a()
                if (r1 != 0) goto L_0x0091
                goto L_0x008a
            L_0x0054:
                r1 = move-exception
                k.c.a.a.a.q r2 = r4.z
                k.c.a.a.a.s.p r2 = r2.a
                r2.a(r0, r0)
                k.c.a.a.a.s.a r2 = k.c.a.a.a.s.a.this
                k.c.a.a.a.s.e r2 = r2.f2203g
                if (r2 == 0) goto L_0x0068
                boolean r2 = r2.a()
                if (r2 != 0) goto L_0x006f
            L_0x0068:
                k.c.a.a.a.q r2 = r4.z
                k.c.a.a.a.s.p r2 = r2.a
                r2.a()
            L_0x006f:
                k.c.a.a.a.s.a r2 = k.c.a.a.a.s.a.this
                k.c.a.a.a.q r3 = r4.z
                r2.a((k.c.a.a.a.q) r3, (k.c.a.a.a.k) r0)
                throw r1
            L_0x0077:
                k.c.a.a.a.q r1 = r4.z
                k.c.a.a.a.s.p r1 = r1.a
                r1.a(r0, r0)
                k.c.a.a.a.s.a r1 = k.c.a.a.a.s.a.this
                k.c.a.a.a.s.e r1 = r1.f2203g
                if (r1 == 0) goto L_0x008a
                boolean r1 = r1.a()
                if (r1 != 0) goto L_0x0091
            L_0x008a:
                k.c.a.a.a.q r1 = r4.z
                k.c.a.a.a.s.p r1 = r1.a
                r1.a()
            L_0x0091:
                k.c.a.a.a.s.a r1 = k.c.a.a.a.s.a.this
                k.c.a.a.a.q r2 = r4.z
                r1.a((k.c.a.a.a.q) r2, (k.c.a.a.a.k) r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: k.c.a.a.a.s.a.b.run():void");
        }
    }

    public a(k.c.a.a.a.b bVar, k.c.a.a.a.u.a aVar, o oVar, ExecutorService executorService) {
        String name = a.class.getName();
        this.a = name;
        this.b = c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", name);
        this.n = false;
        this.o = 3;
        this.p = new Object();
        this.q = false;
        this.o = 3;
        this.f2199c = bVar;
        this.f2207k = aVar;
        this.f2208l = oVar;
        r rVar = (r) oVar;
        if (rVar != null) {
            rVar.b = this;
            String str = ((f) bVar).y;
            rVar.f2198d = str;
            rVar.a.a(str);
            this.r = executorService;
            this.m = new f(((f) this.f2199c).y);
            this.f2204h = new c(this);
            b bVar2 = new b(aVar, this.m, this.f2204h, this, oVar);
            this.f2205i = bVar2;
            this.f2204h.M = bVar2;
            this.b.a(((f) this.f2199c).y);
            return;
        }
        throw null;
    }

    public void a(k.c.a.a.a.s.s.c cVar, k kVar) {
        int i2 = cVar.f2265g;
        synchronized (this.p) {
            if (i2 == 0) {
                this.b.b(this.a, "connectComplete", "215");
                this.o = 0;
                return;
            }
            this.b.b(this.a, "connectComplete", TelemetryEventStrings.Api.GET_BROKER_DEVICE_MODE, new Object[]{Integer.valueOf(i2)});
            throw kVar;
        }
    }

    public void b(u uVar, q qVar) {
        if (b() || ((!b() && (uVar instanceof d)) || (e() && (uVar instanceof e)))) {
            a(uVar, qVar);
        } else {
            this.b.b(this.a, "sendNoWait", TelemetryEventStrings.Api.BROKER_REMOVE_ACCOUNT_FROM_SHARED_DEVICE);
            throw k.b.c.e.a.a(32104);
        }
    }

    public boolean c() {
        boolean z;
        synchronized (this.p) {
            z = true;
            if (this.o != 1) {
                z = false;
            }
        }
        return z;
    }

    public boolean d() {
        boolean z;
        synchronized (this.p) {
            z = this.o == 3;
        }
        return z;
    }

    public boolean e() {
        boolean z;
        synchronized (this.p) {
            z = this.o == 2;
        }
        return z;
    }

    public boolean b() {
        boolean z;
        synchronized (this.p) {
            z = this.o == 0;
        }
        return z;
    }

    public void a(u uVar, q qVar) {
        this.b.b(this.a, "internalSend", AmqpsDeviceTwin.DEFAULT_STATUS_CODE, new Object[]{uVar.i(), uVar, qVar});
        p pVar = qVar.a;
        if (pVar.f2248k == null) {
            pVar.f2248k = this.f2199c;
            try {
                this.f2205i.a(uVar, qVar);
            } catch (k e2) {
                qVar.a.f2248k = null;
                if (uVar instanceof k.c.a.a.a.s.s.o) {
                    this.f2205i.a((k.c.a.a.a.s.s.o) uVar);
                }
                throw e2;
            }
        } else {
            this.b.b(this.a, "internalSend", "213", new Object[]{uVar.i(), uVar, qVar});
            throw new k(32201);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:23:0x005f, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(boolean r5) {
        /*
            r4 = this;
            java.lang.Object r0 = r4.p
            monitor-enter(r0)
            boolean r1 = r4.a()     // Catch:{ all -> 0x0060 }
            if (r1 != 0) goto L_0x005e
            boolean r1 = r4.d()     // Catch:{ all -> 0x0060 }
            if (r1 == 0) goto L_0x0011
            if (r5 == 0) goto L_0x0033
        L_0x0011:
            k.c.a.a.a.t.b r5 = r4.b     // Catch:{ all -> 0x0060 }
            java.lang.String r1 = r4.a     // Catch:{ all -> 0x0060 }
            java.lang.String r2 = "close"
            java.lang.String r3 = "224"
            r5.b(r1, r2, r3)     // Catch:{ all -> 0x0060 }
            boolean r5 = r4.c()     // Catch:{ all -> 0x0060 }
            if (r5 != 0) goto L_0x0056
            boolean r5 = r4.b()     // Catch:{ all -> 0x0060 }
            if (r5 != 0) goto L_0x004f
            boolean r5 = r4.e()     // Catch:{ all -> 0x0060 }
            if (r5 == 0) goto L_0x0033
            r5 = 1
            r4.q = r5     // Catch:{ all -> 0x0060 }
            monitor-exit(r0)     // Catch:{ all -> 0x0060 }
            return
        L_0x0033:
            r5 = 4
            r4.o = r5     // Catch:{ all -> 0x0060 }
            k.c.a.a.a.s.b r5 = r4.f2205i     // Catch:{ all -> 0x0060 }
            r5.c()     // Catch:{ all -> 0x0060 }
            r5 = 0
            r4.f2205i = r5     // Catch:{ all -> 0x0060 }
            r4.f2204h = r5     // Catch:{ all -> 0x0060 }
            r4.f2207k = r5     // Catch:{ all -> 0x0060 }
            r4.f2203g = r5     // Catch:{ all -> 0x0060 }
            r4.f2208l = r5     // Catch:{ all -> 0x0060 }
            r4.f2202f = r5     // Catch:{ all -> 0x0060 }
            r4.f2201e = r5     // Catch:{ all -> 0x0060 }
            r4.f2206j = r5     // Catch:{ all -> 0x0060 }
            r4.m = r5     // Catch:{ all -> 0x0060 }
            goto L_0x005e
        L_0x004f:
            r5 = 32100(0x7d64, float:4.4982E-41)
            k.c.a.a.a.k r5 = k.b.c.e.a.a((int) r5)     // Catch:{ all -> 0x0060 }
            throw r5     // Catch:{ all -> 0x0060 }
        L_0x0056:
            k.c.a.a.a.k r5 = new k.c.a.a.a.k     // Catch:{ all -> 0x0060 }
            r1 = 32110(0x7d6e, float:4.4996E-41)
            r5.<init>((int) r1)     // Catch:{ all -> 0x0060 }
            throw r5     // Catch:{ all -> 0x0060 }
        L_0x005e:
            monitor-exit(r0)     // Catch:{ all -> 0x0060 }
            return
        L_0x0060:
            r5 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0060 }
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: k.c.a.a.a.s.a.a(boolean):void");
    }

    public void a(i iVar, q qVar) {
        synchronized (this.p) {
            if (!d() || this.q) {
                this.b.b(this.a, "connect", TelemetryEventStrings.Api.BROKER_REMOVE_ACCOUNT, new Object[]{Byte.valueOf(this.o)});
                if (a() || this.q) {
                    throw new k(32111);
                } else if (c()) {
                    throw new k(32110);
                } else if (e()) {
                    throw new k(32102);
                } else {
                    throw k.b.c.e.a.a(32100);
                }
            } else {
                this.b.b(this.a, "connect", "214");
                this.o = 1;
                this.f2206j = iVar;
                d dVar = new d(((f) this.f2199c).y, this.f2206j.n, this.f2206j.f2191k, this.f2206j.a, this.f2206j.f2185e, this.f2206j.f2186f, this.f2206j.f2184d, this.f2206j.f2183c);
                b bVar = this.f2205i;
                long j2 = (long) this.f2206j.a;
                if (bVar != null) {
                    bVar.f2215i = TimeUnit.SECONDS.toNanos(j2);
                    this.f2205i.f2216j = this.f2206j.f2191k;
                    b bVar2 = this.f2205i;
                    bVar2.f2218l = this.f2206j.b;
                    bVar2.f2210d = new Vector(bVar2.f2218l);
                    this.m.e();
                    C0105a aVar = new C0105a(this, qVar, dVar);
                    ExecutorService executorService = a.this.r;
                    if (executorService == null) {
                        new Thread(aVar).start();
                    } else {
                        executorService.execute(aVar);
                    }
                } else {
                    throw null;
                }
            }
        }
    }

    /*  JADX ERROR: IndexOutOfBoundsException in pass: RegionMakerVisitor
        java.lang.IndexOutOfBoundsException: Index: 0, Size: 0
        	at java.util.ArrayList.rangeCheck(ArrayList.java:657)
        	at java.util.ArrayList.get(ArrayList.java:433)
        	at jadx.core.dex.nodes.InsnNode.getArg(InsnNode.java:101)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:611)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.processMonitorEnter(RegionMaker.java:561)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:133)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.processExcHandler(RegionMaker.java:1043)
        	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:975)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    /* JADX WARNING: Missing exception handler attribute for start block: B:107:0x016d */
    /* JADX WARNING: Missing exception handler attribute for start block: B:56:0x00cc */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x00d7 A[Catch:{ Exception -> 0x00df }] */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x00e4  */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x00eb  */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x0103 A[Catch:{ Exception -> 0x0108 }] */
    public void a(k.c.a.a.a.q r10, k.c.a.a.a.k r11) {
        /*
            r9 = this;
            java.lang.Object r0 = r9.p
            monitor-enter(r0)
            boolean r1 = r9.n     // Catch:{ all -> 0x0177 }
            if (r1 != 0) goto L_0x0175
            boolean r1 = r9.q     // Catch:{ all -> 0x0177 }
            if (r1 != 0) goto L_0x0175
            boolean r1 = r9.a()     // Catch:{ all -> 0x0177 }
            if (r1 == 0) goto L_0x0013
            goto L_0x0175
        L_0x0013:
            r1 = 1
            r9.n = r1     // Catch:{ all -> 0x0177 }
            k.c.a.a.a.t.b r2 = r9.b     // Catch:{ all -> 0x0177 }
            java.lang.String r3 = r9.a     // Catch:{ all -> 0x0177 }
            java.lang.String r4 = "shutdownConnection"
            java.lang.String r5 = "216"
            r2.b(r3, r4, r5)     // Catch:{ all -> 0x0177 }
            boolean r2 = r9.b()     // Catch:{ all -> 0x0177 }
            r3 = 0
            if (r2 != 0) goto L_0x0030
            boolean r2 = r9.e()     // Catch:{ all -> 0x0177 }
            if (r2 != 0) goto L_0x0030
            r2 = 0
            goto L_0x0031
        L_0x0030:
            r2 = 1
        L_0x0031:
            r4 = 2
            r9.o = r4     // Catch:{ all -> 0x0177 }
            monitor-exit(r0)     // Catch:{ all -> 0x0177 }
            if (r10 == 0) goto L_0x0042
            k.c.a.a.a.s.p r0 = r10.a
            boolean r0 = r0.b
            if (r0 != 0) goto L_0x0042
            k.c.a.a.a.s.p r0 = r10.a
            r0.a((k.c.a.a.a.k) r11)
        L_0x0042:
            k.c.a.a.a.s.c r0 = r9.f2204h
            if (r0 == 0) goto L_0x0049
            r0.e()
        L_0x0049:
            k.c.a.a.a.s.d r0 = r9.f2202f
            if (r0 == 0) goto L_0x0050
            r0.b()
        L_0x0050:
            k.c.a.a.a.s.i[] r0 = r9.f2201e     // Catch:{ Exception -> 0x005f }
            if (r0 == 0) goto L_0x005f
            k.c.a.a.a.s.i[] r0 = r9.f2201e     // Catch:{ Exception -> 0x005f }
            int r4 = r9.f2200d     // Catch:{ Exception -> 0x005f }
            r0 = r0[r4]     // Catch:{ Exception -> 0x005f }
            if (r0 == 0) goto L_0x005f
            r0.stop()     // Catch:{ Exception -> 0x005f }
        L_0x005f:
            k.c.a.a.a.s.f r0 = r9.m
            k.c.a.a.a.k r4 = new k.c.a.a.a.k
            r5 = 32102(0x7d66, float:4.4984E-41)
            r4.<init>((int) r5)
            r0.a((k.c.a.a.a.k) r4)
            k.c.a.a.a.t.b r0 = r9.b
            java.lang.String r4 = r9.a
            java.lang.String r5 = "handleOldTokens"
            java.lang.String r6 = "222"
            r0.b(r4, r5, r6)
            r0 = 0
            if (r10 == 0) goto L_0x0092
            k.c.a.a.a.s.f r4 = r9.m     // Catch:{ Exception -> 0x00cb }
            k.c.a.a.a.s.p r5 = r10.a     // Catch:{ Exception -> 0x00cb }
            java.lang.String r5 = r5.f2247j     // Catch:{ Exception -> 0x00cb }
            java.util.Hashtable r4 = r4.b     // Catch:{ Exception -> 0x00cb }
            java.lang.Object r4 = r4.get(r5)     // Catch:{ Exception -> 0x00cb }
            k.c.a.a.a.q r4 = (k.c.a.a.a.q) r4     // Catch:{ Exception -> 0x00cb }
            if (r4 != 0) goto L_0x0092
            k.c.a.a.a.s.f r4 = r9.m     // Catch:{ Exception -> 0x00cb }
            k.c.a.a.a.s.p r5 = r10.a     // Catch:{ Exception -> 0x00cb }
            java.lang.String r5 = r5.f2247j     // Catch:{ Exception -> 0x00cb }
            r4.a((k.c.a.a.a.q) r10, (java.lang.String) r5)     // Catch:{ Exception -> 0x00cb }
        L_0x0092:
            k.c.a.a.a.s.b r10 = r9.f2205i     // Catch:{ Exception -> 0x00cb }
            java.util.Vector r10 = r10.b((k.c.a.a.a.k) r11)     // Catch:{ Exception -> 0x00cb }
            java.util.Enumeration r10 = r10.elements()     // Catch:{ Exception -> 0x00cb }
            r4 = r0
        L_0x009d:
            boolean r5 = r10.hasMoreElements()     // Catch:{ Exception -> 0x00cc }
            if (r5 != 0) goto L_0x00a4
            goto L_0x00cc
        L_0x00a4:
            java.lang.Object r5 = r10.nextElement()     // Catch:{ Exception -> 0x00cc }
            k.c.a.a.a.q r5 = (k.c.a.a.a.q) r5     // Catch:{ Exception -> 0x00cc }
            k.c.a.a.a.s.p r6 = r5.a     // Catch:{ Exception -> 0x00cc }
            java.lang.String r6 = r6.f2247j     // Catch:{ Exception -> 0x00cc }
            java.lang.String r7 = "Disc"
            boolean r6 = r6.equals(r7)     // Catch:{ Exception -> 0x00cc }
            if (r6 != 0) goto L_0x00c9
            k.c.a.a.a.s.p r6 = r5.a     // Catch:{ Exception -> 0x00cc }
            java.lang.String r6 = r6.f2247j     // Catch:{ Exception -> 0x00cc }
            java.lang.String r7 = "Con"
            boolean r6 = r6.equals(r7)     // Catch:{ Exception -> 0x00cc }
            if (r6 == 0) goto L_0x00c3
            goto L_0x00c9
        L_0x00c3:
            k.c.a.a.a.s.c r6 = r9.f2204h     // Catch:{ Exception -> 0x00cc }
            r6.a((k.c.a.a.a.q) r5)     // Catch:{ Exception -> 0x00cc }
            goto L_0x009d
        L_0x00c9:
            r4 = r5
            goto L_0x009d
        L_0x00cb:
            r4 = r0
        L_0x00cc:
            k.c.a.a.a.s.b r10 = r9.f2205i     // Catch:{ Exception -> 0x00df }
            r10.a((k.c.a.a.a.k) r11)     // Catch:{ Exception -> 0x00df }
            k.c.a.a.a.s.b r10 = r9.f2205i     // Catch:{ Exception -> 0x00df }
            boolean r10 = r10.f2216j     // Catch:{ Exception -> 0x00df }
            if (r10 == 0) goto L_0x00e0
            k.c.a.a.a.s.c r10 = r9.f2204h     // Catch:{ Exception -> 0x00df }
            java.util.Hashtable<java.lang.String, k.c.a.a.a.d> r10 = r10.A     // Catch:{ Exception -> 0x00df }
            r10.clear()     // Catch:{ Exception -> 0x00df }
            goto L_0x00e0
        L_0x00df:
        L_0x00e0:
            k.c.a.a.a.s.e r10 = r9.f2203g
            if (r10 == 0) goto L_0x00e7
            r10.b()
        L_0x00e7:
            k.c.a.a.a.o r10 = r9.f2208l
            if (r10 == 0) goto L_0x00ff
            k.c.a.a.a.r r10 = (k.c.a.a.a.r) r10
            k.c.a.a.a.t.b r5 = r10.a
            java.lang.String r6 = "k.c.a.a.a.r"
            java.lang.String r7 = "stop"
            java.lang.String r8 = "661"
            r5.b(r6, r7, r8, r0)
            java.util.Timer r10 = r10.f2197c
            if (r10 == 0) goto L_0x00ff
            r10.cancel()
        L_0x00ff:
            k.c.a.a.a.u.a r10 = r9.f2207k     // Catch:{ Exception -> 0x0108 }
            if (r10 == 0) goto L_0x0108
            k.c.a.a.a.u.a r10 = r9.f2207k     // Catch:{ Exception -> 0x0108 }
            r10.close()     // Catch:{ Exception -> 0x0108 }
        L_0x0108:
            java.lang.Object r10 = r9.p
            monitor-enter(r10)
            k.c.a.a.a.t.b r5 = r9.b     // Catch:{ all -> 0x0172 }
            java.lang.String r6 = r9.a     // Catch:{ all -> 0x0172 }
            java.lang.String r7 = "shutdownConnection"
            java.lang.String r8 = "217"
            r5.b(r6, r7, r8)     // Catch:{ all -> 0x0172 }
            r5 = 3
            r9.o = r5     // Catch:{ all -> 0x0172 }
            r9.n = r3     // Catch:{ all -> 0x0172 }
            monitor-exit(r10)     // Catch:{ all -> 0x0172 }
            if (r4 == 0) goto L_0x0125
            k.c.a.a.a.s.c r10 = r9.f2204h
            if (r10 == 0) goto L_0x0125
            r10.a((k.c.a.a.a.q) r4)
        L_0x0125:
            if (r2 == 0) goto L_0x0163
            k.c.a.a.a.s.c r10 = r9.f2204h
            if (r10 == 0) goto L_0x0163
            if (r10 == 0) goto L_0x0162
            java.lang.String r0 = "connectionLost"
            k.c.a.a.a.g r2 = r10.y     // Catch:{ all -> 0x0153 }
            if (r2 == 0) goto L_0x0147
            if (r11 == 0) goto L_0x0147
            k.c.a.a.a.t.b r2 = r10.x     // Catch:{ all -> 0x0153 }
            java.lang.String r4 = k.c.a.a.a.s.c.O     // Catch:{ all -> 0x0153 }
            java.lang.String r5 = "708"
            java.lang.Object[] r6 = new java.lang.Object[r1]     // Catch:{ all -> 0x0153 }
            r6[r3] = r11     // Catch:{ all -> 0x0153 }
            r2.b(r4, r0, r5, r6)     // Catch:{ all -> 0x0153 }
            k.c.a.a.a.g r2 = r10.y     // Catch:{ all -> 0x0153 }
            r2.connectionLost(r11)     // Catch:{ all -> 0x0153 }
        L_0x0147:
            k.c.a.a.a.h r2 = r10.z     // Catch:{ all -> 0x0153 }
            if (r2 == 0) goto L_0x0163
            if (r11 == 0) goto L_0x0163
            k.c.a.a.a.h r2 = r10.z     // Catch:{ all -> 0x0153 }
            r2.connectionLost(r11)     // Catch:{ all -> 0x0153 }
            goto L_0x0163
        L_0x0153:
            r11 = move-exception
            k.c.a.a.a.t.b r10 = r10.x
            java.lang.String r2 = k.c.a.a.a.s.c.O
            java.lang.Object[] r4 = new java.lang.Object[r1]
            r4[r3] = r11
            java.lang.String r11 = "720"
            r10.b(r2, r0, r11, r4)
            goto L_0x0163
        L_0x0162:
            throw r0
        L_0x0163:
            java.lang.Object r11 = r9.p
            monitor-enter(r11)
            boolean r10 = r9.q     // Catch:{ all -> 0x016f }
            if (r10 == 0) goto L_0x016d
            r9.a((boolean) r1)     // Catch:{ Exception -> 0x016d }
        L_0x016d:
            monitor-exit(r11)     // Catch:{ all -> 0x016f }
            return
        L_0x016f:
            r10 = move-exception
            monitor-exit(r11)     // Catch:{ all -> 0x016f }
            throw r10
        L_0x0172:
            r11 = move-exception
            monitor-exit(r10)     // Catch:{ all -> 0x0172 }
            throw r11
        L_0x0175:
            monitor-exit(r0)     // Catch:{ all -> 0x0177 }
            return
        L_0x0177:
            r10 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0177 }
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: k.c.a.a.a.s.a.a(k.c.a.a.a.q, k.c.a.a.a.k):void");
    }

    public void a(e eVar, long j2, q qVar) {
        synchronized (this.p) {
            if (a()) {
                this.b.b(this.a, "disconnect", "223");
                throw k.b.c.e.a.a(32111);
            } else if (d()) {
                this.b.b(this.a, "disconnect", "211");
                throw k.b.c.e.a.a(32101);
            } else if (e()) {
                this.b.b(this.a, "disconnect", "219");
                throw k.b.c.e.a.a(32102);
            } else if (Thread.currentThread() != this.f2204h.H) {
                this.b.b(this.a, "disconnect", "218");
                this.o = 2;
                new b(eVar, j2, qVar).a();
            } else {
                this.b.b(this.a, "disconnect", "210");
                throw k.b.c.e.a.a(32107);
            }
        }
    }

    public boolean a() {
        boolean z;
        synchronized (this.p) {
            z = this.o == 4;
        }
        return z;
    }

    public final void a(Exception exc) {
        k kVar;
        this.b.a(this.a, "handleRunException", "804", (Object[]) null, exc);
        if (!(exc instanceof k)) {
            kVar = new k(32109, exc);
        } else {
            kVar = (k) exc;
        }
        a((q) null, kVar);
    }
}
