package k.c.a.a.a.s;

import k.c.a.a.a.a;
import k.c.a.a.a.k;
import k.c.a.a.a.s.s.u;
import k.c.a.a.a.t.b;
import k.c.a.a.a.t.c;

public class p {
    public b a = c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", "k.c.a.a.a.s.p");
    public volatile boolean b = false;

    /* renamed from: c  reason: collision with root package name */
    public boolean f2240c = false;

    /* renamed from: d  reason: collision with root package name */
    public boolean f2241d = false;

    /* renamed from: e  reason: collision with root package name */
    public final Object f2242e = new Object();

    /* renamed from: f  reason: collision with root package name */
    public final Object f2243f = new Object();

    /* renamed from: g  reason: collision with root package name */
    public u f2244g = null;

    /* renamed from: h  reason: collision with root package name */
    public k f2245h = null;

    /* renamed from: i  reason: collision with root package name */
    public String[] f2246i = null;

    /* renamed from: j  reason: collision with root package name */
    public String f2247j;

    /* renamed from: k  reason: collision with root package name */
    public k.c.a.a.a.b f2248k = null;

    /* renamed from: l  reason: collision with root package name */
    public a f2249l = null;
    public Object m = null;
    public int n = 0;
    public boolean o = false;

    public p(String str) {
        this.a.a(str);
    }

    public void a(long j2) {
        this.a.b("k.c.a.a.a.s.p", "waitForCompletion", "407", new Object[]{this.f2247j, Long.valueOf(j2), this});
        if (b(j2) != null || this.b) {
            k kVar = this.f2245h;
            if (kVar != null) {
                throw kVar;
            }
            return;
        }
        this.a.b("k.c.a.a.a.s.p", "waitForCompletion", "406", new Object[]{this.f2247j, this});
        k kVar2 = new k(32000);
        this.f2245h = kVar2;
        throw kVar2;
    }

