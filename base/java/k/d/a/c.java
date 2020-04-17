package k.d.a;

import android.os.Looper;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.logging.Level;
import k.d.a.h;

public class c {
    public static volatile c s;
    public static final d t = new d();
    public static final Map<Class<?>, List<Class<?>>> u = new HashMap();
    public final Map<Class<?>, CopyOnWriteArrayList<q>> a;
    public final Map<Object, List<Class<?>>> b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<Class<?>, Object> f2290c;

    /* renamed from: d  reason: collision with root package name */
    public final ThreadLocal<b> f2291d = new a(this);

    /* renamed from: e  reason: collision with root package name */
    public final h f2292e;

    /* renamed from: f  reason: collision with root package name */
    public final l f2293f;

    /* renamed from: g  reason: collision with root package name */
    public final b f2294g;

    /* renamed from: h  reason: collision with root package name */
    public final a f2295h;

    /* renamed from: i  reason: collision with root package name */
    public final p f2296i;

    /* renamed from: j  reason: collision with root package name */
    public final ExecutorService f2297j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f2298k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f2299l;
    public final boolean m;
    public final boolean n;
    public final boolean o;
    public final boolean p;
    public final int q;
    public final g r;

    public class a extends ThreadLocal<b> {
        public a(c cVar) {
        }

        public Object initialValue() {
            return new b();
        }
    }

    public static final class b {
        public final List<Object> a = new ArrayList();
        public boolean b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f2300c;

