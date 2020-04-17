package k.c.a.a.a.s;

import java.io.OutputStream;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import k.c.a.a.a.f;
import k.c.a.a.a.k;
import k.c.a.a.a.q;
import k.c.a.a.a.s.s.g;
import k.c.a.a.a.t.b;
import k.c.a.a.a.t.c;

public class e implements Runnable {
    public static final String I = e.class.getName();
    public final Object A;
    public Thread B;
    public String C;
    public Future<?> D;
    public b E;
    public g F;
    public a G;
    public f H;
    public b x = c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", I);
    public a y;
    public a z;

    public enum a {
        STOPPED,
        RUNNING,
        STARTING
    }

    public e(a aVar, b bVar, f fVar, OutputStream outputStream) {
        a aVar2 = a.STOPPED;
        this.y = aVar2;
        this.z = aVar2;
        this.A = new Object();
        this.B = null;
        this.E = null;
        this.G = null;
        this.H = null;
        this.F = new g(bVar, outputStream);
        this.G = aVar;
        this.E = bVar;
        this.H = fVar;
        this.x.a(((f) aVar.f2199c).y);
    }

    public void a(String str, ExecutorService executorService) {
        this.C = str;
        synchronized (this.A) {
            if (this.y == a.STOPPED && this.z == a.STOPPED) {
                this.z = a.RUNNING;
                if (executorService == null) {
                    new Thread(this).start();
                } else {
                    this.D = executorService.submit(this);
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
        if (a()) {
            synchronized (this.A) {
                if (this.D != null) {
                    this.D.cancel(true);
                }
                this.x.b(I, "stop", "800");
                if (a()) {
                    this.z = a.STOPPED;
                    this.E.i();
                }
            }
            while (a()) {
                try {
                    Thread.sleep(100);
                } catch (Exception unused) {
                }
                this.E.i();
            }
            this.x.b(I, "stop", "801");
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
        	at jadx.core.dex.visitors.regions.RegionMaker.processMonitorEnter(RegionMaker.java:561)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:133)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:698)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
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
            r9.B = r0
            java.lang.String r1 = r9.C
            r0.setName(r1)
            java.lang.Object r0 = r9.A
            monitor-enter(r0)
            k.c.a.a.a.s.e$a r1 = k.c.a.a.a.s.e.a.RUNNING     // Catch:{ all -> 0x00d5 }
            r9.y = r1     // Catch:{ all -> 0x00d5 }
            monitor-exit(r0)     // Catch:{ all -> 0x00d5 }
            r0 = 0
            java.lang.Object r1 = r9.A     // Catch:{ all -> 0x00c6 }
            monitor-enter(r1)     // Catch:{ all -> 0x00c6 }
            k.c.a.a.a.s.e$a r2 = r9.z     // Catch:{ all -> 0x00c3 }
            monitor-exit(r1)     // Catch:{ all -> 0x00c3 }
        L_0x001a:
            k.c.a.a.a.s.e$a r1 = k.c.a.a.a.s.e.a.RUNNING     // Catch:{ all -> 0x00c6 }
            if (r2 != r1) goto L_0x00aa
            k.c.a.a.a.s.s.g r1 = r9.F     // Catch:{ all -> 0x00c6 }
            if (r1 != 0) goto L_0x0024
            goto L_0x00aa
        L_0x0024:
            k.c.a.a.a.s.b r1 = r9.E     // Catch:{ k -> 0x009b, Exception -> 0x0096 }
            k.c.a.a.a.s.s.u r1 = r1.f()     // Catch:{ k -> 0x009b, Exception -> 0x0096 }
            if (r1 == 0) goto L_0x007f
            k.c.a.a.a.t.b r2 = r9.x     // Catch:{ k -> 0x009b, Exception -> 0x0096 }
            java.lang.String r3 = I     // Catch:{ k -> 0x009b, Exception -> 0x0096 }
            java.lang.String r4 = "run"
            java.lang.String r5 = "802"
            r6 = 2
            java.lang.Object[] r6 = new java.lang.Object[r6]     // Catch:{ k -> 0x009b, Exception -> 0x0096 }
            r7 = 0
            java.lang.String r8 = r1.i()     // Catch:{ k -> 0x009b, Exception -> 0x0096 }
            r6[r7] = r8     // Catch:{ k -> 0x009b, Exception -> 0x0096 }
            r7 = 1
            r6[r7] = r1     // Catch:{ k -> 0x009b, Exception -> 0x0096 }
            r2.b(r3, r4, r5, r6)     // Catch:{ k -> 0x009b, Exception -> 0x0096 }
            boolean r2 = r1 instanceof k.c.a.a.a.s.s.b     // Catch:{ k -> 0x009b, Exception -> 0x0096 }
            if (r2 == 0) goto L_0x0055
            k.c.a.a.a.s.s.g r2 = r9.F     // Catch:{ k -> 0x009b, Exception -> 0x0096 }
            r2.a(r1)     // Catch:{ k -> 0x009b, Exception -> 0x0096 }
            k.c.a.a.a.s.s.g r1 = r9.F     // Catch:{ k -> 0x009b, Exception -> 0x0096 }
            java.io.BufferedOutputStream r1 = r1.z     // Catch:{ k -> 0x009b, Exception -> 0x0096 }
            r1.flush()     // Catch:{ k -> 0x009b, Exception -> 0x0096 }
            goto L_0x009f
        L_0x0055:
            k.c.a.a.a.q r2 = r1.f2285d     // Catch:{ k -> 0x009b, Exception -> 0x0096 }
            if (r2 != 0) goto L_0x005f
            k.c.a.a.a.s.f r2 = r9.H     // Catch:{ k -> 0x009b, Exception -> 0x0096 }
            k.c.a.a.a.q r2 = r2.a((k.c.a.a.a.s.s.u) r1)     // Catch:{ k -> 0x009b, Exception -> 0x0096 }
        L_0x005f:
            if (r2 == 0) goto L_0x009f
            monitor-enter(r2)     // Catch:{ k -> 0x009b, Exception -> 0x0096 }
            k.c.a.a.a.s.s.g r3 = r9.F     // Catch:{ all -> 0x007c }
            r3.a(r1)     // Catch:{ all -> 0x007c }
            k.c.a.a.a.s.s.g r3 = r9.F     // Catch:{ IOException -> 0x006f }
            java.io.BufferedOutputStream r3 = r3.z     // Catch:{ IOException -> 0x006f }
            r3.flush()     // Catch:{ IOException -> 0x006f }
            goto L_0x0074
        L_0x006f:
            r3 = move-exception
            boolean r4 = r1 instanceof k.c.a.a.a.s.s.e     // Catch:{ all -> 0x007c }
            if (r4 == 0) goto L_0x007b
        L_0x0074:
            k.c.a.a.a.s.b r3 = r9.E     // Catch:{ all -> 0x007c }
            r3.f(r1)     // Catch:{ all -> 0x007c }
            monitor-exit(r2)     // Catch:{ all -> 0x007c }
            goto L_0x009f
        L_0x007b:
            throw r3     // Catch:{ all -> 0x007c }
        L_0x007c:
            r1 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x007c }
            throw r1     // Catch:{ k -> 0x009b, Exception -> 0x0096 }
        L_0x007f:
            k.c.a.a.a.t.b r1 = r9.x     // Catch:{ k -> 0x009b, Exception -> 0x0096 }
            java.lang.String r2 = I     // Catch:{ k -> 0x009b, Exception -> 0x0096 }
            java.lang.String r3 = "run"
            java.lang.String r4 = "803"
            r1.b(r2, r3, r4)     // Catch:{ k -> 0x009b, Exception -> 0x0096 }
            java.lang.Object r1 = r9.A     // Catch:{ k -> 0x009b, Exception -> 0x0096 }
            monitor-enter(r1)     // Catch:{ k -> 0x009b, Exception -> 0x0096 }
            k.c.a.a.a.s.e$a r2 = k.c.a.a.a.s.e.a.STOPPED     // Catch:{ all -> 0x0093 }
            r9.z = r2     // Catch:{ all -> 0x0093 }
            monitor-exit(r1)     // Catch:{ all -> 0x0093 }
            goto L_0x009f
        L_0x0093:
            r2 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0093 }
            throw r2     // Catch:{ k -> 0x009b, Exception -> 0x0096 }
        L_0x0096:
            r1 = move-exception
            r9.a(r1)     // Catch:{ all -> 0x00c6 }
            goto L_0x009f
        L_0x009b:
            r1 = move-exception
            r9.a(r1)     // Catch:{ all -> 0x00c6 }
        L_0x009f:
            java.lang.Object r1 = r9.A     // Catch:{ all -> 0x00c6 }
            monitor-enter(r1)     // Catch:{ all -> 0x00c6 }
            k.c.a.a.a.s.e$a r2 = r9.z     // Catch:{ all -> 0x00a7 }
            monitor-exit(r1)     // Catch:{ all -> 0x00a7 }
            goto L_0x001a
        L_0x00a7:
            r2 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x00a7 }
            throw r2     // Catch:{ all -> 0x00c6 }
        L_0x00aa:
            java.lang.Object r1 = r9.A
            monitor-enter(r1)
            k.c.a.a.a.s.e$a r2 = k.c.a.a.a.s.e.a.STOPPED     // Catch:{ all -> 0x00c0 }
            r9.y = r2     // Catch:{ all -> 0x00c0 }
            r9.B = r0     // Catch:{ all -> 0x00c0 }
            monitor-exit(r1)     // Catch:{ all -> 0x00c0 }
            k.c.a.a.a.t.b r0 = r9.x
            java.lang.String r1 = I
            java.lang.String r2 = "run"
            java.lang.String r3 = "805"
            r0.b(r1, r2, r3)
            return
        L_0x00c0:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x00c0 }
            throw r0
        L_0x00c3:
            r2 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x00c3 }
            throw r2     // Catch:{ all -> 0x00c6 }
        L_0x00c6:
            r1 = move-exception
            java.lang.Object r2 = r9.A
            monitor-enter(r2)
            k.c.a.a.a.s.e$a r3 = k.c.a.a.a.s.e.a.STOPPED     // Catch:{ all -> 0x00d2 }
            r9.y = r3     // Catch:{ all -> 0x00d2 }
            r9.B = r0     // Catch:{ all -> 0x00d2 }
            monitor-exit(r2)     // Catch:{ all -> 0x00d2 }
            throw r1
        L_0x00d2:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x00d2 }
            throw r0
        L_0x00d5:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x00d5 }
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: k.c.a.a.a.s.e.run():void");
    }

    public final void a(Exception exc) {
        k kVar;
        this.x.a(I, "handleRunException", "804", (Object[]) null, exc);
        if (!(exc instanceof k)) {
            kVar = new k(32109, exc);
        } else {
            kVar = (k) exc;
        }
        synchronized (this.A) {
            this.z = a.STOPPED;
        }
        this.G.a((q) null, kVar);
    }

    public boolean a() {
        boolean z2;
        synchronized (this.A) {
            z2 = this.y == a.RUNNING && this.z == a.RUNNING;
        }
        return z2;
    }
}
