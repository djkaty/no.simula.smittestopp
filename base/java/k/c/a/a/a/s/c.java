package k.c.a.a.a.s;

import java.util.Hashtable;
import java.util.Vector;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import k.c.a.a.a.d;
import k.c.a.a.a.f;
import k.c.a.a.a.g;
import k.c.a.a.a.h;
import k.c.a.a.a.j;
import k.c.a.a.a.k;
import k.c.a.a.a.q;
import k.c.a.a.a.s.s.u;
import k.c.a.a.a.t.b;

public class c implements Runnable {
    public static final String O = c.class.getName();
    public Hashtable<String, d> A;
    public a B;
    public final Vector<u> C;
    public final Vector<q> D;
    public a E;
    public a F;
    public final Object G;
    public Thread H;
    public String I;
    public Future<?> J;
    public final Object K;
    public final Object L;
    public b M;
    public boolean N;
    public final b x = k.c.a.a.a.t.c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", O);
    public g y;
    public h z;

    public enum a {
        STOPPED,
        RUNNING,
        QUIESCING
    }

    public c(a aVar) {
        a aVar2 = a.STOPPED;
        this.E = aVar2;
        this.F = aVar2;
        this.G = new Object();
        this.K = new Object();
        this.L = new Object();
        this.N = false;
        this.B = aVar;
        this.C = new Vector<>(10);
        this.D = new Vector<>(10);
        this.A = new Hashtable<>();
        this.x.a(((f) aVar.f2199c).y);
    }