        /* renamed from: d  reason: collision with root package name */
        public Object f2301d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f2302e;
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x0043 A[SYNTHETIC, Splitter:B:13:0x0043] */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0057  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0074  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0079  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public c() {
        /*
            r5 = this;
            k.d.a.d r0 = t
            r5.<init>()
            k.d.a.c$a r1 = new k.d.a.c$a
            r1.<init>(r5)
            r5.f2291d = r1
            r1 = 0
            if (r0 == 0) goto L_0x00a6
            boolean r2 = k.d.a.r.a.b
            if (r2 == 0) goto L_0x0023
            android.os.Looper r2 = android.os.Looper.getMainLooper()     // Catch:{ RuntimeException -> 0x0018 }
            goto L_0x0019
        L_0x0018:
            r2 = r1
        L_0x0019:
            if (r2 == 0) goto L_0x0023
            k.d.a.r.a r2 = new k.d.a.r.a
            java.lang.String r3 = "EventBus"
            r2.<init>(r3)
            goto L_0x0028
        L_0x0023:
            k.d.a.g$a r2 = new k.d.a.g$a
            r2.<init>()
        L_0x0028:
            r5.r = r2
            java.util.HashMap r2 = new java.util.HashMap
            r2.<init>()
            r5.a = r2
            java.util.HashMap r2 = new java.util.HashMap
            r2.<init>()
            r5.b = r2
            java.util.concurrent.ConcurrentHashMap r2 = new java.util.concurrent.ConcurrentHashMap
            r2.<init>()
            r5.f2290c = r2
            boolean r2 = k.d.a.r.a.b
            if (r2 == 0) goto L_0x0052
            android.os.Looper r2 = android.os.Looper.getMainLooper()     // Catch:{ RuntimeException -> 0x0048 }
            goto L_0x0049
        L_0x0048:
            r2 = r1
        L_0x0049:
            if (r2 != 0) goto L_0x004c
            goto L_0x0052
        L_0x004c:
            k.d.a.h$a r3 = new k.d.a.h$a
            r3.<init>(r2)
            goto L_0x0053
        L_0x0052:
            r3 = r1
        L_0x0053:
            r5.f2292e = r3
            if (r3 == 0) goto L_0x0060
            k.d.a.f r1 = new k.d.a.f
            android.os.Looper r2 = r3.a
            r3 = 10
            r1.<init>(r5, r2, r3)
        L_0x0060:
            r5.f2293f = r1
            k.d.a.b r1 = new k.d.a.b
            r1.<init>(r5)
            r5.f2294g = r1
            k.d.a.a r1 = new k.d.a.a
            r1.<init>(r5)
            r5.f2295h = r1
            java.util.List<k.d.a.s.b> r1 = r0.f2311j
            if (r1 == 0) goto L_0x0079
            int r1 = r1.size()
            goto L_0x007a
        L_0x0079:
            r1 = 0
        L_0x007a:
            r5.q = r1
            k.d.a.p r1 = new k.d.a.p
            java.util.List<k.d.a.s.b> r2 = r0.f2311j
            boolean r3 = r0.f2309h
            boolean r4 = r0.f2308g
            r1.<init>(r2, r3, r4)
            r5.f2296i = r1
            boolean r1 = r0.a
            r5.f2299l = r1
            boolean r1 = r0.b
            r5.m = r1
            boolean r1 = r0.f2304c
            r5.n = r1
            boolean r1 = r0.f2305d
            r5.o = r1
            boolean r1 = r0.f2306e
            r5.f2298k = r1
            boolean r1 = r0.f2307f
            r5.p = r1
            java.util.concurrent.ExecutorService r0 = r0.f2310i
            r5.f2297j = r0
            return
        L_0x00a6:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: k.d.a.c.<init>():void");
    }

    public static c b() {
        c cVar = s;
        if (cVar == null) {
            synchronized (c.class) {
                cVar = s;
                if (cVar == null) {
                    cVar = new c();
                    s = cVar;
                }
            }
        }
        return cVar;
    }

    public final void a(Object obj, o oVar) {
        Object value;
        Class<?> cls = oVar.f2315c;
        q qVar = new q(obj, oVar);
        CopyOnWriteArrayList copyOnWriteArrayList = this.a.get(cls);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList();
            this.a.put(cls, copyOnWriteArrayList);
        } else if (copyOnWriteArrayList.contains(qVar)) {
            StringBuilder a2 = e.a.a.a.a.a("Subscriber ");
            a2.append(obj.getClass());
            a2.append(" already registered to event ");
            a2.append(cls);
            throw new e(a2.toString());
        }
        int size = copyOnWriteArrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 > size) {
                break;
            } else if (i2 == size || oVar.f2316d > ((q) copyOnWriteArrayList.get(i2)).b.f2316d) {
                copyOnWriteArrayList.add(i2, qVar);
            } else {
                i2++;
            }
        }
        copyOnWriteArrayList.add(i2, qVar);
        List list = this.b.get(obj);
        if (list == null) {
            list = new ArrayList();
            this.b.put(obj, list);
        }
        list.add(cls);
        if (!oVar.f2317e) {
            return;
        }
        if (this.p) {
            for (Map.Entry next : this.f2290c.entrySet()) {
                if (cls.isAssignableFrom((Class) next.getKey()) && (value = next.getValue()) != null) {
                    a(qVar, value, a());
                }
            }
            return;
        }
        Object obj2 = this.f2290c.get(cls);
        if (obj2 != null) {
            a(qVar, obj2, a());
        }
    }

    public synchronized void c(Object obj) {
        List<Class> list = this.b.get(obj);
        if (list != null) {
            for (Class cls : list) {
                List list2 = this.a.get(cls);
                if (list2 != null) {
                    int size = list2.size();
                    int i2 = 0;
                    while (i2 < size) {
                        q qVar = (q) list2.get(i2);
                        if (qVar.a == obj) {
                            qVar.f2327c = false;
                            list2.remove(i2);
                            i2--;
                            size--;
                        }
                        i2++;
                    }
                }
            }
            this.b.remove(obj);
        } else {
            this.r.a(Level.WARNING, "Subscriber to unregister was not registered before: " + obj.getClass());
        }
    }

    public String toString() {
        StringBuilder a2 = e.a.a.a.a.a("EventBus[indexCount=");
        a2.append(this.q);
        a2.append(", eventInheritance=");
        a2.append(this.p);
        a2.append("]");
        return a2.toString();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0059, code lost:
        if (r3.f2324e == r5.b()) goto L_0x007b;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b(java.lang.Object r12) {
        /*
            r11 = this;
            java.lang.Class r0 = r12.getClass()
            k.d.a.p r1 = r11.f2296i
            r2 = 0
            if (r1 == 0) goto L_0x00e8
            java.util.Map<java.lang.Class<?>, java.util.List<k.d.a.o>> r3 = k.d.a.p.f2319d
            java.lang.Object r3 = r3.get(r0)
            java.util.List r3 = (java.util.List) r3
            if (r3 == 0) goto L_0x0015
            goto L_0x00b2
        L_0x0015:
            boolean r3 = r1.f2321c
            r4 = 0
            if (r3 == 0) goto L_0x0035
            k.d.a.p$a r3 = r1.a()
            r3.f2324e = r0
            r3.f2325f = r4
            r3.f2326g = r2
        L_0x0024:
            java.lang.Class<?> r2 = r3.f2324e
            if (r2 == 0) goto L_0x002f
            r1.a(r3)
            r3.a()
            goto L_0x0024
        L_0x002f:
            java.util.List r1 = r1.b(r3)
            goto L_0x00a6
        L_0x0035:
            k.d.a.p$a r3 = r1.a()
            r3.f2324e = r0
            r3.f2325f = r4
            r3.f2326g = r2
        L_0x003f:
            java.lang.Class<?> r5 = r3.f2324e
            if (r5 == 0) goto L_0x00a2
            k.d.a.s.a r5 = r3.f2326g
            if (r5 == 0) goto L_0x005c
            k.d.a.s.a r5 = r5.c()
            if (r5 == 0) goto L_0x005c
            k.d.a.s.a r5 = r3.f2326g
            k.d.a.s.a r5 = r5.c()
            java.lang.Class<?> r6 = r3.f2324e
            java.lang.Class r7 = r5.b()
            if (r6 != r7) goto L_0x005c
            goto L_0x007b
        L_0x005c:
            java.util.List<k.d.a.s.b> r5 = r1.a
            if (r5 == 0) goto L_0x007a
            java.util.Iterator r5 = r5.iterator()
        L_0x0064:
            boolean r6 = r5.hasNext()
            if (r6 == 0) goto L_0x007a
            java.lang.Object r6 = r5.next()
            k.d.a.s.b r6 = (k.d.a.s.b) r6
            java.lang.Class<?> r7 = r3.f2324e
            k.d.a.s.a r6 = r6.a(r7)
            if (r6 == 0) goto L_0x0064
            r5 = r6
            goto L_0x007b
        L_0x007a:
            r5 = r2
        L_0x007b:
            r3.f2326g = r5
            if (r5 == 0) goto L_0x009b
            k.d.a.o[] r5 = r5.a()
            int r6 = r5.length
            r7 = 0
        L_0x0085:
            if (r7 >= r6) goto L_0x009e
            r8 = r5[r7]
            java.lang.reflect.Method r9 = r8.a
            java.lang.Class<?> r10 = r8.f2315c
            boolean r9 = r3.a(r9, r10)
            if (r9 == 0) goto L_0x0098
            java.util.List<k.d.a.o> r9 = r3.a
            r9.add(r8)
        L_0x0098:
            int r7 = r7 + 1
            goto L_0x0085
        L_0x009b:
            r1.a(r3)
        L_0x009e:
            r3.a()
            goto L_0x003f
        L_0x00a2:
            java.util.List r1 = r1.b(r3)
        L_0x00a6:
            r3 = r1
            boolean r1 = r3.isEmpty()
            if (r1 != 0) goto L_0x00cc
            java.util.Map<java.lang.Class<?>, java.util.List<k.d.a.o>> r1 = k.d.a.p.f2319d
            r1.put(r0, r3)
        L_0x00b2:
            monitor-enter(r11)
            java.util.Iterator r0 = r3.iterator()     // Catch:{ all -> 0x00c9 }
        L_0x00b7:
            boolean r1 = r0.hasNext()     // Catch:{ all -> 0x00c9 }
            if (r1 == 0) goto L_0x00c7
            java.lang.Object r1 = r0.next()     // Catch:{ all -> 0x00c9 }
            k.d.a.o r1 = (k.d.a.o) r1     // Catch:{ all -> 0x00c9 }
            r11.a((java.lang.Object) r12, (k.d.a.o) r1)     // Catch:{ all -> 0x00c9 }
            goto L_0x00b7
        L_0x00c7:
            monitor-exit(r11)     // Catch:{ all -> 0x00c9 }
            return
        L_0x00c9:
            r12 = move-exception
            monitor-exit(r11)     // Catch:{ all -> 0x00c9 }
            throw r12
        L_0x00cc:
            k.d.a.e r12 = new k.d.a.e
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Subscriber "
            r1.append(r2)
            r1.append(r0)
            java.lang.String r0 = " and its super classes have no public methods with the @Subscribe annotation"
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            r12.<init>(r0)
            throw r12
        L_0x00e8:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: k.d.a.c.b(java.lang.Object):void");
    }

    public final boolean a() {
        h hVar = this.f2292e;
        if (hVar != null) {
            if (((h.a) hVar).a == Looper.myLooper()) {
                return true;
            }
            return false;
        }
        return true;
    }

    public void a(Object obj) {
        b bVar = this.f2291d.get();
        List<Object> list = bVar.a;
        list.add(obj);
        if (!bVar.b) {
            bVar.f2300c = a();
            bVar.b = true;
            if (!bVar.f2302e) {
                while (!list.isEmpty()) {
                    try {
                        a(list.remove(0), bVar);
                    } finally {
                        bVar.b = false;
                        bVar.f2300c = false;
                    }
                }
                return;
            }
            throw new e("Internal error. Abort state was not reset");
        }
    }

    public final void a(Object obj, b bVar) {
        boolean z;
        Class<?> cls = obj.getClass();
        if (this.p) {
            List<Class<?>> a2 = a(cls);
            int size = a2.size();
            z = false;
            for (int i2 = 0; i2 < size; i2++) {
                z |= a(obj, bVar, a2.get(i2));
            }
        } else {
            z = a(obj, bVar, cls);
        }
        if (!z) {
            if (this.m) {
                g gVar = this.r;
                Level level = Level.FINE;
                gVar.a(level, "No subscribers registered for event " + cls);
            }
            if (this.o && cls != i.class && cls != n.class) {
                a((Object) new i(this, obj));
            }
        }
    }

    public final boolean a(Object obj, b bVar, Class<?> cls) {
        CopyOnWriteArrayList copyOnWriteArrayList;
        synchronized (this) {
            copyOnWriteArrayList = this.a.get(cls);
        }
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            q qVar = (q) it.next();
            bVar.f2301d = obj;
            try {
                a(qVar, obj, bVar.f2300c);
                if (bVar.f2302e) {
                    return true;
                }
            } finally {
                bVar.f2302e = false;
            }
        }
        return true;
    }

    public final void a(q qVar, Object obj, boolean z) {
        int ordinal = qVar.b.b.ordinal();
        if (ordinal == 0) {
            a(qVar, obj);
        } else if (ordinal != 1) {
            if (ordinal == 2) {
                l lVar = this.f2293f;
                if (lVar != null) {
                    lVar.a(qVar, obj);
                } else {
                    a(qVar, obj);
                }
            } else if (ordinal != 3) {
                if (ordinal == 4) {
                    this.f2295h.a(qVar, obj);
                    return;
                }
                StringBuilder a2 = e.a.a.a.a.a("Unknown thread mode: ");
                a2.append(qVar.b.b);
                throw new IllegalStateException(a2.toString());
            } else if (z) {
                this.f2294g.a(qVar, obj);
            } else {
                a(qVar, obj);
            }
        } else if (z) {
            a(qVar, obj);
        } else {
            this.f2293f.a(qVar, obj);
        }
    }

    public static List<Class<?>> a(Class<?> cls) {
        ArrayList arrayList;
        synchronized (u) {
            List<Class<?>> list = u.get(cls);
            arrayList = list;
            if (list == null) {
                ArrayList arrayList2 = new ArrayList();
                for (Class<?> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
                    arrayList2.add(cls2);
                    a((List<Class<?>>) arrayList2, (Class<?>[]) cls2.getInterfaces());
                }
                u.put(cls, arrayList2);
                arrayList = arrayList2;
            }
        }
        return arrayList;
    }

    public static void a(List<Class<?>> list, Class<?>[] clsArr) {
        for (Class<?> cls : clsArr) {
            if (!list.contains(cls)) {
                list.add(cls);
                a(list, (Class<?>[]) cls.getInterfaces());
            }
        }
    }

    public void a(j jVar) {
        Object obj = jVar.a;
        q qVar = jVar.b;
        j.a(jVar);
        if (qVar.f2327c) {
            a(qVar, obj);
        }
    }

    public void a(q qVar, Object obj) {
        try {
            qVar.b.a.invoke(qVar.a, new Object[]{obj});
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (obj instanceof n) {
                if (this.f2299l) {
                    g gVar = this.r;
                    Level level = Level.SEVERE;
                    StringBuilder a2 = e.a.a.a.a.a("SubscriberExceptionEvent subscriber ");
                    a2.append(qVar.a.getClass());
                    a2.append(" threw an exception");
                    gVar.a(level, a2.toString(), cause);
                    n nVar = (n) obj;
                    g gVar2 = this.r;
                    Level level2 = Level.SEVERE;
                    StringBuilder a3 = e.a.a.a.a.a("Initial event ");
                    a3.append(nVar.b);
                    a3.append(" caused exception in ");
                    a3.append(nVar.f2314c);
                    gVar2.a(level2, a3.toString(), nVar.a);
                }
            } else if (!this.f2298k) {
                if (this.f2299l) {
                    g gVar3 = this.r;
                    Level level3 = Level.SEVERE;
                    StringBuilder a4 = e.a.a.a.a.a("Could not dispatch event: ");
                    a4.append(obj.getClass());
                    a4.append(" to subscribing class ");
                    a4.append(qVar.a.getClass());
                    gVar3.a(level3, a4.toString(), cause);
                }
                if (this.n) {
                    a((Object) new n(this, cause, obj, qVar.a));
                }
            } else {
                throw new e("Invoking subscriber failed", cause);
            }
        } catch (IllegalAccessException e3) {
            throw new IllegalStateException("Unexpected exception", e3);
        }
    }
}
