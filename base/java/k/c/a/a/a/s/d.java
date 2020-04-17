package k.c.a.a.a.s;

import java.io.InputStream;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import k.c.a.a.a.s.s.f;
import k.c.a.a.a.t.b;
import k.c.a.a.a.t.c;

public class d implements Runnable {
    public static final String I = d.class.getName();
    public final Object A;
    public String B;
    public Future<?> C;
    public b D;
    public a E;
    public f F;
    public f G;
    public Thread H;
    public b x = c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", I);
    public a y;
    public a z;

    public enum a {
        STOPPED,
        RUNNING,
        STARTING,
        RECEIVING
    }

    public d(a aVar, b bVar, f fVar, InputStream inputStream) {
        a aVar2 = a.STOPPED;
        this.y = aVar2;
        this.z = aVar2;
        this.A = new Object();
        this.D = null;
        this.E = null;
        this.G = null;
        this.H = null;
        this.F = new f(bVar, inputStream);
        this.E = aVar;
        this.D = bVar;
        this.G = fVar;
        this.x.a(((k.c.a.a.a.f) aVar.f2199c).y);
    }

    public void a(String str, ExecutorService executorService) {
        this.B = str;
        this.x.b(I, "start", "855");
        synchronized (this.A) {
            if (this.y == a.STOPPED && this.z == a.STOPPED) {
                this.z = a.RUNNING;
                if (executorService == null) {
                    new Thread(this).start();
                } else {
                    this.C = executorService.submit(this);
                }
            }
        }
        while (!a()) {
            try {
                Thread.sleep(100);
            } catch (Exception unused) {
            }
        }
    }