    public void a(String str, ExecutorService executorService) {
        this.I = str;
        synchronized (this.G) {
            if (this.E == a.STOPPED) {
                this.C.clear();
                this.D.clear();
                this.F = a.RUNNING;
                if (executorService == null) {
                    new Thread(this).start();
                } else {
                    this.J = executorService.submit(this);
                }
            }
        }
        while (!c()) {
            try {
                Thread.sleep(100);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:1:0x0002, code lost:
        r0 = r9.a;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b(k.c.a.a.a.q r9) {
        /*
            r8 = this;
            if (r9 == 0) goto L_0x0037
            k.c.a.a.a.s.p r0 = r9.a
            k.c.a.a.a.a r1 = r0.f2249l
            if (r1 == 0) goto L_0x0037
            k.c.a.a.a.k r2 = r0.f2245h
            r3 = 0
            r4 = 1
            java.lang.String r5 = "716"
            java.lang.String r6 = "fireActionEvent"
            if (r2 != 0) goto L_0x0023
            k.c.a.a.a.t.b r2 = r8.x
            java.lang.String r7 = O
            java.lang.Object[] r4 = new java.lang.Object[r4]
            java.lang.String r0 = r0.f2247j
            r4[r3] = r0
            r2.b(r7, r6, r5, r4)
            r1.a(r9)
            goto L_0x0037
        L_0x0023:
            k.c.a.a.a.t.b r2 = r8.x
            java.lang.String r7 = O
            java.lang.Object[] r4 = new java.lang.Object[r4]
            java.lang.String r0 = r0.f2247j
            r4[r3] = r0
            r2.b(r7, r6, r5, r4)
            k.c.a.a.a.s.p r0 = r9.a
            k.c.a.a.a.k r0 = r0.f2245h
            r1.a(r9, r0)
        L_0x0037:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.c.a.a.a.s.c.b(k.c.a.a.a.q):void");
    }

    public final void c(q qVar) {
        synchronized (qVar) {
            this.x.b(O, "handleActionComplete", "705", new Object[]{qVar.a.f2247j});
            if (qVar.a.b) {
                this.M.a(qVar);
            }
            qVar.a.a();
            if (!qVar.a.o) {
                if (this.y != null && (qVar instanceof j) && qVar.a.b) {
                    this.y.deliveryComplete((j) qVar);
                }
                b(qVar);
            }
            if (qVar.a.b && (qVar instanceof j)) {
                qVar.a.o = true;
            }
        }
    }

    public void d() {
        synchronized (this.G) {
            if (this.E == a.RUNNING) {
                this.E = a.QUIESCING;
            }
        }
        synchronized (this.L) {
            this.x.b(O, "quiesce", "711");
            this.L.notifyAll();
        }
    }

    public void e() {
        synchronized (this.G) {
            if (this.J != null) {
                this.J.cancel(true);
            }
        }
        if (c()) {
            this.x.b(O, "stop", "700");
            synchronized (this.G) {
                this.F = a.STOPPED;
            }
            if (!Thread.currentThread().equals(this.H)) {
                synchronized (this.K) {
                    this.x.b(O, "stop", "701");
                    this.K.notifyAll();
                }
                while (c()) {
                    try {
                        Thread.sleep(100);
                    } catch (Exception unused) {
                    }
                    this.M.i();
                }
            }
            this.x.b(O, "stop", "703");
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
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.processMonitorEnter(RegionMaker.java:561)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:133)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:693)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:225)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:49)
        */
    public void run() {
        /*
            r8 = this;
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r8.H = r0
            java.lang.String r1 = r8.I
            r0.setName(r1)
            java.lang.Object r0 = r8.G
            monitor-enter(r0)
            k.c.a.a.a.s.c$a r1 = k.c.a.a.a.s.c.a.RUNNING     // Catch:{ all -> 0x0114 }
            r8.E = r1     // Catch:{ all -> 0x0114 }
            monitor-exit(r0)     // Catch:{ all -> 0x0114 }
        L_0x0013:
            boolean r0 = r8.c()
            r1 = 0
            if (r0 != 0) goto L_0x0028
            java.lang.Object r0 = r8.G
            monitor-enter(r0)
            k.c.a.a.a.s.c$a r2 = k.c.a.a.a.s.c.a.STOPPED     // Catch:{ all -> 0x0025 }
            r8.E = r2     // Catch:{ all -> 0x0025 }
            monitor-exit(r0)     // Catch:{ all -> 0x0025 }
            r8.H = r1
            return
        L_0x0025:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0025 }
            throw r1
        L_0x0028:
            java.lang.Object r0 = r8.K     // Catch:{ InterruptedException -> 0x0059 }
            monitor-enter(r0)     // Catch:{ InterruptedException -> 0x0059 }
            boolean r2 = r8.c()     // Catch:{ all -> 0x0053 }
            if (r2 == 0) goto L_0x0051
            java.util.Vector<k.c.a.a.a.s.s.u> r2 = r8.C     // Catch:{ all -> 0x0053 }
            boolean r2 = r2.isEmpty()     // Catch:{ all -> 0x0053 }
            if (r2 == 0) goto L_0x0051
            java.util.Vector<k.c.a.a.a.q> r2 = r8.D     // Catch:{ all -> 0x0053 }
            boolean r2 = r2.isEmpty()     // Catch:{ all -> 0x0053 }
            if (r2 == 0) goto L_0x0051
            k.c.a.a.a.t.b r2 = r8.x     // Catch:{ all -> 0x0053 }
            java.lang.String r3 = O     // Catch:{ all -> 0x0053 }
            java.lang.String r4 = "run"
            java.lang.String r5 = "704"
            r2.b(r3, r4, r5)     // Catch:{ all -> 0x0053 }
            java.lang.Object r2 = r8.K     // Catch:{ all -> 0x0053 }
            r2.wait()     // Catch:{ all -> 0x0053 }
        L_0x0051:
            monitor-exit(r0)     // Catch:{ all -> 0x0053 }
            goto L_0x0059
        L_0x0053:
            r2 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0053 }
            throw r2     // Catch:{ InterruptedException -> 0x0059 }
        L_0x0056:
            r0 = move-exception
            goto L_0x00cb
        L_0x0059:
            boolean r0 = r8.c()     // Catch:{ all -> 0x0056 }
            if (r0 == 0) goto L_0x00a7
            java.util.Vector<k.c.a.a.a.q> r0 = r8.D     // Catch:{ all -> 0x0056 }
            monitor-enter(r0)     // Catch:{ all -> 0x0056 }
            java.util.Vector<k.c.a.a.a.q> r2 = r8.D     // Catch:{ all -> 0x00a4 }
            boolean r2 = r2.isEmpty()     // Catch:{ all -> 0x00a4 }
            r3 = 0
            if (r2 != 0) goto L_0x0079
            java.util.Vector<k.c.a.a.a.q> r2 = r8.D     // Catch:{ all -> 0x00a4 }
            java.lang.Object r2 = r2.elementAt(r3)     // Catch:{ all -> 0x00a4 }
            k.c.a.a.a.q r2 = (k.c.a.a.a.q) r2     // Catch:{ all -> 0x00a4 }
            java.util.Vector<k.c.a.a.a.q> r4 = r8.D     // Catch:{ all -> 0x00a4 }
            r4.removeElementAt(r3)     // Catch:{ all -> 0x00a4 }
            goto L_0x007a
        L_0x0079:
            r2 = r1
        L_0x007a:
            monitor-exit(r0)     // Catch:{ all -> 0x00a4 }
            if (r2 == 0) goto L_0x0080
            r8.c(r2)     // Catch:{ all -> 0x0056 }
        L_0x0080:
            java.util.Vector<k.c.a.a.a.s.s.u> r0 = r8.C     // Catch:{ all -> 0x0056 }
            monitor-enter(r0)     // Catch:{ all -> 0x0056 }
            java.util.Vector<k.c.a.a.a.s.s.u> r2 = r8.C     // Catch:{ all -> 0x00a1 }
            boolean r2 = r2.isEmpty()     // Catch:{ all -> 0x00a1 }
            if (r2 != 0) goto L_0x0099
            java.util.Vector<k.c.a.a.a.s.s.u> r2 = r8.C     // Catch:{ all -> 0x00a1 }
            java.lang.Object r2 = r2.elementAt(r3)     // Catch:{ all -> 0x00a1 }
            k.c.a.a.a.s.s.o r2 = (k.c.a.a.a.s.s.o) r2     // Catch:{ all -> 0x00a1 }
            java.util.Vector<k.c.a.a.a.s.s.u> r4 = r8.C     // Catch:{ all -> 0x00a1 }
            r4.removeElementAt(r3)     // Catch:{ all -> 0x00a1 }
            goto L_0x009a
        L_0x0099:
            r2 = r1
        L_0x009a:
            monitor-exit(r0)     // Catch:{ all -> 0x00a1 }
            if (r2 == 0) goto L_0x00a7
            r8.a((k.c.a.a.a.s.s.o) r2)     // Catch:{ all -> 0x0056 }
            goto L_0x00a7
        L_0x00a1:
            r2 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x00a1 }
            throw r2     // Catch:{ all -> 0x0056 }
        L_0x00a4:
            r2 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x00a4 }
            throw r2     // Catch:{ all -> 0x0056 }
        L_0x00a7:
            boolean r0 = r8.b()     // Catch:{ all -> 0x0056 }
            if (r0 == 0) goto L_0x00b2
            k.c.a.a.a.s.b r0 = r8.M     // Catch:{ all -> 0x0056 }
            r0.a()     // Catch:{ all -> 0x0056 }
        L_0x00b2:
            java.lang.Object r0 = r8.L
            monitor-enter(r0)
            k.c.a.a.a.t.b r1 = r8.x     // Catch:{ all -> 0x00c8 }
            java.lang.String r2 = O     // Catch:{ all -> 0x00c8 }
            java.lang.String r3 = "run"
            java.lang.String r4 = "706"
            r1.b(r2, r3, r4)     // Catch:{ all -> 0x00c8 }
            java.lang.Object r1 = r8.L     // Catch:{ all -> 0x00c8 }
            r1.notifyAll()     // Catch:{ all -> 0x00c8 }
            monitor-exit(r0)     // Catch:{ all -> 0x00c8 }
            goto L_0x0013
        L_0x00c8:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x00c8 }
            throw r1
        L_0x00cb:
            k.c.a.a.a.t.b r2 = r8.x     // Catch:{ all -> 0x00fb }
            java.lang.String r3 = O     // Catch:{ all -> 0x00fb }
            java.lang.String r4 = "run"
            java.lang.String r5 = "714"
            r6 = 0
            r7 = r0
            r2.a(r3, r4, r5, r6, r7)     // Catch:{ all -> 0x00fb }
            k.c.a.a.a.s.a r2 = r8.B     // Catch:{ all -> 0x00fb }
            k.c.a.a.a.k r3 = new k.c.a.a.a.k     // Catch:{ all -> 0x00fb }
            r3.<init>((java.lang.Throwable) r0)     // Catch:{ all -> 0x00fb }
            r2.a((k.c.a.a.a.q) r1, (k.c.a.a.a.k) r3)     // Catch:{ all -> 0x00fb }
            java.lang.Object r0 = r8.L
            monitor-enter(r0)
            k.c.a.a.a.t.b r1 = r8.x     // Catch:{ all -> 0x00f8 }
            java.lang.String r2 = O     // Catch:{ all -> 0x00f8 }
            java.lang.String r3 = "run"
            java.lang.String r4 = "706"
            r1.b(r2, r3, r4)     // Catch:{ all -> 0x00f8 }
            java.lang.Object r1 = r8.L     // Catch:{ all -> 0x00f8 }
            r1.notifyAll()     // Catch:{ all -> 0x00f8 }
            monitor-exit(r0)     // Catch:{ all -> 0x00f8 }
            goto L_0x0013
        L_0x00f8:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x00f8 }
            throw r1
        L_0x00fb:
            r0 = move-exception
            java.lang.Object r1 = r8.L
            monitor-enter(r1)
            k.c.a.a.a.t.b r2 = r8.x     // Catch:{ all -> 0x0111 }
            java.lang.String r3 = O     // Catch:{ all -> 0x0111 }
            java.lang.String r4 = "run"
            java.lang.String r5 = "706"
            r2.b(r3, r4, r5)     // Catch:{ all -> 0x0111 }
            java.lang.Object r2 = r8.L     // Catch:{ all -> 0x0111 }
            r2.notifyAll()     // Catch:{ all -> 0x0111 }
            monitor-exit(r1)     // Catch:{ all -> 0x0111 }
            throw r0
        L_0x0111:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0111 }
            throw r0
        L_0x0114:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0114 }
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: k.c.a.a.a.s.c.run():void");
    }

    /* JADX WARNING: type inference failed for: r8v0 */
    /* JADX WARNING: type inference failed for: r7v2 */
    /* JADX WARNING: type inference failed for: r8v1, types: [boolean] */
    /* JADX WARNING: type inference failed for: r8v7 */
    /* JADX WARNING: type inference failed for: r7v30 */
    /* JADX WARNING: Incorrect type for immutable var: ssa=int, code=?, for r7v3, types: [int, boolean] */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0170  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x0183  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(k.c.a.a.a.s.s.o r17) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            java.lang.String r2 = r1.f2274h
            k.c.a.a.a.t.b r3 = r0.x
            java.lang.String r4 = O
            r5 = 2
            java.lang.Object[] r6 = new java.lang.Object[r5]
            int r7 = r1.b
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
            r8 = 0
            r6[r8] = r7
            r7 = 1
            r6[r7] = r2
            java.lang.String r9 = "handleMessage"
            java.lang.String r10 = "713"
            r3.b(r4, r9, r10, r6)
            int r3 = r1.b
            k.c.a.a.a.l r4 = r1.f2273g
            java.util.Hashtable<java.lang.String, k.c.a.a.a.d> r6 = r0.A
            java.util.Enumeration r6 = r6.keys()
            r9 = 0
        L_0x002b:
            boolean r10 = r6.hasMoreElements()
            if (r10 != 0) goto L_0x00a3
            k.c.a.a.a.g r6 = r0.y
            if (r6 == 0) goto L_0x003c
            if (r9 != 0) goto L_0x003c
            r4.f2196f = r3
            r6.messageArrived(r2, r4)
        L_0x003c:
            boolean r2 = r0.N
            if (r2 != 0) goto L_0x00a2
            k.c.a.a.a.l r2 = r1.f2273g
            int r2 = r2.f2193c
            if (r2 != r7) goto L_0x005e
            k.c.a.a.a.s.a r2 = r0.B
            k.c.a.a.a.s.s.k r3 = new k.c.a.a.a.s.s.k
            r3.<init>((k.c.a.a.a.s.s.o) r1)
            k.c.a.a.a.q r1 = new k.c.a.a.a.q
            k.c.a.a.a.s.a r4 = r0.B
            k.c.a.a.a.b r4 = r4.f2199c
            k.c.a.a.a.f r4 = (k.c.a.a.a.f) r4
            java.lang.String r4 = r4.y
            r1.<init>(r4)
            r2.a((k.c.a.a.a.s.s.u) r3, (k.c.a.a.a.q) r1)
            goto L_0x00a2
        L_0x005e:
            if (r2 != r5) goto L_0x00a2
            k.c.a.a.a.s.a r2 = r0.B
            k.c.a.a.a.s.b r2 = r2.f2205i
            k.c.a.a.a.t.b r3 = r2.a
            java.lang.String r4 = "k.c.a.a.a.s.b"
            java.lang.Object[] r5 = new java.lang.Object[r7]
            int r6 = r1.b
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            r5[r8] = r6
            java.lang.String r6 = "deliveryComplete"
            java.lang.String r7 = "641"
            r3.b(r4, r6, r7, r5)
            k.c.a.a.a.u.a r3 = r2.f2217k
            java.lang.String r4 = r2.a((k.c.a.a.a.s.s.u) r1)
            r3.a(r4)
            java.util.Hashtable r2 = r2.B
            int r3 = r1.b
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r2.remove(r3)
            k.c.a.a.a.s.s.l r2 = new k.c.a.a.a.s.s.l
            r2.<init>((k.c.a.a.a.s.s.o) r1)
            k.c.a.a.a.s.a r1 = r0.B
            k.c.a.a.a.q r3 = new k.c.a.a.a.q
            k.c.a.a.a.b r4 = r1.f2199c
            k.c.a.a.a.f r4 = (k.c.a.a.a.f) r4
            java.lang.String r4 = r4.y
            r3.<init>(r4)
            r1.a((k.c.a.a.a.s.s.u) r2, (k.c.a.a.a.q) r3)
        L_0x00a2:
            return
        L_0x00a3:
            java.lang.Object r10 = r6.nextElement()
            java.lang.String r10 = (java.lang.String) r10
            int r11 = r2.length()
            int r12 = r10.length()
            k.b.c.e.a.a((java.lang.String) r10, (boolean) r7)
            k.b.c.e.a.a((java.lang.String) r2, (boolean) r8)
            boolean r13 = r10.equals(r2)
            if (r13 == 0) goto L_0x00bf
            r5 = 1
            goto L_0x011a
        L_0x00bf:
            r13 = 0
            r14 = 0
        L_0x00c1:
            if (r13 >= r12) goto L_0x0115
            if (r14 < r11) goto L_0x00c6
            goto L_0x0115
        L_0x00c6:
            char r15 = r2.charAt(r14)
            r8 = 47
            if (r15 != r8) goto L_0x00d5
            char r15 = r10.charAt(r13)
            if (r15 == r8) goto L_0x00d5
            goto L_0x0115
        L_0x00d5:
            char r15 = r10.charAt(r13)
            r5 = 35
            r7 = 43
            if (r15 == r7) goto L_0x00f0
            char r15 = r10.charAt(r13)
            if (r15 == r5) goto L_0x00f0
            char r15 = r10.charAt(r13)
            char r5 = r2.charAt(r14)
            if (r15 == r5) goto L_0x00f0
            goto L_0x0115
        L_0x00f0:
            char r5 = r10.charAt(r13)
            if (r5 != r7) goto L_0x0103
        L_0x00f6:
            int r5 = r14 + 1
            if (r5 >= r11) goto L_0x010d
            char r7 = r2.charAt(r5)
            if (r7 != r8) goto L_0x0101
            goto L_0x010d
        L_0x0101:
            r14 = r5
            goto L_0x00f6
        L_0x0103:
            char r5 = r10.charAt(r13)
            r7 = 35
            if (r5 != r7) goto L_0x010d
            int r14 = r11 + -1
        L_0x010d:
            int r13 = r13 + 1
            r5 = 1
            int r14 = r14 + r5
            r5 = 2
            r7 = 1
            r8 = 0
            goto L_0x00c1
        L_0x0115:
            r5 = 1
            if (r14 != r11) goto L_0x011e
            if (r13 != r12) goto L_0x011e
        L_0x011a:
            r7 = 1
            r8 = 2
            r11 = 0
            goto L_0x016e
        L_0x011e:
            int r7 = r10.length()
            int r8 = r2.length()
            int r7 = r7 - r8
            r8 = 2
            if (r7 != r8) goto L_0x016c
            int r7 = r10.length()
            int r7 = r7 - r8
            int r11 = r10.length()
            java.lang.String r7 = r10.substring(r7, r11)
            java.lang.String r11 = "/#"
            boolean r7 = r7.equals(r11)
            if (r7 == 0) goto L_0x016c
            int r7 = r10.length()
            int r7 = r7 - r8
            r11 = 0
            java.lang.String r7 = r10.substring(r11, r7)
            boolean r12 = r7.equals(r2)
            if (r12 == 0) goto L_0x016d
            java.io.PrintStream r12 = java.lang.System.err
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            java.lang.String r14 = "filterSub equals topicName: "
            r13.<init>(r14)
            r13.append(r7)
            java.lang.String r7 = " == "
            r13.append(r7)
            r13.append(r2)
            java.lang.String r7 = r13.toString()
            r12.println(r7)
            r7 = 1
            goto L_0x016e
        L_0x016c:
            r11 = 0
        L_0x016d:
            r7 = 0
        L_0x016e:
            if (r7 == 0) goto L_0x0183
            r4.f2196f = r3
            java.util.Hashtable<java.lang.String, k.c.a.a.a.d> r7 = r0.A
            java.lang.Object r7 = r7.get(r10)
            k.c.a.a.a.d r7 = (k.c.a.a.a.d) r7
            r7.messageArrived(r2, r4)
            r5 = 2
            r7 = 1
            r8 = 0
            r9 = 1
            goto L_0x002b
        L_0x0183:
            r5 = 2
            r7 = 1
            r8 = 0
            goto L_0x002b
        */
        throw new UnsupportedOperationException("Method not decompiled: k.c.a.a.a.s.c.a(k.c.a.a.a.s.s.o):void");
    }

    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:6:0x000f */
    /* JADX WARNING: Removed duplicated region for block: B:6:0x000f A[LOOP:0: B:6:0x000f->B:33:0x000f, LOOP_START, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b(k.c.a.a.a.s.s.o r6) {
        /*
            r5 = this;
            k.c.a.a.a.g r0 = r5.y
            if (r0 != 0) goto L_0x000c
            java.util.Hashtable<java.lang.String, k.c.a.a.a.d> r0 = r5.A
            int r0 = r0.size()
            if (r0 <= 0) goto L_0x005d
        L_0x000c:
            java.lang.Object r0 = r5.L
            monitor-enter(r0)
        L_0x000f:
            boolean r1 = r5.c()     // Catch:{ all -> 0x005e }
            if (r1 == 0) goto L_0x0039
            boolean r1 = r5.b()     // Catch:{ all -> 0x005e }
            if (r1 != 0) goto L_0x0039
            java.util.Vector<k.c.a.a.a.s.s.u> r1 = r5.C     // Catch:{ all -> 0x005e }
            int r1 = r1.size()     // Catch:{ all -> 0x005e }
            r2 = 10
            if (r1 >= r2) goto L_0x0026
            goto L_0x0039
        L_0x0026:
            k.c.a.a.a.t.b r1 = r5.x     // Catch:{ InterruptedException -> 0x000f }
            java.lang.String r2 = O     // Catch:{ InterruptedException -> 0x000f }
            java.lang.String r3 = "messageArrived"
            java.lang.String r4 = "709"
            r1.b(r2, r3, r4)     // Catch:{ InterruptedException -> 0x000f }
            java.lang.Object r1 = r5.L     // Catch:{ InterruptedException -> 0x000f }
            r2 = 200(0xc8, double:9.9E-322)
            r1.wait(r2)     // Catch:{ InterruptedException -> 0x000f }
            goto L_0x000f
        L_0x0039:
            monitor-exit(r0)     // Catch:{ all -> 0x005e }
            boolean r0 = r5.b()
            if (r0 != 0) goto L_0x005d
            java.util.Vector<k.c.a.a.a.s.s.u> r0 = r5.C
            r0.addElement(r6)
            java.lang.Object r6 = r5.K
            monitor-enter(r6)
            k.c.a.a.a.t.b r0 = r5.x     // Catch:{ all -> 0x005a }
            java.lang.String r1 = O     // Catch:{ all -> 0x005a }
            java.lang.String r2 = "messageArrived"
            java.lang.String r3 = "710"
            r0.b(r1, r2, r3)     // Catch:{ all -> 0x005a }
            java.lang.Object r0 = r5.K     // Catch:{ all -> 0x005a }
            r0.notifyAll()     // Catch:{ all -> 0x005a }
            monitor-exit(r6)     // Catch:{ all -> 0x005a }
            goto L_0x005d
        L_0x005a:
            r0 = move-exception
            monitor-exit(r6)     // Catch:{ all -> 0x005a }
            throw r0
        L_0x005d:
            return
        L_0x005e:
            r6 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x005e }
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: k.c.a.a.a.s.c.b(k.c.a.a.a.s.s.o):void");
    }

    public boolean c() {
        boolean z2;
        synchronized (this.G) {
            z2 = (this.E == a.RUNNING || this.E == a.QUIESCING) && this.F == a.RUNNING;
        }
        return z2;
    }

    public boolean b() {
        boolean z2;
        synchronized (this.G) {
            z2 = this.E == a.QUIESCING;
        }
        return z2;
    }

    public boolean a() {
        return b() && this.D.size() == 0 && this.C.size() == 0;
    }

    public void a(q qVar) {
        if (c()) {
            this.D.addElement(qVar);
            synchronized (this.K) {
                this.x.b(O, "asyncOperationComplete", "715", new Object[]{qVar.a.f2247j});
                this.K.notifyAll();
            }
            return;
        }
        try {
            c(qVar);
        } catch (Throwable th) {
            this.x.a(O, "asyncOperationComplete", "719", (Object[]) null, th);
            this.B.a((q) null, new k(th));
        }
    }
}
