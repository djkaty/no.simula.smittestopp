package k.c.a.a.a.s;

import java.io.EOFException;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Timer;
import java.util.Vector;
import java.util.concurrent.TimeUnit;
import k.c.a.a.a.f;
import k.c.a.a.a.k;
import k.c.a.a.a.o;
import k.c.a.a.a.q;
import k.c.a.a.a.r;
import k.c.a.a.a.s.s.d;
import k.c.a.a.a.s.s.i;
import k.c.a.a.a.s.s.j;
import k.c.a.a.a.s.s.l;
import k.c.a.a.a.s.s.m;
import k.c.a.a.a.s.s.n;
import k.c.a.a.a.s.s.s;
import k.c.a.a.a.s.s.t;
import k.c.a.a.a.s.s.u;
import k.c.a.a.a.t.c;
import k.c.a.a.a.u.a;

public class b {
    public Hashtable A = null;
    public Hashtable B = null;
    public o C = null;
    public k.c.a.a.a.t.b a = c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", "k.c.a.a.a.s.b");
    public int b = 0;

    /* renamed from: c  reason: collision with root package name */
    public Hashtable f2209c;

    /* renamed from: d  reason: collision with root package name */
    public volatile Vector f2210d;

    /* renamed from: e  reason: collision with root package name */
    public volatile Vector f2211e;

    /* renamed from: f  reason: collision with root package name */
    public f f2212f;

    /* renamed from: g  reason: collision with root package name */
    public a f2213g = null;

    /* renamed from: h  reason: collision with root package name */
    public c f2214h = null;

    /* renamed from: i  reason: collision with root package name */
    public long f2215i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f2216j;

    /* renamed from: k  reason: collision with root package name */
    public a f2217k;

    /* renamed from: l  reason: collision with root package name */
    public int f2218l = 0;
    public int m = 0;
    public int n = 0;
    public final Object o = new Object();
    public final Object p = new Object();
    public boolean q = false;
    public long r = 0;
    public long s = 0;
    public long t = 0;
    public u u;
    public final Object v = new Object();
    public int w = 0;
    public boolean x = false;
    public Hashtable y = null;
    public Hashtable z = null;

    public b(a aVar, f fVar, c cVar, a aVar2, o oVar) {
        this.a.a(((f) aVar2.f2199c).y);
        this.a.a("k.c.a.a.a.s.b", "<Init>", "");
        this.f2209c = new Hashtable();
        this.f2211e = new Vector();
        this.y = new Hashtable();
        this.z = new Hashtable();
        this.A = new Hashtable();
        this.B = new Hashtable();
        this.u = new i();
        this.n = 0;
        this.m = 0;
        this.f2217k = aVar;
        this.f2214h = cVar;
        this.f2212f = fVar;
        this.f2213g = aVar2;
        this.C = oVar;
        aVar.a();
        Enumeration<String> keys = aVar.x.keys();
        int i2 = this.b;
        Vector vector = new Vector();
        this.a.b("k.c.a.a.a.s.b", "restoreState", "600");
        while (keys.hasMoreElements()) {
            String nextElement = keys.nextElement();
            a aVar3 = this.f2217k;
            aVar3.a();
            u a2 = a(nextElement, aVar3.x.get(nextElement));
            if (a2 != null) {
                if (nextElement.startsWith("r-")) {
                    this.a.b("k.c.a.a.a.s.b", "restoreState", "604", new Object[]{nextElement, a2});
                    this.B.put(Integer.valueOf(a2.b), a2);
                } else if (nextElement.startsWith("s-")) {
                    k.c.a.a.a.s.s.o oVar2 = (k.c.a.a.a.s.s.o) a2;
                    i2 = Math.max(oVar2.b, i2);
                    a aVar4 = this.f2217k;
                    String c2 = c((u) oVar2);
                    aVar4.a();
                    if (aVar4.x.containsKey(c2)) {
                        a aVar5 = this.f2217k;
                        String c3 = c((u) oVar2);
                        aVar5.a();
                        n nVar = (n) a(nextElement, aVar5.x.get(c3));
                        if (nVar != null) {
                            this.a.b("k.c.a.a.a.s.b", "restoreState", "605", new Object[]{nextElement, a2});
                            this.y.put(Integer.valueOf(nVar.b), nVar);
                        } else {
                            this.a.b("k.c.a.a.a.s.b", "restoreState", "606", new Object[]{nextElement, a2});
                        }
                    } else {
                        oVar2.f2284c = true;
                        if (oVar2.f2273g.f2193c == 2) {
                            this.a.b("k.c.a.a.a.s.b", "restoreState", "607", new Object[]{nextElement, a2});
                            this.y.put(Integer.valueOf(oVar2.b), oVar2);
                        } else {
                            this.a.b("k.c.a.a.a.s.b", "restoreState", "608", new Object[]{nextElement, a2});
                            this.z.put(Integer.valueOf(oVar2.b), oVar2);
                        }
                    }
                    this.f2212f.a(oVar2).a.f2248k = this.f2213g.f2199c;
                    this.f2209c.put(Integer.valueOf(oVar2.b), Integer.valueOf(oVar2.b));
                } else if (nextElement.startsWith("sb-")) {
                    k.c.a.a.a.s.s.o oVar3 = (k.c.a.a.a.s.s.o) a2;
                    i2 = Math.max(oVar3.b, i2);
                    int i3 = oVar3.f2273g.f2193c;
                    if (i3 == 2) {
                        this.a.b("k.c.a.a.a.s.b", "restoreState", "607", new Object[]{nextElement, a2});
                        this.y.put(Integer.valueOf(oVar3.b), oVar3);
                    } else if (i3 == 1) {
                        this.a.b("k.c.a.a.a.s.b", "restoreState", "608", new Object[]{nextElement, a2});
                        this.z.put(Integer.valueOf(oVar3.b), oVar3);
                    } else {
                        this.a.b("k.c.a.a.a.s.b", "restoreState", "511", new Object[]{nextElement, a2});
                        this.A.put(Integer.valueOf(oVar3.b), oVar3);
                        a aVar6 = this.f2217k;
                        aVar6.a();
                        aVar6.x.remove(nextElement);
                    }
                    this.f2212f.a(oVar3).a.f2248k = this.f2213g.f2199c;
                    this.f2209c.put(Integer.valueOf(oVar3.b), Integer.valueOf(oVar3.b));
                } else if (nextElement.startsWith("sc-")) {
                    a aVar7 = this.f2217k;
                    String d2 = d((n) a2);
                    aVar7.a();
                    if (!aVar7.x.containsKey(d2)) {
                        vector.addElement(nextElement);
                    }
                }
            }
        }
        Enumeration elements = vector.elements();
        while (elements.hasMoreElements()) {
            String str = (String) elements.nextElement();
            this.a.b("k.c.a.a.a.s.b", "restoreState", "609", new Object[]{str});
            this.f2217k.a(str);
        }
        this.b = i2;
    }

