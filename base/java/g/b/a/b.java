package g.b.a;

import g.c.e;
import g.c.f;
import g.c.h;
import g.c.i;
import g.c.j;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.spi.AbstractSelectableChannel;
import java.nio.channels.spi.AbstractSelector;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;

public class b extends AbstractSelector {
    public final int[] A = {-1, -1};
    public final Object B = new Object();
    public final Map<Integer, C0080b> C = new ConcurrentHashMap();
    public final Set<SelectionKey> D = new LinkedHashSet();
    public final e E;
    public int x = -1;
    public final f y = f.a.a;
    public final c z = c.f1333c;

    /* renamed from: g.b.a.b$b  reason: collision with other inner class name */
    public static class C0080b {
        public final int a;
        public final Set<a> b = new HashSet();

        /* renamed from: c  reason: collision with root package name */
        public boolean f1331c = false;

        /* renamed from: d  reason: collision with root package name */
        public boolean f1332d = false;

        public C0080b(int i2) {
            this.a = i2;
        }
    }

    public static final class c {

        /* renamed from: c  reason: collision with root package name */
        public static final c f1333c = new c();
        public final d a;
        public final i b;

        public c() {
            d dVar = new d(f.a.a, (a) null);
            this.a = dVar;
            this.b = dVar.a.a(j.uintptr_t);
        }

        public final void a(e eVar, int i2, int i3, int i4, int i5) {
            d dVar = this.a;
            int i6 = dVar.f1364f;
            dVar.f1334g.a();
            throw null;
        }
    }

    public static class d extends h {

        /* renamed from: g  reason: collision with root package name */
        public final h.i f1334g = new h.i(this);

        /* renamed from: h  reason: collision with root package name */
        public final h.e f1335h = new h.e(this);

        /* renamed from: i  reason: collision with root package name */
        public final h.g f1336i = new h.g(this);

        public /* synthetic */ d(f fVar, a aVar) {
            super(fVar);
            new h.C0084h(this);
            new h.f(this);
            new h.d(this);
        }
    }

    public b(h hVar) {
        super(hVar);
        new e(0, 0);
        throw null;
    }

    /* JADX INFO: finally extract failed */
    public final int a(long j2) {
        int a2;
        int a3 = a();
        if (j2 < 0) {
            try {
                begin();
                do {
                    a2 = d.a.a(this.x, (e) null, a3, (e) null, 100, (e) null);
                    if (a2 >= 0 || !g.a.d.b.EINTR.equals(g.a.d.b.valueOf((long) d.b.a()))) {
                        end();
                    }
                    a2 = d.a.a(this.x, (e) null, a3, (e) null, 100, (e) null);
                    break;
                } while (!g.a.d.b.EINTR.equals(g.a.d.b.valueOf((long) d.b.a())));
                end();
                synchronized (this.B) {
                    if (a2 <= 0) {
                        try {
                        } catch (Throwable th) {
                            throw th;
                        }
                    } else {
                        d dVar = this.z.a;
                        int i2 = dVar.f1364f;
                        dVar.f1334g.a();
                        throw null;
                    }
                }
                return 0;
            } catch (Throwable th2) {
                end();
                throw th2;
            }
        } else {
            new e(TimeUnit.MILLISECONDS.toSeconds(j2), TimeUnit.MILLISECONDS.toNanos(j2 % 1000));
            throw null;
        }
    }

    public void implCloseSelector() {
        int i2 = this.x;
        if (i2 != -1) {
            e.c.a.a.b.l.c.a(i2);
        }
        int[] iArr = this.A;
        if (iArr[0] != -1) {
            e.c.a.a.b.l.c.a(iArr[0]);
        }
        int[] iArr2 = this.A;
        if (iArr2[1] != -1) {
            e.c.a.a.b.l.c.a(iArr2[1]);
        }
        int[] iArr3 = this.A;
        this.x = -1;
        iArr3[1] = -1;
        iArr3[0] = -1;
        for (Map.Entry<Integer, C0080b> value : this.C.entrySet()) {
            for (a deregister : ((C0080b) value.getValue()).b) {
                deregister(deregister);
            }
        }
    }

    public Set<SelectionKey> keys() {
        HashSet hashSet = new HashSet();
        for (C0080b bVar : this.C.values()) {
            hashSet.addAll(bVar.b);
        }
        return Collections.unmodifiableSet(hashSet);
    }

    public SelectionKey register(AbstractSelectableChannel abstractSelectableChannel, int i2, Object obj) {
        a aVar = new a(this, (g) abstractSelectableChannel, i2);
        synchronized (this.B) {
            C0080b bVar = new C0080b(aVar.a());
            this.C.put(Integer.valueOf(aVar.a()), bVar);
            bVar.b.add(aVar);
            a(bVar);
        }
        aVar.attach(obj);
        return aVar;
    }

    public int select(long j2) {
        a(j2);
        return 0;
    }

    public int selectNow() {
        a(0);
        return 0;
    }

    public Set<SelectionKey> selectedKeys() {
        return this.D;
    }

    public Selector wakeup() {
        d.a.a(this.A[1], new byte[1], 1);
        return this;
    }

    public int select() {
        a(-1);
        return 0;
    }