    public u b(long j2) {
        synchronized (this.f2242e) {
            b bVar = this.a;
            Object[] objArr = new Object[7];
            objArr[0] = this.f2247j;
            objArr[1] = Long.valueOf(j2);
            objArr[2] = Boolean.valueOf(this.f2241d);
            objArr[3] = Boolean.valueOf(this.b);
            objArr[4] = this.f2245h == null ? "false" : "true";
            objArr[5] = this.f2244g;
            objArr[6] = this;
            bVar.a("k.c.a.a.a.s.p", "waitForResponse", "400", objArr, this.f2245h);
            while (true) {
                if (this.b) {
                    break;
                }
                if (this.f2245h == null) {
                    try {
                        this.a.b("k.c.a.a.a.s.p", "waitForResponse", "408", new Object[]{this.f2247j, Long.valueOf(j2)});
                        if (j2 <= 0) {
                            this.f2242e.wait();
                        } else {
                            this.f2242e.wait(j2);
                        }
                    } catch (InterruptedException e2) {
                        this.f2245h = new k((Throwable) e2);
                    }
                }
                if (!this.b) {
                    if (this.f2245h != null) {
                        this.a.a("k.c.a.a.a.s.p", "waitForResponse", "401", (Object[]) null, this.f2245h);
                        throw this.f2245h;
                    } else if (j2 > 0) {
                        break;
                    }
                }
            }
        }
        this.a.b("k.c.a.a.a.s.p", "waitForResponse", "402", new Object[]{this.f2247j, this.f2244g});
        return this.f2244g;
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(6:22|23|36|34|10|9) */
    /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x000b */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0022 A[SYNTHETIC, Splitter:B:22:0x0022] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void c() {
        /*
            r8 = this;
            java.lang.Object r0 = r8.f2243f
            monitor-enter(r0)
            java.lang.Object r1 = r8.f2242e     // Catch:{ all -> 0x0041 }
            monitor-enter(r1)     // Catch:{ all -> 0x0041 }
            k.c.a.a.a.k r2 = r8.f2245h     // Catch:{ all -> 0x003e }
            if (r2 != 0) goto L_0x003b
            monitor-exit(r1)     // Catch:{ all -> 0x003e }
        L_0x000b:
            boolean r1 = r8.f2241d     // Catch:{ all -> 0x0041 }
            if (r1 == 0) goto L_0x0022
            boolean r1 = r8.f2241d     // Catch:{ all -> 0x0041 }
            if (r1 != 0) goto L_0x0020
            k.c.a.a.a.k r1 = r8.f2245h     // Catch:{ all -> 0x0041 }
            if (r1 != 0) goto L_0x001d
            r1 = 6
            k.c.a.a.a.k r1 = k.b.c.e.a.a((int) r1)     // Catch:{ all -> 0x0041 }
            throw r1     // Catch:{ all -> 0x0041 }
        L_0x001d:
            k.c.a.a.a.k r1 = r8.f2245h     // Catch:{ all -> 0x0041 }
            throw r1     // Catch:{ all -> 0x0041 }
        L_0x0020:
            monitor-exit(r0)     // Catch:{ all -> 0x0041 }
            return
        L_0x0022:
            k.c.a.a.a.t.b r1 = r8.a     // Catch:{ InterruptedException -> 0x000b }
            java.lang.String r2 = "k.c.a.a.a.s.p"
            java.lang.String r3 = "waitUntilSent"
            java.lang.String r4 = "409"
            r5 = 1
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch:{ InterruptedException -> 0x000b }
            r6 = 0
            java.lang.String r7 = r8.f2247j     // Catch:{ InterruptedException -> 0x000b }
            r5[r6] = r7     // Catch:{ InterruptedException -> 0x000b }
            r1.b(r2, r3, r4, r5)     // Catch:{ InterruptedException -> 0x000b }
            java.lang.Object r1 = r8.f2243f     // Catch:{ InterruptedException -> 0x000b }
            r1.wait()     // Catch:{ InterruptedException -> 0x000b }
            goto L_0x000b
        L_0x003b:
            k.c.a.a.a.k r2 = r8.f2245h     // Catch:{ all -> 0x003e }
            throw r2     // Catch:{ all -> 0x003e }
        L_0x003e:
            r2 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x003e }
            throw r2     // Catch:{ all -> 0x0041 }
        L_0x0041:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0041 }
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: k.c.a.a.a.s.p.c():void");
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("key=");
        stringBuffer.append(this.f2247j);
        stringBuffer.append(" ,topics=");
        if (this.f2246i != null) {
            int i2 = 0;
            while (true) {
                String[] strArr = this.f2246i;
                if (i2 >= strArr.length) {
                    break;
                }
                stringBuffer.append(strArr[i2]);
                stringBuffer.append(", ");
                i2++;
            }
        }
        stringBuffer.append(" ,usercontext=");
        stringBuffer.append(this.m);
        stringBuffer.append(" ,isComplete=");
        stringBuffer.append(this.b);
        stringBuffer.append(" ,isNotified=");
        stringBuffer.append(this.o);
        stringBuffer.append(" ,exception=");
        stringBuffer.append(this.f2245h);
        stringBuffer.append(" ,actioncallback=");
        stringBuffer.append(this.f2249l);
        return stringBuffer.toString();
    }

    public void a(u uVar, k kVar) {
        this.a.b("k.c.a.a.a.s.p", "markComplete", "404", new Object[]{this.f2247j, uVar, kVar});
        synchronized (this.f2242e) {
            boolean z = uVar instanceof k.c.a.a.a.s.s.b;
            this.f2240c = true;
            this.f2244g = uVar;
            this.f2245h = kVar;
        }
    }

    public void a() {
        this.a.b("k.c.a.a.a.s.p", "notifyComplete", "404", new Object[]{this.f2247j, this.f2244g, this.f2245h});
        synchronized (this.f2242e) {
            if (this.f2245h != null || !this.f2240c) {
                this.f2240c = false;
            } else {
                this.b = true;
                this.f2240c = false;
            }
            this.f2242e.notifyAll();
        }
        synchronized (this.f2243f) {
            this.f2241d = true;
            this.f2243f.notifyAll();
        }
    }

    public void b() {
        this.a.b("k.c.a.a.a.s.p", "notifySent", "403", new Object[]{this.f2247j});
        synchronized (this.f2242e) {
            this.f2244g = null;
            this.b = false;
        }
        synchronized (this.f2243f) {
            this.f2241d = true;
            this.f2243f.notifyAll();
        }
    }

    public void a(String[] strArr) {
        this.f2246i = (String[]) strArr.clone();
    }

    public void a(k kVar) {
        synchronized (this.f2242e) {
            this.f2245h = kVar;
        }
    }
}