    public final void a(Vector vector, u uVar) {
        int i2 = uVar.b;
        for (int i3 = 0; i3 < vector.size(); i3++) {
            if (((u) vector.elementAt(i3)).b > i2) {
                vector.insertElementAt(uVar, i3);
                return;
            }
        }
        vector.addElement(uVar);
    }

    public final String b(u uVar) {
        return "sb-" + uVar.b;
    }

    public final String c(u uVar) {
        return "sc-" + uVar.b;
    }

    public final String d(u uVar) {
        return "s-" + uVar.b;
    }

    public final void e() {
        synchronized (this.o) {
            int i2 = this.m - 1;
            this.m = i2;
            this.a.b("k.c.a.a.a.s.b", "decrementInFlight", "646", new Object[]{Integer.valueOf(i2)});
            if (!a()) {
                this.o.notifyAll();
            }
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(8:7|(2:15|16)|17|18|(1:46)(5:20|(2:22|(1:47)(2:24|(2:48|26)))|27|(4:29|(1:31)|32|49)(2:33|(1:50)(2:35|(2:37|51)(2:38|52)))|45)|39|40|41) */
    /* JADX WARNING: Missing exception handler attribute for start block: B:17:0x0042 */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0046  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00d4 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public k.c.a.a.a.s.s.u f() {
        /*
            r10 = this;
            java.lang.Object r0 = r10.o
            monitor-enter(r0)
            r1 = 0
            r2 = r1
        L_0x0005:
            if (r2 == 0) goto L_0x0009
            monitor-exit(r0)     // Catch:{ all -> 0x00e1 }
            return r2
        L_0x0009:
            java.util.Vector r3 = r10.f2210d     // Catch:{ all -> 0x00e1 }
            boolean r3 = r3.isEmpty()     // Catch:{ all -> 0x00e1 }
            if (r3 == 0) goto L_0x0019
            java.util.Vector r3 = r10.f2211e     // Catch:{ all -> 0x00e1 }
            boolean r3 = r3.isEmpty()     // Catch:{ all -> 0x00e1 }
            if (r3 != 0) goto L_0x0027
        L_0x0019:
            java.util.Vector r3 = r10.f2211e     // Catch:{ all -> 0x00e1 }
            boolean r3 = r3.isEmpty()     // Catch:{ all -> 0x00e1 }
            if (r3 == 0) goto L_0x0042
            int r3 = r10.m     // Catch:{ all -> 0x00e1 }
            int r4 = r10.f2218l     // Catch:{ all -> 0x00e1 }
            if (r3 < r4) goto L_0x0042
        L_0x0027:
            k.c.a.a.a.t.b r3 = r10.a     // Catch:{ InterruptedException -> 0x0042 }
            java.lang.String r4 = "k.c.a.a.a.s.b"
            java.lang.String r5 = "get"
            java.lang.String r6 = "644"
            r3.b(r4, r5, r6)     // Catch:{ InterruptedException -> 0x0042 }
            java.lang.Object r3 = r10.o     // Catch:{ InterruptedException -> 0x0042 }
            r3.wait()     // Catch:{ InterruptedException -> 0x0042 }
            k.c.a.a.a.t.b r3 = r10.a     // Catch:{ InterruptedException -> 0x0042 }
            java.lang.String r4 = "k.c.a.a.a.s.b"
            java.lang.String r5 = "get"
            java.lang.String r6 = "647"
            r3.b(r4, r5, r6)     // Catch:{ InterruptedException -> 0x0042 }
        L_0x0042:
            java.util.Vector r3 = r10.f2211e     // Catch:{ all -> 0x00e1 }
            if (r3 == 0) goto L_0x00d4
            boolean r3 = r10.x     // Catch:{ all -> 0x00e1 }
            r4 = 0
            if (r3 != 0) goto L_0x0060
            java.util.Vector r3 = r10.f2211e     // Catch:{ all -> 0x00e1 }
            boolean r3 = r3.isEmpty()     // Catch:{ all -> 0x00e1 }
            if (r3 != 0) goto L_0x00d4
            java.util.Vector r3 = r10.f2211e     // Catch:{ all -> 0x00e1 }
            java.lang.Object r3 = r3.elementAt(r4)     // Catch:{ all -> 0x00e1 }
            k.c.a.a.a.s.s.u r3 = (k.c.a.a.a.s.s.u) r3     // Catch:{ all -> 0x00e1 }
            boolean r3 = r3 instanceof k.c.a.a.a.s.s.d     // Catch:{ all -> 0x00e1 }
            if (r3 != 0) goto L_0x0060
            goto L_0x00d4
        L_0x0060:
            java.util.Vector r3 = r10.f2211e     // Catch:{ all -> 0x00e1 }
            boolean r3 = r3.isEmpty()     // Catch:{ all -> 0x00e1 }
            r5 = 1
            if (r3 != 0) goto L_0x0092
            java.util.Vector r2 = r10.f2211e     // Catch:{ all -> 0x00e1 }
            java.lang.Object r2 = r2.remove(r4)     // Catch:{ all -> 0x00e1 }
            k.c.a.a.a.s.s.u r2 = (k.c.a.a.a.s.s.u) r2     // Catch:{ all -> 0x00e1 }
            boolean r3 = r2 instanceof k.c.a.a.a.s.s.n     // Catch:{ all -> 0x00e1 }
            if (r3 == 0) goto L_0x008d
            int r3 = r10.n     // Catch:{ all -> 0x00e1 }
            int r3 = r3 + r5
            r10.n = r3     // Catch:{ all -> 0x00e1 }
            k.c.a.a.a.t.b r6 = r10.a     // Catch:{ all -> 0x00e1 }
            java.lang.String r7 = "k.c.a.a.a.s.b"
            java.lang.String r8 = "get"
            java.lang.String r9 = "617"
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch:{ all -> 0x00e1 }
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch:{ all -> 0x00e1 }
            r5[r4] = r3     // Catch:{ all -> 0x00e1 }
            r6.b(r7, r8, r9, r5)     // Catch:{ all -> 0x00e1 }
        L_0x008d:
            r10.a()     // Catch:{ all -> 0x00e1 }
            goto L_0x0005
        L_0x0092:
            java.util.Vector r3 = r10.f2210d     // Catch:{ all -> 0x00e1 }
            boolean r3 = r3.isEmpty()     // Catch:{ all -> 0x00e1 }
            if (r3 != 0) goto L_0x0005
            int r3 = r10.m     // Catch:{ all -> 0x00e1 }
            int r6 = r10.f2218l     // Catch:{ all -> 0x00e1 }
            if (r3 >= r6) goto L_0x00c7
            java.util.Vector r2 = r10.f2210d     // Catch:{ all -> 0x00e1 }
            java.lang.Object r2 = r2.elementAt(r4)     // Catch:{ all -> 0x00e1 }
            k.c.a.a.a.s.s.u r2 = (k.c.a.a.a.s.s.u) r2     // Catch:{ all -> 0x00e1 }
            java.util.Vector r3 = r10.f2210d     // Catch:{ all -> 0x00e1 }
            r3.removeElementAt(r4)     // Catch:{ all -> 0x00e1 }
            int r3 = r10.m     // Catch:{ all -> 0x00e1 }
            int r3 = r3 + r5
            r10.m = r3     // Catch:{ all -> 0x00e1 }
            k.c.a.a.a.t.b r6 = r10.a     // Catch:{ all -> 0x00e1 }
            java.lang.String r7 = "k.c.a.a.a.s.b"
            java.lang.String r8 = "get"
            java.lang.String r9 = "623"
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch:{ all -> 0x00e1 }
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch:{ all -> 0x00e1 }
            r5[r4] = r3     // Catch:{ all -> 0x00e1 }
            r6.b(r7, r8, r9, r5)     // Catch:{ all -> 0x00e1 }
            goto L_0x0005
        L_0x00c7:
            k.c.a.a.a.t.b r3 = r10.a     // Catch:{ all -> 0x00e1 }
            java.lang.String r4 = "k.c.a.a.a.s.b"
            java.lang.String r5 = "get"
            java.lang.String r6 = "622"
            r3.b(r4, r5, r6)     // Catch:{ all -> 0x00e1 }
            goto L_0x0005
        L_0x00d4:
            k.c.a.a.a.t.b r2 = r10.a     // Catch:{ all -> 0x00e1 }
            java.lang.String r3 = "k.c.a.a.a.s.b"
            java.lang.String r4 = "get"
            java.lang.String r5 = "621"
            r2.b(r3, r4, r5)     // Catch:{ all -> 0x00e1 }
            monitor-exit(r0)     // Catch:{ all -> 0x00e1 }
            return r1
        L_0x00e1:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x00e1 }
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: k.c.a.a.a.s.b.f():k.c.a.a.a.s.s.u");
    }

    public long g() {
        return TimeUnit.NANOSECONDS.toMillis(this.f2215i);
    }

    public final synchronized int h() {
        int i2 = this.b;
        int i3 = 0;
        do {
            int i4 = this.b + 1;
            this.b = i4;
            if (i4 > 65535) {
                this.b = 1;
            }
            if (this.b == i2) {
                i3++;
                if (i3 == 2) {
                    throw k.b.c.e.a.a(32001);
                }
            }
        } while (this.f2209c.containsKey(Integer.valueOf(this.b)));
        Integer valueOf = Integer.valueOf(this.b);
        this.f2209c.put(valueOf, valueOf);
        return this.b;
    }

    public void i() {
        synchronized (this.o) {
            this.a.b("k.c.a.a.a.s.b", "notifyQueueLock", "638");
            this.o.notifyAll();
        }
    }

    public final void j() {
        this.f2210d = new Vector(this.f2218l);
        this.f2211e = new Vector();
        Enumeration keys = this.y.keys();
        while (keys.hasMoreElements()) {
            Object nextElement = keys.nextElement();
            u uVar = (u) this.y.get(nextElement);
            if (uVar instanceof k.c.a.a.a.s.s.o) {
                this.a.b("k.c.a.a.a.s.b", "restoreInflightMessages", "610", new Object[]{nextElement});
                uVar.f2284c = true;
                a(this.f2210d, (u) (k.c.a.a.a.s.s.o) uVar);
            } else if (uVar instanceof n) {
                this.a.b("k.c.a.a.a.s.b", "restoreInflightMessages", "611", new Object[]{nextElement});
                a(this.f2211e, (u) (n) uVar);
            }
        }
        Enumeration keys2 = this.z.keys();
        while (keys2.hasMoreElements()) {
            Object nextElement2 = keys2.nextElement();
            k.c.a.a.a.s.s.o oVar = (k.c.a.a.a.s.s.o) this.z.get(nextElement2);
            oVar.f2284c = true;
            this.a.b("k.c.a.a.a.s.b", "restoreInflightMessages", "612", new Object[]{nextElement2});
            a(this.f2210d, (u) oVar);
        }
        Enumeration keys3 = this.A.keys();
        while (keys3.hasMoreElements()) {
            Object nextElement3 = keys3.nextElement();
            this.a.b("k.c.a.a.a.s.b", "restoreInflightMessages", "512", new Object[]{nextElement3});
            a(this.f2210d, (u) (k.c.a.a.a.s.s.o) this.A.get(nextElement3));
        }
        this.f2211e = a(this.f2211e);
        this.f2210d = a(this.f2210d);
    }

    public void b() {
        this.a.b("k.c.a.a.a.s.b", "clearState", ">");
        a aVar = this.f2217k;
        aVar.a();
        aVar.x.clear();
        this.f2209c.clear();
        this.f2210d.clear();
        this.f2211e.clear();
        this.y.clear();
        this.z.clear();
        this.A.clear();
        this.B.clear();
        this.f2212f.a();
    }

    public final synchronized void c(int i2) {
        this.f2209c.remove(Integer.valueOf(i2));
    }

    public void d() {
        this.a.b("k.c.a.a.a.s.b", "connected", "631");
        this.x = true;
        r rVar = (r) this.C;
        rVar.a.b("k.c.a.a.a.r", "start", "659", new Object[]{rVar.f2198d});
        Timer timer = new Timer("MQTT Ping: " + rVar.f2198d);
        rVar.f2197c = timer;
        timer.schedule(new r.a((r.a) null), rVar.b.f2205i.g());
    }

    public void c() {
        this.f2209c.clear();
        if (this.f2210d != null) {
            this.f2210d.clear();
        }
        this.f2211e.clear();
        this.y.clear();
        this.z.clear();
        this.A.clear();
        this.B.clear();
        this.f2212f.a();
        this.f2209c = null;
        this.f2210d = null;
        this.f2211e = null;
        this.y = null;
        this.z = null;
        this.A = null;
        this.B = null;
        this.f2212f = null;
        this.f2214h = null;
        this.f2213g = null;
        this.f2217k = null;
        this.u = null;
    }

    public final String a(u uVar) {
        return "r-" + uVar.b;
    }

    public void e(u uVar) {
        this.s = System.nanoTime();
        this.a.b("k.c.a.a.a.s.b", "notifyReceivedMsg", "651", new Object[]{Integer.valueOf(uVar.b), uVar});
        if (this.q) {
            return;
        }
        if (uVar instanceof k.c.a.a.a.s.s.o) {
            k.c.a.a.a.s.s.o oVar = (k.c.a.a.a.s.s.o) uVar;
            int i2 = oVar.f2273g.f2193c;
            if (i2 == 0 || i2 == 1) {
                c cVar = this.f2214h;
                if (cVar != null) {
                    cVar.b(oVar);
                }
            } else if (i2 == 2) {
                this.f2217k.a(a(uVar), oVar);
                this.B.put(Integer.valueOf(oVar.b), oVar);
                a((u) new m(oVar), (q) null);
            }
        } else if (uVar instanceof n) {
            k.c.a.a.a.s.s.o oVar2 = (k.c.a.a.a.s.s.o) this.B.get(Integer.valueOf(uVar.b));
            if (oVar2 != null) {
                c cVar2 = this.f2214h;
                if (cVar2 != null) {
                    cVar2.b(oVar2);
                    return;
                }
                return;
            }
            a((u) new l(uVar.b), (q) null);
        }
    }

    public final u a(String str, k.c.a.a.a.m mVar) {
        u uVar;
        try {
            uVar = u.a(mVar);
        } catch (k e2) {
            this.a.a("k.c.a.a.a.s.b", "restoreMessage", "602", new Object[]{str}, e2);
            if (e2.y instanceof EOFException) {
                if (str != null) {
                    a aVar = this.f2217k;
                    aVar.a();
                    aVar.x.remove(str);
                }
                uVar = null;
            } else {
                throw e2;
            }
        }
        this.a.b("k.c.a.a.a.s.b", "restoreMessage", "601", new Object[]{str, uVar});
        return uVar;
    }

    public void b(int i2) {
        if (i2 > 0) {
            this.r = System.nanoTime();
        }
        this.a.b("k.c.a.a.a.s.b", "notifySentBytes", "643", new Object[]{Integer.valueOf(i2)});
    }

    public final Vector a(Vector vector) {
        Vector vector2 = new Vector();
        if (vector.size() == 0) {
            return vector2;
        }
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i2 < vector.size()) {
            int i6 = ((u) vector.elementAt(i2)).b;
            int i7 = i6 - i3;
            if (i7 > i4) {
                i5 = i2;
                i4 = i7;
            }
            i2++;
            i3 = i6;
        }
        int i8 = (65535 - i3) + ((u) vector.elementAt(0)).b > i4 ? 0 : i5;
        for (int i9 = i8; i9 < vector.size(); i9++) {
            vector2.addElement(vector.elementAt(i9));
        }
        for (int i10 = 0; i10 < i8; i10++) {
            vector2.addElement(vector.elementAt(i10));
        }
        return vector2;
    }

    /* JADX WARNING: CFG modification limit reached, blocks count: 128 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.Vector b(k.c.a.a.a.k r6) {
        /*
            r5 = this;
            k.c.a.a.a.t.b r0 = r5.a
            java.lang.String r1 = "k.c.a.a.a.s.b"
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r3 = 0
            r2[r3] = r6
            java.lang.String r3 = "resolveOldTokens"
            java.lang.String r4 = "632"
            r0.b(r1, r3, r4, r2)
            if (r6 != 0) goto L_0x001a
            k.c.a.a.a.k r6 = new k.c.a.a.a.k
            r0 = 32102(0x7d66, float:4.4984E-41)
            r6.<init>((int) r0)
        L_0x001a:
            k.c.a.a.a.s.f r0 = r5.f2212f
            java.util.Vector r0 = r0.d()
            java.util.Enumeration r1 = r0.elements()
        L_0x0024:
            boolean r2 = r1.hasMoreElements()
            if (r2 != 0) goto L_0x002b
            return r0
        L_0x002b:
            java.lang.Object r2 = r1.nextElement()
            k.c.a.a.a.q r2 = (k.c.a.a.a.q) r2
            monitor-enter(r2)
            k.c.a.a.a.s.p r3 = r2.a     // Catch:{ all -> 0x005a }
            boolean r3 = r3.b     // Catch:{ all -> 0x005a }
            if (r3 != 0) goto L_0x0049
            k.c.a.a.a.s.p r3 = r2.a     // Catch:{ all -> 0x005a }
            boolean r3 = r3.f2240c     // Catch:{ all -> 0x005a }
            if (r3 != 0) goto L_0x0049
            k.c.a.a.a.s.p r3 = r2.a     // Catch:{ all -> 0x005a }
            k.c.a.a.a.k r3 = r3.f2245h     // Catch:{ all -> 0x005a }
            if (r3 != 0) goto L_0x0049
            k.c.a.a.a.s.p r3 = r2.a     // Catch:{ all -> 0x005a }
            r3.a((k.c.a.a.a.k) r6)     // Catch:{ all -> 0x005a }
        L_0x0049:
            monitor-exit(r2)     // Catch:{ all -> 0x005a }
            boolean r3 = r2 instanceof k.c.a.a.a.j
            if (r3 != 0) goto L_0x0024
            k.c.a.a.a.s.f r3 = r5.f2212f
            k.c.a.a.a.s.p r2 = r2.a
            java.lang.String r2 = r2.f2247j
            r3.a((java.lang.String) r2)
            goto L_0x0024
        L_0x0058:
            monitor-exit(r2)     // Catch:{ all -> 0x005a }
            throw r6
        L_0x005a:
            r6 = move-exception
            goto L_0x0058
        */
        throw new UnsupportedOperationException("Method not decompiled: k.c.a.a.a.s.b.b(k.c.a.a.a.k):java.util.Vector");
    }

    public void f(u uVar) {
        int i2;
        this.r = System.nanoTime();
        this.a.b("k.c.a.a.a.s.b", "notifySent", "625", new Object[]{uVar.i()});
        q qVar = uVar.f2285d;
        if (qVar != null || (qVar = this.f2212f.a(uVar)) != null) {
            qVar.a.b();
            if (uVar instanceof i) {
                synchronized (this.v) {
                    long nanoTime = System.nanoTime();
                    synchronized (this.v) {
                        this.t = nanoTime;
                        i2 = this.w + 1;
                        this.w = i2;
                    }
                    this.a.b("k.c.a.a.a.s.b", "notifySent", "635", new Object[]{Integer.valueOf(i2)});
                }
            } else if ((uVar instanceof k.c.a.a.a.s.s.o) && ((k.c.a.a.a.s.s.o) uVar).f2273g.f2193c == 0) {
                qVar.a.a((u) null, (k) null);
                this.f2214h.a(qVar);
                e();
                c(uVar.b);
                this.f2212f.b(uVar);
                a();
            }
        }
    }

    public void a(u uVar, q qVar) {
        if (uVar.m() && uVar.b == 0) {
            if ((uVar instanceof k.c.a.a.a.s.s.o) && ((k.c.a.a.a.s.s.o) uVar).f2273g.f2193c != 0) {
                uVar.a(h());
            } else if ((uVar instanceof k.c.a.a.a.s.s.k) || (uVar instanceof m) || (uVar instanceof n) || (uVar instanceof l) || (uVar instanceof k.c.a.a.a.s.s.r) || (uVar instanceof k.c.a.a.a.s.s.q) || (uVar instanceof t) || (uVar instanceof s)) {
                uVar.a(h());
            }
        }
        if (qVar != null) {
            uVar.f2285d = qVar;
            try {
                qVar.a.n = uVar.b;
            } catch (Exception unused) {
            }
        }
        if (uVar instanceof k.c.a.a.a.s.s.o) {
            synchronized (this.o) {
                if (this.m < this.f2218l) {
                    k.c.a.a.a.l lVar = ((k.c.a.a.a.s.s.o) uVar).f2273g;
                    this.a.b("k.c.a.a.a.s.b", "send", "628", new Object[]{Integer.valueOf(uVar.b), Integer.valueOf(lVar.f2193c), uVar});
                    int i2 = lVar.f2193c;
                    if (i2 == 1) {
                        this.z.put(Integer.valueOf(uVar.b), uVar);
                        this.f2217k.a(d(uVar), (k.c.a.a.a.s.s.o) uVar);
                        this.f2212f.a(qVar, uVar);
                    } else if (i2 == 2) {
                        this.y.put(Integer.valueOf(uVar.b), uVar);
                        this.f2217k.a(d(uVar), (k.c.a.a.a.s.s.o) uVar);
                        this.f2212f.a(qVar, uVar);
                    }
                    this.f2210d.addElement(uVar);
                    this.o.notifyAll();
                } else {
                    this.a.b("k.c.a.a.a.s.b", "send", "613", new Object[]{Integer.valueOf(this.m)});
                    throw new k(32202);
                }
            }
            return;
        }
        this.a.b("k.c.a.a.a.s.b", "send", "615", new Object[]{Integer.valueOf(uVar.b), uVar});
        if (uVar instanceof d) {
            synchronized (this.o) {
                this.f2212f.a(qVar, uVar);
                this.f2211e.insertElementAt(uVar, 0);
                this.o.notifyAll();
            }
            return;
        }
        if (uVar instanceof i) {
            this.u = uVar;
        } else if (uVar instanceof n) {
            this.y.put(Integer.valueOf(uVar.b), uVar);
            this.f2217k.a(c(uVar), (n) uVar);
        } else if (uVar instanceof l) {
            this.f2217k.a(a(uVar));
        }
        synchronized (this.o) {
            if (!(uVar instanceof k.c.a.a.a.s.s.b)) {
                this.f2212f.a(qVar, uVar);
            }
            this.f2211e.addElement(uVar);
            this.o.notifyAll();
        }
    }

    public void a(k.c.a.a.a.s.s.o oVar) {
        synchronized (this.o) {
            this.a.b("k.c.a.a.a.s.b", "undo", "618", new Object[]{Integer.valueOf(oVar.b), Integer.valueOf(oVar.f2273g.f2193c)});
            if (oVar.f2273g.f2193c == 1) {
                this.z.remove(Integer.valueOf(oVar.b));
            } else {
                this.y.remove(Integer.valueOf(oVar.b));
            }
            this.f2210d.removeElement(oVar);
            this.f2217k.a(d(oVar));
            this.f2212f.b(oVar);
            if (oVar.f2273g.f2193c > 0) {
                c(oVar.b);
                oVar.a(0);
            }
            a();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0027, code lost:
        if (r2 <= 0) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0029, code lost:
        r2 = java.lang.System.nanoTime();
        r7 = r1.v;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0032, code lost:
        monitor-enter(r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0037, code lost:
        if (r1.w <= 0) goto L_0x0083;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0043, code lost:
        if ((r2 - r1.s) >= (r1.f2215i + ((long) 100000))) goto L_0x0046;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0046, code lost:
        r1.a.a("k.c.a.a.a.s.b", "checkForActivity", "619", new java.lang.Object[]{java.lang.Long.valueOf(r1.f2215i), java.lang.Long.valueOf(r1.r), java.lang.Long.valueOf(r1.s), java.lang.Long.valueOf(r2), java.lang.Long.valueOf(r1.t)});
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0082, code lost:
        throw k.b.c.e.a.a(32000);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0085, code lost:
        if (r1.w != 0) goto L_0x00d3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0093, code lost:
        if ((r2 - r1.r) >= (r1.f2215i * 2)) goto L_0x0096;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0096, code lost:
        r1.a.a("k.c.a.a.a.s.b", "checkForActivity", "642", new java.lang.Object[]{java.lang.Long.valueOf(r1.f2215i), java.lang.Long.valueOf(r1.r), java.lang.Long.valueOf(r1.s), java.lang.Long.valueOf(r2), java.lang.Long.valueOf(r1.t)});
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x00d2, code lost:
        throw k.b.c.e.a.a(32002);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x00d5, code lost:
        if (r1.w != 0) goto L_0x00e3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00e1, code lost:
        if ((r2 - r1.s) >= (r1.f2215i - ((long) 100000))) goto L_0x00ef;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00ed, code lost:
        if ((r2 - r1.r) < (r1.f2215i - ((long) 100000))) goto L_0x013f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00ef, code lost:
        r1.a.b("k.c.a.a.a.s.b", "checkForActivity", "620", new java.lang.Object[]{java.lang.Long.valueOf(r1.f2215i), java.lang.Long.valueOf(r1.r), java.lang.Long.valueOf(r1.s)});
        r2 = new k.c.a.a.a.q(((k.c.a.a.a.f) r1.f2213g.f2199c).y);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x0123, code lost:
        if (r0 == null) goto L_0x0129;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x0125, code lost:
        r2.a.f2249l = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x0129, code lost:
        r1.f2212f.a(r2, r1.u);
        r1.f2211e.insertElementAt(r1.u, 0);
        r8 = g();
        i();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x013f, code lost:
        r1.a.b("k.c.a.a.a.s.b", "checkForActivity", "634", (java.lang.Object[]) null);
        r8 = java.lang.Math.max(1, g() - (r2 - r1.r));
        r2 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x0159, code lost:
        monitor-exit(r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x015a, code lost:
        r1.a.b("k.c.a.a.a.s.b", "checkForActivity", "624", new java.lang.Object[]{java.lang.Long.valueOf(r8)});
        r0 = (k.c.a.a.a.r) r1.C;
        r0.f2197c.schedule(new k.c.a.a.a.r.a((k.c.a.a.a.r.a) null), r8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:?, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:?, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:?, code lost:
        return r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x001d, code lost:
        r2 = r1.f2215i;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0021, code lost:
        if (r1.x == false) goto L_?;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public k.c.a.a.a.q a(k.c.a.a.a.a r17) {
        /*
            r16 = this;
            r1 = r16
            r0 = r17
            k.c.a.a.a.t.b r2 = r1.a
            java.lang.String r3 = "k.c.a.a.a.s.b"
            r4 = 0
            java.lang.Object[] r5 = new java.lang.Object[r4]
            java.lang.String r6 = "checkForActivity"
            java.lang.String r7 = "616"
            r2.b(r3, r6, r7, r5)
            java.lang.Object r2 = r1.p
            monitor-enter(r2)
            boolean r3 = r1.q     // Catch:{ all -> 0x0181 }
            r5 = 0
            if (r3 == 0) goto L_0x001c
            monitor-exit(r2)     // Catch:{ all -> 0x0181 }
            return r5
        L_0x001c:
            monitor-exit(r2)     // Catch:{ all -> 0x0181 }
            long r2 = r1.f2215i
            boolean r6 = r1.x
            if (r6 == 0) goto L_0x0180
            r6 = 0
            int r8 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r8 <= 0) goto L_0x0180
            long r2 = java.lang.System.nanoTime()
            r6 = 100000(0x186a0, float:1.4013E-40)
            java.lang.Object r7 = r1.v
            monitor-enter(r7)
            int r8 = r1.w     // Catch:{ all -> 0x017d }
            r10 = 5
            r13 = 1
            if (r8 <= 0) goto L_0x0083
            long r14 = r1.s     // Catch:{ all -> 0x017d }
            long r14 = r2 - r14
            long r11 = r1.f2215i     // Catch:{ all -> 0x017d }
            long r8 = (long) r6     // Catch:{ all -> 0x017d }
            long r11 = r11 + r8
            int r8 = (r14 > r11 ? 1 : (r14 == r11 ? 0 : -1))
            if (r8 >= 0) goto L_0x0046
            goto L_0x0083
        L_0x0046:
            k.c.a.a.a.t.b r0 = r1.a     // Catch:{ all -> 0x017d }
            java.lang.String r5 = "k.c.a.a.a.s.b"
            java.lang.String r6 = "checkForActivity"
            java.lang.String r8 = "619"
            java.lang.Object[] r9 = new java.lang.Object[r10]     // Catch:{ all -> 0x017d }
            long r10 = r1.f2215i     // Catch:{ all -> 0x017d }
            java.lang.Long r10 = java.lang.Long.valueOf(r10)     // Catch:{ all -> 0x017d }
            r9[r4] = r10     // Catch:{ all -> 0x017d }
            long r10 = r1.r     // Catch:{ all -> 0x017d }
            java.lang.Long r4 = java.lang.Long.valueOf(r10)     // Catch:{ all -> 0x017d }
            r9[r13] = r4     // Catch:{ all -> 0x017d }
            long r10 = r1.s     // Catch:{ all -> 0x017d }
            java.lang.Long r4 = java.lang.Long.valueOf(r10)     // Catch:{ all -> 0x017d }
            r10 = 2
            r9[r10] = r4     // Catch:{ all -> 0x017d }
            java.lang.Long r2 = java.lang.Long.valueOf(r2)     // Catch:{ all -> 0x017d }
            r3 = 3
            r9[r3] = r2     // Catch:{ all -> 0x017d }
            long r2 = r1.t     // Catch:{ all -> 0x017d }
            java.lang.Long r2 = java.lang.Long.valueOf(r2)     // Catch:{ all -> 0x017d }
            r3 = 4
            r9[r3] = r2     // Catch:{ all -> 0x017d }
            r0.a(r5, r6, r8, r9)     // Catch:{ all -> 0x017d }
            r0 = 32000(0x7d00, float:4.4842E-41)
            k.c.a.a.a.k r0 = k.b.c.e.a.a((int) r0)     // Catch:{ all -> 0x017d }
            throw r0     // Catch:{ all -> 0x017d }
        L_0x0083:
            int r9 = r1.w     // Catch:{ all -> 0x017d }
            if (r9 != 0) goto L_0x00d3
            long r11 = r1.r     // Catch:{ all -> 0x017d }
            long r11 = r2 - r11
            r14 = 2
            long r8 = r1.f2215i     // Catch:{ all -> 0x017d }
            long r8 = r8 * r14
            int r14 = (r11 > r8 ? 1 : (r11 == r8 ? 0 : -1))
            if (r14 >= 0) goto L_0x0096
            goto L_0x00d3
        L_0x0096:
            k.c.a.a.a.t.b r0 = r1.a     // Catch:{ all -> 0x017d }
            java.lang.String r5 = "k.c.a.a.a.s.b"
            java.lang.String r6 = "checkForActivity"
            java.lang.String r8 = "642"
            java.lang.Object[] r9 = new java.lang.Object[r10]     // Catch:{ all -> 0x017d }
            long r10 = r1.f2215i     // Catch:{ all -> 0x017d }
            java.lang.Long r10 = java.lang.Long.valueOf(r10)     // Catch:{ all -> 0x017d }
            r9[r4] = r10     // Catch:{ all -> 0x017d }
            long r10 = r1.r     // Catch:{ all -> 0x017d }
            java.lang.Long r4 = java.lang.Long.valueOf(r10)     // Catch:{ all -> 0x017d }
            r9[r13] = r4     // Catch:{ all -> 0x017d }
            long r10 = r1.s     // Catch:{ all -> 0x017d }
            java.lang.Long r4 = java.lang.Long.valueOf(r10)     // Catch:{ all -> 0x017d }
            r10 = 2
            r9[r10] = r4     // Catch:{ all -> 0x017d }
            java.lang.Long r2 = java.lang.Long.valueOf(r2)     // Catch:{ all -> 0x017d }
            r3 = 3
            r9[r3] = r2     // Catch:{ all -> 0x017d }
            long r2 = r1.t     // Catch:{ all -> 0x017d }
            java.lang.Long r2 = java.lang.Long.valueOf(r2)     // Catch:{ all -> 0x017d }
            r3 = 4
            r9[r3] = r2     // Catch:{ all -> 0x017d }
            r0.a(r5, r6, r8, r9)     // Catch:{ all -> 0x017d }
            r0 = 32002(0x7d02, float:4.4844E-41)
            k.c.a.a.a.k r0 = k.b.c.e.a.a((int) r0)     // Catch:{ all -> 0x017d }
            throw r0     // Catch:{ all -> 0x017d }
        L_0x00d3:
            int r9 = r1.w     // Catch:{ all -> 0x017d }
            if (r9 != 0) goto L_0x00e3
            long r9 = r1.s     // Catch:{ all -> 0x017d }
            long r9 = r2 - r9
            long r11 = r1.f2215i     // Catch:{ all -> 0x017d }
            long r14 = (long) r6     // Catch:{ all -> 0x017d }
            long r11 = r11 - r14
            int r14 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r14 >= 0) goto L_0x00ef
        L_0x00e3:
            long r9 = r1.r     // Catch:{ all -> 0x017d }
            long r9 = r2 - r9
            long r11 = r1.f2215i     // Catch:{ all -> 0x017d }
            long r14 = (long) r6     // Catch:{ all -> 0x017d }
            long r11 = r11 - r14
            int r6 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r6 < 0) goto L_0x013f
        L_0x00ef:
            k.c.a.a.a.t.b r2 = r1.a     // Catch:{ all -> 0x017d }
            java.lang.String r3 = "k.c.a.a.a.s.b"
            java.lang.String r6 = "checkForActivity"
            java.lang.String r9 = "620"
            r10 = 3
            java.lang.Object[] r10 = new java.lang.Object[r10]     // Catch:{ all -> 0x017d }
            long r11 = r1.f2215i     // Catch:{ all -> 0x017d }
            java.lang.Long r11 = java.lang.Long.valueOf(r11)     // Catch:{ all -> 0x017d }
            r10[r4] = r11     // Catch:{ all -> 0x017d }
            long r11 = r1.r     // Catch:{ all -> 0x017d }
            java.lang.Long r11 = java.lang.Long.valueOf(r11)     // Catch:{ all -> 0x017d }
            r10[r13] = r11     // Catch:{ all -> 0x017d }
            long r11 = r1.s     // Catch:{ all -> 0x017d }
            java.lang.Long r11 = java.lang.Long.valueOf(r11)     // Catch:{ all -> 0x017d }
            r8 = 2
            r10[r8] = r11     // Catch:{ all -> 0x017d }
            r2.b(r3, r6, r9, r10)     // Catch:{ all -> 0x017d }
            k.c.a.a.a.q r2 = new k.c.a.a.a.q     // Catch:{ all -> 0x017d }
            k.c.a.a.a.s.a r3 = r1.f2213g     // Catch:{ all -> 0x017d }
            k.c.a.a.a.b r3 = r3.f2199c     // Catch:{ all -> 0x017d }
            k.c.a.a.a.f r3 = (k.c.a.a.a.f) r3     // Catch:{ all -> 0x017d }
            java.lang.String r3 = r3.y     // Catch:{ all -> 0x017d }
            r2.<init>(r3)     // Catch:{ all -> 0x017d }
            if (r0 == 0) goto L_0x0129
            k.c.a.a.a.s.p r3 = r2.a     // Catch:{ all -> 0x017d }
            r3.f2249l = r0     // Catch:{ all -> 0x017d }
        L_0x0129:
            k.c.a.a.a.s.f r0 = r1.f2212f     // Catch:{ all -> 0x017d }
            k.c.a.a.a.s.s.u r3 = r1.u     // Catch:{ all -> 0x017d }
            r0.a((k.c.a.a.a.q) r2, (k.c.a.a.a.s.s.u) r3)     // Catch:{ all -> 0x017d }
            java.util.Vector r0 = r1.f2211e     // Catch:{ all -> 0x017d }
            k.c.a.a.a.s.s.u r3 = r1.u     // Catch:{ all -> 0x017d }
            r0.insertElementAt(r3, r4)     // Catch:{ all -> 0x017d }
            long r8 = r16.g()     // Catch:{ all -> 0x017d }
            r16.i()     // Catch:{ all -> 0x017d }
            goto L_0x0159
        L_0x013f:
            k.c.a.a.a.t.b r0 = r1.a     // Catch:{ all -> 0x017d }
            java.lang.String r6 = "k.c.a.a.a.s.b"
            java.lang.String r8 = "checkForActivity"
            java.lang.String r9 = "634"
            r0.b(r6, r8, r9, r5)     // Catch:{ all -> 0x017d }
            r8 = 1
            long r10 = r16.g()     // Catch:{ all -> 0x017d }
            long r14 = r1.r     // Catch:{ all -> 0x017d }
            long r2 = r2 - r14
            long r10 = r10 - r2
            long r8 = java.lang.Math.max(r8, r10)     // Catch:{ all -> 0x017d }
            r2 = r5
        L_0x0159:
            monitor-exit(r7)     // Catch:{ all -> 0x017d }
            k.c.a.a.a.t.b r0 = r1.a
            java.lang.String r3 = "k.c.a.a.a.s.b"
            java.lang.Object[] r6 = new java.lang.Object[r13]
            java.lang.Long r7 = java.lang.Long.valueOf(r8)
            r6[r4] = r7
            java.lang.String r4 = "checkForActivity"
            java.lang.String r7 = "624"
            r0.b(r3, r4, r7, r6)
            k.c.a.a.a.o r0 = r1.C
            k.c.a.a.a.r r0 = (k.c.a.a.a.r) r0
            java.util.Timer r3 = r0.f2197c
            k.c.a.a.a.r$a r4 = new k.c.a.a.a.r$a
            r4.<init>(r5)
            r3.schedule(r4, r8)
            r5 = r2
            goto L_0x0180
        L_0x017d:
            r0 = move-exception
            monitor-exit(r7)     // Catch:{ all -> 0x017d }
            throw r0
        L_0x0180:
            return r5
        L_0x0181:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0181 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k.c.a.a.a.s.b.a(k.c.a.a.a.a):k.c.a.a.a.q");
    }

    public boolean a() {
        int b2 = this.f2212f.b();
        if (!this.q || b2 != 0 || this.f2211e.size() != 0 || !this.f2214h.a()) {
            return false;
        }
        this.a.b("k.c.a.a.a.s.b", "checkQuiesceLock", "626", new Object[]{Boolean.valueOf(this.q), Integer.valueOf(this.m), Integer.valueOf(this.f2211e.size()), Integer.valueOf(this.n), Boolean.valueOf(this.f2214h.a()), Integer.valueOf(b2)});
        synchronized (this.p) {
            this.p.notifyAll();
        }
        return true;
    }

    public void a(int i2) {
        if (i2 > 0) {
            this.s = System.nanoTime();
        }
        this.a.b("k.c.a.a.a.s.b", "notifyReceivedBytes", "630", new Object[]{Integer.valueOf(i2)});
    }

    public void a(k.c.a.a.a.s.s.b bVar) {
        this.s = System.nanoTime();
        this.a.b("k.c.a.a.a.s.b", "notifyReceivedAck", "627", new Object[]{Integer.valueOf(bVar.b), bVar});
        q a2 = this.f2212f.a((u) bVar);
        if (a2 == null) {
            this.a.b("k.c.a.a.a.s.b", "notifyReceivedAck", "662", new Object[]{Integer.valueOf(bVar.b)});
        } else if (bVar instanceof m) {
            a((u) new n((m) bVar), a2);
        } else if ((bVar instanceof k.c.a.a.a.s.s.k) || (bVar instanceof l)) {
            a(bVar, a2, (k) null);
        } else if (bVar instanceof j) {
            synchronized (this.v) {
                this.w = Math.max(0, this.w - 1);
                a(bVar, a2, (k) null);
                if (this.w == 0) {
                    this.f2212f.b(bVar);
                }
            }
            this.a.b("k.c.a.a.a.s.b", "notifyReceivedAck", "636", new Object[]{Integer.valueOf(this.w)});
        } else if (bVar instanceof k.c.a.a.a.s.s.c) {
            k.c.a.a.a.s.s.c cVar = (k.c.a.a.a.s.s.c) bVar;
            int i2 = cVar.f2265g;
            if (i2 == 0) {
                synchronized (this.o) {
                    if (this.f2216j) {
                        b();
                        this.f2212f.a(a2, (u) bVar);
                    }
                    this.n = 0;
                    this.m = 0;
                    j();
                    d();
                }
                this.f2213g.a(cVar, (k) null);
                a(bVar, a2, (k) null);
                this.f2212f.b(bVar);
                synchronized (this.o) {
                    this.o.notifyAll();
                }
            } else {
                throw k.b.c.e.a.a(i2);
            }
        } else {
            a(bVar, a2, (k) null);
            c(bVar.b);
            this.f2212f.b(bVar);
        }
        a();
    }

    public void a(q qVar) {
        u uVar = qVar.a.f2244g;
        if (uVar != null && (uVar instanceof k.c.a.a.a.s.s.b)) {
            this.a.b("k.c.a.a.a.s.b", "notifyComplete", "629", new Object[]{Integer.valueOf(uVar.b), qVar, uVar});
            k.c.a.a.a.s.s.b bVar = (k.c.a.a.a.s.s.b) uVar;
            if (bVar instanceof k.c.a.a.a.s.s.k) {
                this.f2217k.a(d(uVar));
                this.f2217k.a(b(uVar));
                this.z.remove(Integer.valueOf(bVar.b));
                e();
                c(uVar.b);
                this.f2212f.b(uVar);
                this.a.b("k.c.a.a.a.s.b", "notifyComplete", "650", new Object[]{Integer.valueOf(bVar.b)});
            } else if (bVar instanceof l) {
                this.f2217k.a(d(uVar));
                this.f2217k.a(c(uVar));
                this.f2217k.a(b(uVar));
                this.y.remove(Integer.valueOf(bVar.b));
                this.n--;
                e();
                c(uVar.b);
                this.f2212f.b(uVar);
                this.a.b("k.c.a.a.a.s.b", "notifyComplete", "645", new Object[]{Integer.valueOf(bVar.b), Integer.valueOf(this.n)});
            }
            a();
        }
    }

    public void a(u uVar, q qVar, k kVar) {
        qVar.a.a(uVar, kVar);
        qVar.a.a();
        if (uVar != null && (uVar instanceof k.c.a.a.a.s.s.b) && !(uVar instanceof m)) {
            this.a.b("k.c.a.a.a.s.b", "notifyResult", "648", new Object[]{qVar.a.f2247j, uVar, kVar});
            this.f2214h.a(qVar);
        }
        if (uVar == null) {
            this.a.b("k.c.a.a.a.s.b", "notifyResult", "649", new Object[]{qVar.a.f2247j, kVar});
            this.f2214h.a(qVar);
        }
    }

    public void a(k kVar) {
        this.a.b("k.c.a.a.a.s.b", "disconnected", "633", new Object[]{kVar});
        this.x = false;
        try {
            if (this.f2216j) {
                b();
            }
            this.f2210d.clear();
            this.f2211e.clear();
            synchronized (this.v) {
                this.w = 0;
            }
        } catch (k unused) {
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
    public void a(long r11) {
        /*
            r10 = this;
            r0 = 0
            int r2 = (r11 > r0 ? 1 : (r11 == r0 ? 0 : -1))
            if (r2 <= 0) goto L_0x00a5
            k.c.a.a.a.t.b r0 = r10.a
            java.lang.String r1 = "k.c.a.a.a.s.b"
            r2 = 1
            java.lang.Object[] r3 = new java.lang.Object[r2]
            java.lang.Long r4 = java.lang.Long.valueOf(r11)
            r5 = 0
            r3[r5] = r4
            java.lang.String r4 = "quiesce"
            java.lang.String r6 = "637"
            r0.b(r1, r4, r6, r3)
            java.lang.Object r0 = r10.o
            monitor-enter(r0)
            r10.q = r2     // Catch:{ all -> 0x00a2 }
            monitor-exit(r0)     // Catch:{ all -> 0x00a2 }
            k.c.a.a.a.s.c r0 = r10.f2214h
            r0.d()
            r10.i()
            java.lang.Object r1 = r10.p
            monitor-enter(r1)
            k.c.a.a.a.s.f r0 = r10.f2212f     // Catch:{ InterruptedException -> 0x007e }
            int r0 = r0.b()     // Catch:{ InterruptedException -> 0x007e }
            if (r0 > 0) goto L_0x0044
            java.util.Vector r3 = r10.f2211e     // Catch:{ InterruptedException -> 0x007e }
            int r3 = r3.size()     // Catch:{ InterruptedException -> 0x007e }
            if (r3 > 0) goto L_0x0044
            k.c.a.a.a.s.c r3 = r10.f2214h     // Catch:{ InterruptedException -> 0x007e }
            boolean r3 = r3.a()     // Catch:{ InterruptedException -> 0x007e }
            if (r3 != 0) goto L_0x007e
        L_0x0044:
            k.c.a.a.a.t.b r3 = r10.a     // Catch:{ InterruptedException -> 0x007e }
            java.lang.String r4 = "k.c.a.a.a.s.b"
            java.lang.String r6 = "quiesce"
            java.lang.String r7 = "639"
            r8 = 4
            java.lang.Object[] r8 = new java.lang.Object[r8]     // Catch:{ InterruptedException -> 0x007e }
            int r9 = r10.m     // Catch:{ InterruptedException -> 0x007e }
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)     // Catch:{ InterruptedException -> 0x007e }
            r8[r5] = r9     // Catch:{ InterruptedException -> 0x007e }
            java.util.Vector r9 = r10.f2211e     // Catch:{ InterruptedException -> 0x007e }
            int r9 = r9.size()     // Catch:{ InterruptedException -> 0x007e }
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)     // Catch:{ InterruptedException -> 0x007e }
            r8[r2] = r9     // Catch:{ InterruptedException -> 0x007e }
            r2 = 2
            int r9 = r10.n     // Catch:{ InterruptedException -> 0x007e }
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)     // Catch:{ InterruptedException -> 0x007e }
            r8[r2] = r9     // Catch:{ InterruptedException -> 0x007e }
            r2 = 3
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch:{ InterruptedException -> 0x007e }
            r8[r2] = r0     // Catch:{ InterruptedException -> 0x007e }
            r3.b(r4, r6, r7, r8)     // Catch:{ InterruptedException -> 0x007e }
            java.lang.Object r0 = r10.p     // Catch:{ InterruptedException -> 0x007e }
            r0.wait(r11)     // Catch:{ InterruptedException -> 0x007e }
            goto L_0x007e
        L_0x007c:
            r11 = move-exception
            goto L_0x00a0
        L_0x007e:
            monitor-exit(r1)     // Catch:{ all -> 0x007c }
            java.lang.Object r11 = r10.o
            monitor-enter(r11)
            java.util.Vector r12 = r10.f2210d     // Catch:{ all -> 0x009d }
            r12.clear()     // Catch:{ all -> 0x009d }
            java.util.Vector r12 = r10.f2211e     // Catch:{ all -> 0x009d }
            r12.clear()     // Catch:{ all -> 0x009d }
            r10.q = r5     // Catch:{ all -> 0x009d }
            r10.m = r5     // Catch:{ all -> 0x009d }
            monitor-exit(r11)     // Catch:{ all -> 0x009d }
            k.c.a.a.a.t.b r11 = r10.a
            java.lang.String r12 = "k.c.a.a.a.s.b"
            java.lang.String r0 = "quiesce"
            java.lang.String r1 = "640"
            r11.b(r12, r0, r1)
            goto L_0x00a5
        L_0x009d:
            r12 = move-exception
            monitor-exit(r11)     // Catch:{ all -> 0x009d }
            throw r12
        L_0x00a0:
            monitor-exit(r1)     // Catch:{ all -> 0x007c }
            throw r11
        L_0x00a2:
            r11 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x00a2 }
            throw r11
        L_0x00a5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.c.a.a.a.s.b.a(long):void");
    }
}