    public final int a() {
        Set<SelectionKey> cancelledKeys = cancelledKeys();
        synchronized (cancelledKeys) {
            synchronized (this.B) {
                Iterator<SelectionKey> it = cancelledKeys.iterator();
                while (true) {
                    while (it.hasNext()) {
                        a aVar = (a) it.next();
                        C0080b bVar = this.C.get(Integer.valueOf(aVar.a()));
                        deregister(aVar);
                        synchronized (this.D) {
                            this.D.remove(aVar);
                        }
                        bVar.b.remove(aVar);
                        if (bVar.b.isEmpty()) {
                            this.z.a((e) null, 0, aVar.a(), -1, 2);
                            throw null;
                        } else if (0 >= 100) {
                            d.a.a(this.x, (e) null, 0, (e) null, 0, this.E);
                        }
                    }
                }
                while (true) {
                }
            }
            cancelledKeys.clear();
        }
        return 0;
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x006b  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0085 A[LOOP:1: B:13:0x0040->B:37:0x0085, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x0089 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(g.b.a.b.C0080b r23) {
        /*
            r22 = this;
            r1 = r22
            r0 = r23
            java.lang.Object r2 = r1.B
            monitor-enter(r2)
            java.util.Set<g.b.a.a> r3 = r0.b     // Catch:{ all -> 0x00ad }
            java.util.Iterator r3 = r3.iterator()     // Catch:{ all -> 0x00ad }
            r4 = 0
            r5 = 0
            r6 = 0
        L_0x0010:
            boolean r7 = r3.hasNext()     // Catch:{ all -> 0x00ad }
            if (r7 == 0) goto L_0x002d
            java.lang.Object r7 = r3.next()     // Catch:{ all -> 0x00ad }
            g.b.a.a r7 = (g.b.a.a) r7     // Catch:{ all -> 0x00ad }
            int r8 = r7.f1329c     // Catch:{ all -> 0x00ad }
            r8 = r8 & 17
            if (r8 == 0) goto L_0x0024
            int r5 = r5 + 1
        L_0x0024:
            int r7 = r7.f1329c     // Catch:{ all -> 0x00ad }
            r7 = r7 & 12
            if (r7 == 0) goto L_0x0010
            int r6 = r6 + 1
            goto L_0x0010
        L_0x002d:
            r3 = 2
            java.lang.Integer[] r7 = new java.lang.Integer[r3]     // Catch:{ all -> 0x00ad }
            r8 = -1
            java.lang.Integer r9 = java.lang.Integer.valueOf(r8)     // Catch:{ all -> 0x00ad }
            r7[r4] = r9     // Catch:{ all -> 0x00ad }
            r9 = -2
            java.lang.Integer r10 = java.lang.Integer.valueOf(r9)     // Catch:{ all -> 0x00ad }
            r11 = 1
            r7[r11] = r10     // Catch:{ all -> 0x00ad }
            r10 = 0
        L_0x0040:
            if (r10 >= r3) goto L_0x009e
            r12 = r7[r10]     // Catch:{ all -> 0x00ad }
            int r13 = r12.intValue()     // Catch:{ all -> 0x00ad }
            r14 = 8
            r15 = 37
            if (r13 != r8) goto L_0x0064
            if (r5 <= 0) goto L_0x0059
            boolean r13 = r0.f1332d     // Catch:{ all -> 0x00ad }
            if (r13 != 0) goto L_0x0059
            r0.f1332d = r11     // Catch:{ all -> 0x00ad }
            r13 = 37
            goto L_0x0065
        L_0x0059:
            if (r5 != 0) goto L_0x0064
            boolean r13 = r0.f1332d     // Catch:{ all -> 0x00ad }
            if (r13 == 0) goto L_0x0064
            r0.f1332d = r4     // Catch:{ all -> 0x00ad }
            r13 = 8
            goto L_0x0065
        L_0x0064:
            r13 = 0
        L_0x0065:
            int r3 = r12.intValue()     // Catch:{ all -> 0x00ad }
            if (r3 != r9) goto L_0x0081
            if (r6 <= 0) goto L_0x0076
            boolean r3 = r0.f1331c     // Catch:{ all -> 0x00ad }
            if (r3 != 0) goto L_0x0076
            r0.f1331c = r11     // Catch:{ all -> 0x00ad }
            r21 = 37
            goto L_0x0083
        L_0x0076:
            if (r6 != 0) goto L_0x0081
            boolean r3 = r0.f1331c     // Catch:{ all -> 0x00ad }
            if (r3 == 0) goto L_0x0081
            r0.f1331c = r4     // Catch:{ all -> 0x00ad }
            r21 = 8
            goto L_0x0083
        L_0x0081:
            r21 = r13
        L_0x0083:
            if (r21 != 0) goto L_0x0089
            int r10 = r10 + 1
            r3 = 2
            goto L_0x0040
        L_0x0089:
            g.b.a.b$c r3 = r1.z     // Catch:{ all -> 0x00ad }
            r17 = 0
            int r0 = r0.a     // Catch:{ all -> 0x00ad }
            int r20 = r12.intValue()     // Catch:{ all -> 0x00ad }
            r18 = 0
            r16 = r3
            r19 = r0
            r16.a(r17, r18, r19, r20, r21)     // Catch:{ all -> 0x00ad }
            r0 = 0
            throw r0
        L_0x009e:
            g.b.a.c r3 = g.b.a.d.a     // Catch:{ all -> 0x00ad }
            int r4 = r1.x     // Catch:{ all -> 0x00ad }
            r5 = 0
            r7 = 0
            r8 = 0
            g.b.a.e r9 = r1.E     // Catch:{ all -> 0x00ad }
            r6 = 0
            r3.a(r4, r5, r6, r7, r8, r9)     // Catch:{ all -> 0x00ad }
            monitor-exit(r2)     // Catch:{ all -> 0x00ad }
            return
        L_0x00ad:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x00ad }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: g.b.a.b.a(g.b.a.b$b):void");
    }

    public void a(a aVar) {
        synchronized (this.B) {
            a(this.C.get(Integer.valueOf(aVar.a())));
        }
    }
}