    public void b() {
        synchronized (this.A) {
            if (this.C != null) {
                this.C.cancel(true);
            }
            this.x.b(I, "stop", "850");
            if (a()) {
                this.z = a.STOPPED;
            }
        }
        while (a()) {
            try {
                Thread.sleep(100);
            } catch (Exception unused) {
            }
        }
        this.x.b(I, "stop", "851");
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
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:225)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:49)
        */
    public void run() {
        /*
            r9 = this;
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r9.H = r0
            java.lang.String r1 = r9.B
            r0.setName(r1)
            java.lang.Object r0 = r9.A
            monitor-enter(r0)
            k.c.a.a.a.s.d$a r1 = k.c.a.a.a.s.d.a.RUNNING     // Catch:{ all -> 0x0144 }
            r9.y = r1     // Catch:{ all -> 0x0144 }
            monitor-exit(r0)     // Catch:{ all -> 0x0144 }
            java.lang.Object r0 = r9.A     // Catch:{ all -> 0x0137 }
            monitor-enter(r0)     // Catch:{ all -> 0x0137 }
            k.c.a.a.a.s.d$a r1 = r9.z     // Catch:{ all -> 0x0134 }
            monitor-exit(r0)     // Catch:{ all -> 0x0134 }
            r0 = 0
            r2 = r0
        L_0x001b:
            k.c.a.a.a.s.d$a r3 = k.c.a.a.a.s.d.a.RUNNING     // Catch:{ all -> 0x0137 }
            if (r1 != r3) goto L_0x011b
            k.c.a.a.a.s.s.f r1 = r9.F     // Catch:{ all -> 0x0137 }
            if (r1 != 0) goto L_0x0025
            goto L_0x011b
        L_0x0025:
            k.c.a.a.a.t.b r1 = r9.x     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
            java.lang.String r3 = I     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
            java.lang.String r4 = "run"
            java.lang.String r5 = "852"
            r1.b(r3, r4, r5)     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
            k.c.a.a.a.s.s.f r1 = r9.F     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
            int r1 = r1.available()     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
            if (r1 <= 0) goto L_0x0044
            java.lang.Object r1 = r9.A     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
            monitor-enter(r1)     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
            k.c.a.a.a.s.d$a r3 = k.c.a.a.a.s.d.a.RECEIVING     // Catch:{ all -> 0x0041 }
            r9.y = r3     // Catch:{ all -> 0x0041 }
            monitor-exit(r1)     // Catch:{ all -> 0x0041 }
            goto L_0x0044
        L_0x0041:
            r3 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0041 }
            throw r3     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
        L_0x0044:
            k.c.a.a.a.s.s.f r1 = r9.F     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
            k.c.a.a.a.s.s.u r1 = r1.b()     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
            java.lang.Object r3 = r9.A     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
            monitor-enter(r3)     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
            k.c.a.a.a.s.d$a r4 = k.c.a.a.a.s.d.a.RUNNING     // Catch:{ all -> 0x009e }
            r9.y = r4     // Catch:{ all -> 0x009e }
            monitor-exit(r3)     // Catch:{ all -> 0x009e }
            boolean r3 = r1 instanceof k.c.a.a.a.s.s.b     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
            if (r3 == 0) goto L_0x008b
            k.c.a.a.a.s.f r3 = r9.G     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
            k.c.a.a.a.q r2 = r3.a((k.c.a.a.a.s.s.u) r1)     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
            if (r2 == 0) goto L_0x006b
            monitor-enter(r2)     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
            k.c.a.a.a.s.b r3 = r9.D     // Catch:{ all -> 0x0068 }
            k.c.a.a.a.s.s.b r1 = (k.c.a.a.a.s.s.b) r1     // Catch:{ all -> 0x0068 }
            r3.a((k.c.a.a.a.s.s.b) r1)     // Catch:{ all -> 0x0068 }
            monitor-exit(r2)     // Catch:{ all -> 0x0068 }
            goto L_0x0092
        L_0x0068:
            r1 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0068 }
            throw r1     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
        L_0x006b:
            boolean r3 = r1 instanceof k.c.a.a.a.s.s.m     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
            if (r3 != 0) goto L_0x007f
            boolean r3 = r1 instanceof k.c.a.a.a.s.s.l     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
            if (r3 != 0) goto L_0x007f
            boolean r1 = r1 instanceof k.c.a.a.a.s.s.k     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
            if (r1 == 0) goto L_0x0078
            goto L_0x007f
        L_0x0078:
            k.c.a.a.a.k r1 = new k.c.a.a.a.k     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
            r3 = 6
            r1.<init>((int) r3)     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
            throw r1     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
        L_0x007f:
            k.c.a.a.a.t.b r1 = r9.x     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
            java.lang.String r3 = I     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
            java.lang.String r4 = "run"
            java.lang.String r5 = "857"
            r1.b(r3, r4, r5)     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
            goto L_0x0092
        L_0x008b:
            if (r1 == 0) goto L_0x0092
            k.c.a.a.a.s.b r3 = r9.D     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
            r3.e(r1)     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
        L_0x0092:
            java.lang.Object r1 = r9.A     // Catch:{ all -> 0x0137 }
            monitor-enter(r1)     // Catch:{ all -> 0x0137 }
            k.c.a.a.a.s.d$a r3 = k.c.a.a.a.s.d.a.RUNNING     // Catch:{ all -> 0x009b }
            r9.y = r3     // Catch:{ all -> 0x009b }
            monitor-exit(r1)     // Catch:{ all -> 0x009b }
            goto L_0x00fd
        L_0x009b:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x009b }
            throw r0     // Catch:{ all -> 0x0137 }
        L_0x009e:
            r1 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x009e }
            throw r1     // Catch:{ k -> 0x00da, IOException -> 0x00a3 }
        L_0x00a1:
            r0 = move-exception
            goto L_0x010f
        L_0x00a3:
            r1 = move-exception
            k.c.a.a.a.t.b r3 = r9.x     // Catch:{ all -> 0x00a1 }
            java.lang.String r4 = I     // Catch:{ all -> 0x00a1 }
            java.lang.String r5 = "run"
            java.lang.String r6 = "853"
            r3.b(r4, r5, r6)     // Catch:{ all -> 0x00a1 }
            java.lang.Object r3 = r9.A     // Catch:{ all -> 0x00a1 }
            monitor-enter(r3)     // Catch:{ all -> 0x00a1 }
            k.c.a.a.a.s.d$a r4 = k.c.a.a.a.s.d.a.STOPPED     // Catch:{ all -> 0x00d7 }
            r9.z = r4     // Catch:{ all -> 0x00d7 }
            monitor-exit(r3)     // Catch:{ all -> 0x00d7 }
            k.c.a.a.a.s.a r3 = r9.E     // Catch:{ all -> 0x00a1 }
            boolean r3 = r3.e()     // Catch:{ all -> 0x00a1 }
            if (r3 != 0) goto L_0x00cb
            k.c.a.a.a.s.a r3 = r9.E     // Catch:{ all -> 0x00a1 }
            k.c.a.a.a.k r4 = new k.c.a.a.a.k     // Catch:{ all -> 0x00a1 }
            r5 = 32109(0x7d6d, float:4.4994E-41)
            r4.<init>(r5, r1)     // Catch:{ all -> 0x00a1 }
            r3.a((k.c.a.a.a.q) r2, (k.c.a.a.a.k) r4)     // Catch:{ all -> 0x00a1 }
        L_0x00cb:
            java.lang.Object r1 = r9.A     // Catch:{ all -> 0x0137 }
            monitor-enter(r1)     // Catch:{ all -> 0x0137 }
            k.c.a.a.a.s.d$a r3 = k.c.a.a.a.s.d.a.RUNNING     // Catch:{ all -> 0x00d4 }
            r9.y = r3     // Catch:{ all -> 0x00d4 }
            monitor-exit(r1)     // Catch:{ all -> 0x00d4 }
            goto L_0x00fd
        L_0x00d4:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x00d4 }
            throw r0     // Catch:{ all -> 0x0137 }
        L_0x00d7:
            r0 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x00d7 }
            throw r0     // Catch:{ all -> 0x00a1 }
        L_0x00da:
            r1 = move-exception
            k.c.a.a.a.t.b r3 = r9.x     // Catch:{ all -> 0x00a1 }
            java.lang.String r4 = I     // Catch:{ all -> 0x00a1 }
            java.lang.String r5 = "run"
            java.lang.String r6 = "856"
            r7 = 0
            r8 = r1
            r3.a(r4, r5, r6, r7, r8)     // Catch:{ all -> 0x00a1 }
            java.lang.Object r3 = r9.A     // Catch:{ all -> 0x00a1 }
            monitor-enter(r3)     // Catch:{ all -> 0x00a1 }
            k.c.a.a.a.s.d$a r4 = k.c.a.a.a.s.d.a.STOPPED     // Catch:{ all -> 0x010c }
            r9.z = r4     // Catch:{ all -> 0x010c }
            monitor-exit(r3)     // Catch:{ all -> 0x010c }
            k.c.a.a.a.s.a r3 = r9.E     // Catch:{ all -> 0x00a1 }
            r3.a((k.c.a.a.a.q) r2, (k.c.a.a.a.k) r1)     // Catch:{ all -> 0x00a1 }
            java.lang.Object r1 = r9.A     // Catch:{ all -> 0x0137 }
            monitor-enter(r1)     // Catch:{ all -> 0x0137 }
            k.c.a.a.a.s.d$a r3 = k.c.a.a.a.s.d.a.RUNNING     // Catch:{ all -> 0x0109 }
            r9.y = r3     // Catch:{ all -> 0x0109 }
            monitor-exit(r1)     // Catch:{ all -> 0x0109 }
        L_0x00fd:
            java.lang.Object r1 = r9.A     // Catch:{ all -> 0x0137 }
            monitor-enter(r1)     // Catch:{ all -> 0x0137 }
            k.c.a.a.a.s.d$a r3 = r9.z     // Catch:{ all -> 0x0106 }
            monitor-exit(r1)     // Catch:{ all -> 0x0106 }
            r1 = r3
            goto L_0x001b
        L_0x0106:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0106 }
            throw r0     // Catch:{ all -> 0x0137 }
        L_0x0109:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0109 }
            throw r0     // Catch:{ all -> 0x0137 }
        L_0x010c:
            r0 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x010c }
            throw r0     // Catch:{ all -> 0x00a1 }
        L_0x010f:
            java.lang.Object r1 = r9.A     // Catch:{ all -> 0x0137 }
            monitor-enter(r1)     // Catch:{ all -> 0x0137 }
            k.c.a.a.a.s.d$a r2 = k.c.a.a.a.s.d.a.RUNNING     // Catch:{ all -> 0x0118 }
            r9.y = r2     // Catch:{ all -> 0x0118 }
            monitor-exit(r1)     // Catch:{ all -> 0x0118 }
            throw r0     // Catch:{ all -> 0x0137 }
        L_0x0118:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0118 }
            throw r0     // Catch:{ all -> 0x0137 }
        L_0x011b:
            java.lang.Object r1 = r9.A
            monitor-enter(r1)
            k.c.a.a.a.s.d$a r2 = k.c.a.a.a.s.d.a.STOPPED     // Catch:{ all -> 0x0131 }
            r9.y = r2     // Catch:{ all -> 0x0131 }
            monitor-exit(r1)     // Catch:{ all -> 0x0131 }
            r9.H = r0
            k.c.a.a.a.t.b r0 = r9.x
            java.lang.String r1 = I
            java.lang.String r2 = "run"
            java.lang.String r3 = "854"
            r0.b(r1, r2, r3)
            return
        L_0x0131:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0131 }
            throw r0
        L_0x0134:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0134 }
            throw r1     // Catch:{ all -> 0x0137 }
        L_0x0137:
            r0 = move-exception
            java.lang.Object r1 = r9.A
            monitor-enter(r1)
            k.c.a.a.a.s.d$a r2 = k.c.a.a.a.s.d.a.STOPPED     // Catch:{ all -> 0x0141 }
            r9.y = r2     // Catch:{ all -> 0x0141 }
            monitor-exit(r1)     // Catch:{ all -> 0x0141 }
            throw r0
        L_0x0141:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0141 }
            throw r0
        L_0x0144:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0144 }
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: k.c.a.a.a.s.d.run():void");
    }

    public boolean a() {
        boolean z2;
        synchronized (this.A) {
            z2 = (this.y == a.RUNNING || this.y == a.RECEIVING) && this.z == a.RUNNING;
        }
        return z2;
    }
}
