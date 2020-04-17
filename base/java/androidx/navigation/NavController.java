package androidx.navigation;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import d.o.e0;
import d.o.g;
import d.o.k;
import d.o.l;
import d.s.e;
import d.s.g;
import d.s.i;
import d.s.j;
import d.s.m;
import d.s.p;
import d.s.q;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public class NavController {
    public final Context a;
    public Activity b;

    /* renamed from: c  reason: collision with root package name */
    public m f80c;

    /* renamed from: d  reason: collision with root package name */
    public j f81d;

    /* renamed from: e  reason: collision with root package name */
    public Bundle f82e;

    /* renamed from: f  reason: collision with root package name */
    public Parcelable[] f83f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f84g;

    /* renamed from: h  reason: collision with root package name */
    public final Deque<e> f85h = new ArrayDeque();

    /* renamed from: i  reason: collision with root package name */
    public l f86i;

    /* renamed from: j  reason: collision with root package name */
    public g f87j;

    /* renamed from: k  reason: collision with root package name */
    public final q f88k = new q();

    /* renamed from: l  reason: collision with root package name */
    public final CopyOnWriteArrayList<b> f89l = new CopyOnWriteArrayList<>();
    public final k m = new d.o.j() {
        public void a(l lVar, g.a aVar) {
            g.b bVar;
            NavController navController = NavController.this;
            if (navController.f81d != null) {
                for (e next : navController.f85h) {
                    if (next != null) {
                        int ordinal = aVar.ordinal();
                        if (ordinal != 0) {
                            if (ordinal != 1) {
                                if (ordinal == 2) {
                                    bVar = g.b.RESUMED;
                                } else if (ordinal != 3) {
                                    if (ordinal != 4) {
                                        if (ordinal == 5) {
                                            bVar = g.b.DESTROYED;
                                        } else {
                                            throw new IllegalArgumentException("Unexpected event value " + aVar);
                                        }
                                    }
                                }
                                next.C = bVar;
                                next.a();
                            }
                            bVar = g.b.STARTED;
                            next.C = bVar;
                            next.a();
                        }
                        bVar = g.b.CREATED;
                        next.C = bVar;
                        next.a();
                    } else {
                        throw null;
                    }
                }
            }
        }
    };
    public final d.a.b n = new a(false);
    public boolean o = true;

    public class a extends d.a.b {
        public a(boolean z) {
            super(z);
        }

        public void a() {
            NavController.this.b();
        }
    }

    public interface b {
        void a(NavController navController, i iVar, Bundle bundle);
    }

    public NavController(Context context) {
        this.a = context;
        while (true) {
            if (!(context instanceof ContextWrapper)) {
                break;
            } else if (context instanceof Activity) {
                this.b = (Activity) context;
                break;
            } else {
                context = ((ContextWrapper) context).getBaseContext();
            }
        }
        q qVar = this.f88k;
        qVar.a((p<? extends i>) new d.s.k(qVar));
        this.f88k.a((p<? extends i>) new d.s.a(this.a));
    }

    /* JADX WARNING: Code restructure failed: missing block: B:1:0x0002, code lost:
        r0 = r11.b;
     */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0025 A[LOOP:0: B:9:0x0025->B:14:0x004c, LOOP_START] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(d.s.i r9, android.os.Bundle r10, d.s.n r11, d.s.p.a r12) {
        /*
            r8 = this;
            if (r11 == 0) goto L_0x000e
            int r0 = r11.b
            r1 = -1
            if (r0 == r1) goto L_0x000e
            boolean r1 = r11.f739c
            boolean r0 = r8.a((int) r0, (boolean) r1)
            goto L_0x000f
        L_0x000e:
            r0 = 0
        L_0x000f:
            d.s.q r1 = r8.f88k
            java.lang.String r2 = r9.x
            d.s.p r1 = r1.a((java.lang.String) r2)
            android.os.Bundle r10 = r9.a((android.os.Bundle) r10)
            d.s.i r9 = r1.a(r9, r10, r11, r12)
            if (r9 == 0) goto L_0x00ac
            boolean r11 = r9 instanceof d.s.b
            if (r11 != 0) goto L_0x004f
        L_0x0025:
            java.util.Deque<d.s.e> r11 = r8.f85h
            boolean r11 = r11.isEmpty()
            if (r11 != 0) goto L_0x004f
            java.util.Deque<d.s.e> r11 = r8.f85h
            java.lang.Object r11 = r11.peekLast()
            d.s.e r11 = (d.s.e) r11
            d.s.i r11 = r11.x
            boolean r11 = r11 instanceof d.s.b
            if (r11 == 0) goto L_0x004f
            java.util.Deque<d.s.e> r11 = r8.f85h
            java.lang.Object r11 = r11.peekLast()
            d.s.e r11 = (d.s.e) r11
            d.s.i r11 = r11.x
            int r11 = r11.z
            r12 = 1
            boolean r11 = r8.a((int) r11, (boolean) r12)
            if (r11 == 0) goto L_0x004f
            goto L_0x0025
        L_0x004f:
            java.util.Deque<d.s.e> r11 = r8.f85h
            boolean r11 = r11.isEmpty()
            if (r11 == 0) goto L_0x006b
            d.s.e r11 = new d.s.e
            android.content.Context r3 = r8.a
            d.s.j r4 = r8.f81d
            d.o.l r6 = r8.f86i
            d.s.g r7 = r8.f87j
            r2 = r11
            r5 = r10
            r2.<init>(r3, r4, r5, r6, r7)
            java.util.Deque<d.s.e> r12 = r8.f85h
            r12.add(r11)
        L_0x006b:
            java.util.ArrayDeque r11 = new java.util.ArrayDeque
            r11.<init>()
            r12 = r9
        L_0x0071:
            if (r12 == 0) goto L_0x0091
            int r1 = r12.z
            d.s.i r1 = r8.a((int) r1)
            if (r1 != 0) goto L_0x0091
            d.s.j r12 = r12.y
            if (r12 == 0) goto L_0x0071
            d.s.e r1 = new d.s.e
            android.content.Context r3 = r8.a
            d.o.l r6 = r8.f86i
            d.s.g r7 = r8.f87j
            r2 = r1
            r4 = r12
            r5 = r10
            r2.<init>(r3, r4, r5, r6, r7)
            r11.addFirst(r1)
            goto L_0x0071
        L_0x0091:
            java.util.Deque<d.s.e> r12 = r8.f85h
            r12.addAll(r11)
            d.s.e r11 = new d.s.e
            android.content.Context r3 = r8.a
            android.os.Bundle r5 = r9.a((android.os.Bundle) r10)
            d.o.l r6 = r8.f86i
            d.s.g r7 = r8.f87j
            r2 = r11
            r4 = r9
            r2.<init>(r3, r4, r5, r6, r7)
            java.util.Deque<d.s.e> r10 = r8.f85h
            r10.add(r11)
        L_0x00ac:
            r8.c()
            if (r0 != 0) goto L_0x00b3
            if (r9 == 0) goto L_0x00b6
        L_0x00b3:
            r8.a()
        L_0x00b6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavController.a(d.s.i, android.os.Bundle, d.s.n, d.s.p$a):void");
    }

    public boolean b() {
        i iVar;
        if (this.f85h.isEmpty()) {
            return false;
        }
        if (this.f85h.isEmpty()) {
            iVar = null;
        } else {
            iVar = this.f85h.getLast().x;
        }
        if (!a(iVar.z, true) || !a()) {
            return false;
        }
        return true;
    }

    public final void c() {
        d.a.b bVar = this.n;
        boolean z = false;
        if (this.o) {
            int i2 = 0;
            for (e eVar : this.f85h) {
                if (!(eVar.x instanceof j)) {
                    i2++;
                }
            }
            if (i2 > 1) {
                z = true;
            }
        }
        bVar.a = z;
    }

    public void a(b bVar) {
        if (!this.f85h.isEmpty()) {
            e peekLast = this.f85h.peekLast();
            bVar.a(this, peekLast.x, peekLast.y);
        }
        this.f89l.add(bVar);
    }

    public boolean a(int i2, boolean z) {
        boolean z2;
        e0 remove;
        boolean z3 = false;
        if (this.f85h.isEmpty()) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<e> descendingIterator = this.f85h.descendingIterator();
        while (true) {
            if (!descendingIterator.hasNext()) {
                z2 = false;
                break;
            }
            i iVar = descendingIterator.next().x;
            p a2 = this.f88k.a(iVar.x);
            if (z || iVar.z != i2) {
                arrayList.add(a2);
            }
            if (iVar.z == i2) {
                z2 = true;
                break;
            }
        }
        if (!z2) {
            String a3 = i.a(this.a, i2);
            Log.i("NavController", "Ignoring popBackStack to destination " + a3 + " as it was not found on the current back stack");
            return false;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext() && ((p) it.next()).c()) {
            e removeLast = this.f85h.removeLast();
            removeLast.D = g.b.DESTROYED;
            removeLast.a();
            d.s.g gVar = this.f87j;
            if (!(gVar == null || (remove = gVar.f733c.remove(removeLast.B)) == null)) {
                remove.a();
            }
            z3 = true;
        }
        c();
        return z3;
    }

    /* JADX WARNING: Removed duplicated region for block: B:0:0x0000 A[LOOP:0: B:0:0x0000->B:5:0x0027, LOOP_START, MTH_ENTER_BLOCK] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean a() {
        /*
            r10 = this;
        L_0x0000:
            java.util.Deque<d.s.e> r0 = r10.f85h
            boolean r0 = r0.isEmpty()
            r1 = 1
            if (r0 != 0) goto L_0x002a
            java.util.Deque<d.s.e> r0 = r10.f85h
            java.lang.Object r0 = r0.peekLast()
            d.s.e r0 = (d.s.e) r0
            d.s.i r0 = r0.x
            boolean r0 = r0 instanceof d.s.j
            if (r0 == 0) goto L_0x002a
            java.util.Deque<d.s.e> r0 = r10.f85h
            java.lang.Object r0 = r0.peekLast()
            d.s.e r0 = (d.s.e) r0
            d.s.i r0 = r0.x
            int r0 = r0.z
            boolean r0 = r10.a((int) r0, (boolean) r1)
            if (r0 == 0) goto L_0x002a
            goto L_0x0000
        L_0x002a:
            java.util.Deque<d.s.e> r0 = r10.f85h
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x00f4
            java.util.Deque<d.s.e> r0 = r10.f85h
            java.lang.Object r0 = r0.peekLast()
            d.s.e r0 = (d.s.e) r0
            d.s.i r0 = r0.x
            r2 = 0
            boolean r3 = r0 instanceof d.s.b
            if (r3 == 0) goto L_0x005e
            java.util.Deque<d.s.e> r3 = r10.f85h
            java.util.Iterator r3 = r3.descendingIterator()
        L_0x0047:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L_0x005e
            java.lang.Object r4 = r3.next()
            d.s.e r4 = (d.s.e) r4
            d.s.i r4 = r4.x
            boolean r5 = r4 instanceof d.s.j
            if (r5 != 0) goto L_0x0047
            boolean r5 = r4 instanceof d.s.b
            if (r5 != 0) goto L_0x0047
            r2 = r4
        L_0x005e:
            java.util.HashMap r3 = new java.util.HashMap
            r3.<init>()
            java.util.Deque<d.s.e> r4 = r10.f85h
            java.util.Iterator r4 = r4.descendingIterator()
        L_0x0069:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L_0x00b1
            java.lang.Object r5 = r4.next()
            d.s.e r5 = (d.s.e) r5
            d.o.g$b r6 = r5.D
            d.s.i r7 = r5.x
            if (r0 == 0) goto L_0x008b
            int r8 = r7.z
            int r9 = r0.z
            if (r8 != r9) goto L_0x008b
            d.o.g$b r7 = d.o.g.b.RESUMED
            if (r6 == r7) goto L_0x0088
            r3.put(r5, r7)
        L_0x0088:
            d.s.j r0 = r0.y
            goto L_0x0069
        L_0x008b:
            if (r2 == 0) goto L_0x00a9
            int r7 = r7.z
            int r8 = r2.z
            if (r7 != r8) goto L_0x00a9
            d.o.g$b r7 = d.o.g.b.RESUMED
            if (r6 != r7) goto L_0x009f
            d.o.g$b r6 = d.o.g.b.STARTED
            r5.D = r6
            r5.a()
            goto L_0x00a6
        L_0x009f:
            d.o.g$b r7 = d.o.g.b.STARTED
            if (r6 == r7) goto L_0x00a6
            r3.put(r5, r7)
        L_0x00a6:
            d.s.j r2 = r2.y
            goto L_0x0069
        L_0x00a9:
            d.o.g$b r6 = d.o.g.b.CREATED
            r5.D = r6
            r5.a()
            goto L_0x0069
        L_0x00b1:
            java.util.Deque<d.s.e> r0 = r10.f85h
            java.util.Iterator r0 = r0.iterator()
        L_0x00b7:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L_0x00d1
            java.lang.Object r2 = r0.next()
            d.s.e r2 = (d.s.e) r2
            java.lang.Object r4 = r3.get(r2)
            d.o.g$b r4 = (d.o.g.b) r4
            if (r4 == 0) goto L_0x00b7
            r2.D = r4
            r2.a()
            goto L_0x00b7
        L_0x00d1:
            java.util.Deque<d.s.e> r0 = r10.f85h
            java.lang.Object r0 = r0.peekLast()
            d.s.e r0 = (d.s.e) r0
            java.util.concurrent.CopyOnWriteArrayList<androidx.navigation.NavController$b> r2 = r10.f89l
            java.util.Iterator r2 = r2.iterator()
        L_0x00df:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L_0x00f3
            java.lang.Object r3 = r2.next()
            androidx.navigation.NavController$b r3 = (androidx.navigation.NavController.b) r3
            d.s.i r4 = r0.x
            android.os.Bundle r5 = r0.y
            r3.a(r10, r4, r5)
            goto L_0x00df
        L_0x00f3:
            return r1
        L_0x00f4:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavController.a():boolean");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:140:0x02aa, code lost:
        if (r1 == false) goto L_0x02ad;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(int r19, android.os.Bundle r20) {
        /*
            r18 = this;
            r0 = r18
            d.s.m r1 = r0.f80c
            if (r1 != 0) goto L_0x0011
            d.s.m r1 = new d.s.m
            android.content.Context r2 = r0.a
            d.s.q r3 = r0.f88k
            r1.<init>(r2, r3)
            r0.f80c = r1
        L_0x0011:
            d.s.m r1 = r0.f80c
            r2 = r19
            d.s.j r1 = r1.a(r2)
            d.s.j r2 = r0.f81d
            r3 = 1
            if (r2 == 0) goto L_0x0023
            int r2 = r2.z
            r0.a((int) r2, (boolean) r3)
        L_0x0023:
            r0.f81d = r1
            android.os.Bundle r1 = r0.f82e
            if (r1 == 0) goto L_0x0053
            java.lang.String r2 = "android-support-nav:controller:navigatorState:names"
            java.util.ArrayList r1 = r1.getStringArrayList(r2)
            if (r1 == 0) goto L_0x0053
            java.util.Iterator r1 = r1.iterator()
        L_0x0035:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L_0x0053
            java.lang.Object r2 = r1.next()
            java.lang.String r2 = (java.lang.String) r2
            d.s.q r4 = r0.f88k
            d.s.p r4 = r4.a((java.lang.String) r2)
            android.os.Bundle r5 = r0.f82e
            android.os.Bundle r2 = r5.getBundle(r2)
            if (r2 == 0) goto L_0x0035
            r4.a(r2)
            goto L_0x0035
        L_0x0053:
            android.os.Parcelable[] r1 = r0.f83f
            r2 = 0
            r4 = 0
            if (r1 == 0) goto L_0x00b4
            int r5 = r1.length
            r6 = 0
        L_0x005b:
            if (r6 >= r5) goto L_0x00af
            r7 = r1[r6]
            d.s.f r7 = (d.s.f) r7
            int r8 = r7.y
            d.s.i r11 = r0.a((int) r8)
            if (r11 == 0) goto L_0x0090
            android.os.Bundle r12 = r7.z
            if (r12 == 0) goto L_0x0076
            android.content.Context r8 = r0.a
            java.lang.ClassLoader r8 = r8.getClassLoader()
            r12.setClassLoader(r8)
        L_0x0076:
            d.s.e r8 = new d.s.e
            android.content.Context r10 = r0.a
            d.o.l r13 = r0.f86i
            d.s.g r14 = r0.f87j
            java.util.UUID r15 = r7.x
            android.os.Bundle r7 = r7.A
            r9 = r8
            r16 = r7
            r9.<init>(r10, r11, r12, r13, r14, r15, r16)
            java.util.Deque<d.s.e> r7 = r0.f85h
            r7.add(r8)
            int r6 = r6 + 1
            goto L_0x005b
        L_0x0090:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "unknown destination during restore: "
            java.lang.StringBuilder r2 = e.a.a.a.a.a(r2)
            android.content.Context r3 = r0.a
            android.content.res.Resources r3 = r3.getResources()
            int r4 = r7.y
            java.lang.String r3 = r3.getResourceName(r4)
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r1
        L_0x00af:
            r18.c()
            r0.f83f = r2
        L_0x00b4:
            d.s.j r1 = r0.f81d
            if (r1 == 0) goto L_0x02b7
            java.util.Deque<d.s.e> r1 = r0.f85h
            boolean r1 = r1.isEmpty()
            if (r1 == 0) goto L_0x02b7
            boolean r1 = r0.f84g
            if (r1 != 0) goto L_0x02ad
            android.app.Activity r1 = r0.b
            if (r1 == 0) goto L_0x02ad
            android.content.Intent r1 = r1.getIntent()
            if (r1 != 0) goto L_0x00d0
            goto L_0x02a9
        L_0x00d0:
            android.os.Bundle r5 = r1.getExtras()
            if (r5 == 0) goto L_0x00dd
            java.lang.String r6 = "android-support-nav:controller:deepLinkIds"
            int[] r6 = r5.getIntArray(r6)
            goto L_0x00de
        L_0x00dd:
            r6 = r2
        L_0x00de:
            android.os.Bundle r7 = new android.os.Bundle
            r7.<init>()
            if (r5 == 0) goto L_0x00ec
            java.lang.String r8 = "android-support-nav:controller:deepLinkExtras"
            android.os.Bundle r5 = r5.getBundle(r8)
            goto L_0x00ed
        L_0x00ec:
            r5 = r2
        L_0x00ed:
            if (r5 == 0) goto L_0x00f2
            r7.putAll(r5)
        L_0x00f2:
            if (r6 == 0) goto L_0x00f7
            int r5 = r6.length
            if (r5 != 0) goto L_0x0149
        L_0x00f7:
            android.net.Uri r5 = r1.getData()
            if (r5 == 0) goto L_0x0149
            d.s.j r5 = r0.f81d
            android.net.Uri r8 = r1.getData()
            d.s.i$a r5 = r5.a((android.net.Uri) r8)
            if (r5 == 0) goto L_0x0149
            d.s.i r6 = r5.x
            if (r6 == 0) goto L_0x0148
            java.util.ArrayDeque r8 = new java.util.ArrayDeque
            r8.<init>()
        L_0x0112:
            d.s.j r9 = r6.y
            if (r9 == 0) goto L_0x011c
            int r10 = r9.G
            int r11 = r6.z
            if (r10 == r11) goto L_0x011f
        L_0x011c:
            r8.addFirst(r6)
        L_0x011f:
            if (r9 != 0) goto L_0x0146
            int r6 = r8.size()
            int[] r6 = new int[r6]
            java.util.Iterator r8 = r8.iterator()
            r9 = 0
        L_0x012c:
            boolean r10 = r8.hasNext()
            if (r10 == 0) goto L_0x0140
            java.lang.Object r10 = r8.next()
            d.s.i r10 = (d.s.i) r10
            int r11 = r9 + 1
            int r10 = r10.z
            r6[r9] = r10
            r9 = r11
            goto L_0x012c
        L_0x0140:
            android.os.Bundle r5 = r5.y
            r7.putAll(r5)
            goto L_0x0149
        L_0x0146:
            r6 = r9
            goto L_0x0112
        L_0x0148:
            throw r2
        L_0x0149:
            if (r6 == 0) goto L_0x02a9
            int r5 = r6.length
            if (r5 != 0) goto L_0x0150
            goto L_0x02a9
        L_0x0150:
            d.s.j r5 = r0.f81d
            r8 = 0
        L_0x0153:
            int r9 = r6.length
            if (r8 >= r9) goto L_0x0189
            r9 = r6[r8]
            if (r8 != 0) goto L_0x015d
            d.s.j r10 = r0.f81d
            goto L_0x0161
        L_0x015d:
            d.s.i r10 = r5.b(r9)
        L_0x0161:
            if (r10 != 0) goto L_0x016a
            android.content.Context r5 = r0.a
            java.lang.String r5 = d.s.i.a((android.content.Context) r5, (int) r9)
            goto L_0x018a
        L_0x016a:
            int r9 = r6.length
            int r9 = r9 + -1
            if (r8 == r9) goto L_0x0186
            d.s.j r10 = (d.s.j) r10
        L_0x0171:
            int r5 = r10.G
            d.s.i r5 = r10.b(r5)
            boolean r5 = r5 instanceof d.s.j
            if (r5 == 0) goto L_0x0185
            int r5 = r10.G
            d.s.i r5 = r10.b(r5)
            r10 = r5
            d.s.j r10 = (d.s.j) r10
            goto L_0x0171
        L_0x0185:
            r5 = r10
        L_0x0186:
            int r8 = r8 + 1
            goto L_0x0153
        L_0x0189:
            r5 = r2
        L_0x018a:
            if (r5 == 0) goto L_0x01ac
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r6 = "Could not find destination "
            r4.append(r6)
            r4.append(r5)
            java.lang.String r5 = " in the navigation graph, ignoring the deep link from "
            r4.append(r5)
            r4.append(r1)
            java.lang.String r1 = r4.toString()
            java.lang.String r4 = "NavController"
            android.util.Log.i(r4, r1)
            goto L_0x02a9
        L_0x01ac:
            java.lang.String r5 = "android-support-nav:controller:deepLinkIntent"
            r7.putParcelable(r5, r1)
            int r5 = r1.getFlags()
            r8 = 268435456(0x10000000, float:2.5243549E-29)
            r8 = r8 & r5
            if (r8 == 0) goto L_0x01f5
            r9 = 32768(0x8000, float:4.5918E-41)
            r5 = r5 & r9
            if (r5 != 0) goto L_0x01f5
            r1.addFlags(r9)
            android.content.Context r5 = r0.a
            d.i.a.l r6 = new d.i.a.l
            r6.<init>(r5)
            android.content.ComponentName r5 = r1.getComponent()
            if (r5 != 0) goto L_0x01da
            android.content.Context r5 = r6.y
            android.content.pm.PackageManager r5 = r5.getPackageManager()
            android.content.ComponentName r5 = r1.resolveActivity(r5)
        L_0x01da:
            if (r5 == 0) goto L_0x01df
            r6.a(r5)
        L_0x01df:
            java.util.ArrayList<android.content.Intent> r5 = r6.x
            r5.add(r1)
            r6.a()
            android.app.Activity r1 = r0.b
            if (r1 == 0) goto L_0x02a7
            r1.finish()
            android.app.Activity r1 = r0.b
            r1.overridePendingTransition(r4, r4)
            goto L_0x02a7
        L_0x01f5:
            java.lang.String r1 = "unknown destination during deep link: "
            if (r8 == 0) goto L_0x0242
            java.util.Deque<d.s.e> r4 = r0.f85h
            boolean r4 = r4.isEmpty()
            if (r4 != 0) goto L_0x0208
            d.s.j r4 = r0.f81d
            int r4 = r4.z
            r0.a((int) r4, (boolean) r3)
        L_0x0208:
            r4 = 0
        L_0x0209:
            int r5 = r6.length
            if (r4 >= r5) goto L_0x02a7
            int r5 = r4 + 1
            r4 = r6[r4]
            d.s.i r8 = r0.a((int) r4)
            if (r8 == 0) goto L_0x022b
            r12 = 0
            r10 = 0
            r16 = -1
            r13 = 0
            r14 = 0
            d.s.n r4 = new d.s.n
            r9 = r4
            r11 = r16
            r15 = r16
            r9.<init>(r10, r11, r12, r13, r14, r15, r16)
            r0.a(r8, r7, r4, r2)
            r4 = r5
            goto L_0x0209
        L_0x022b:
            java.lang.IllegalStateException r2 = new java.lang.IllegalStateException
            java.lang.StringBuilder r1 = e.a.a.a.a.a(r1)
            android.content.Context r3 = r0.a
            java.lang.String r3 = d.s.i.a((android.content.Context) r3, (int) r4)
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            r2.<init>(r1)
            throw r2
        L_0x0242:
            d.s.j r4 = r0.f81d
            r5 = 0
        L_0x0245:
            int r8 = r6.length
            if (r5 >= r8) goto L_0x02a5
            r8 = r6[r5]
            if (r5 != 0) goto L_0x024f
            d.s.j r9 = r0.f81d
            goto L_0x0253
        L_0x024f:
            d.s.i r9 = r4.b(r8)
        L_0x0253:
            if (r9 == 0) goto L_0x028e
            int r8 = r6.length
            int r8 = r8 - r3
            if (r5 == r8) goto L_0x0271
            d.s.j r9 = (d.s.j) r9
        L_0x025b:
            int r4 = r9.G
            d.s.i r4 = r9.b(r4)
            boolean r4 = r4 instanceof d.s.j
            if (r4 == 0) goto L_0x026f
            int r4 = r9.G
            d.s.i r4 = r9.b(r4)
            r9 = r4
            d.s.j r9 = (d.s.j) r9
            goto L_0x025b
        L_0x026f:
            r4 = r9
            goto L_0x028b
        L_0x0271:
            android.os.Bundle r8 = r9.a((android.os.Bundle) r7)
            r11 = 0
            r17 = -1
            d.s.j r10 = r0.f81d
            int r12 = r10.z
            r13 = 1
            r14 = 0
            r15 = 0
            d.s.n r10 = new d.s.n
            r19 = r10
            r16 = r17
            r10.<init>(r11, r12, r13, r14, r15, r16, r17)
            r0.a(r9, r8, r10, r2)
        L_0x028b:
            int r5 = r5 + 1
            goto L_0x0245
        L_0x028e:
            java.lang.IllegalStateException r2 = new java.lang.IllegalStateException
            java.lang.StringBuilder r1 = e.a.a.a.a.a(r1)
            android.content.Context r3 = r0.a
            java.lang.String r3 = d.s.i.a((android.content.Context) r3, (int) r8)
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            r2.<init>(r1)
            throw r2
        L_0x02a5:
            r0.f84g = r3
        L_0x02a7:
            r1 = 1
            goto L_0x02aa
        L_0x02a9:
            r1 = 0
        L_0x02aa:
            if (r1 == 0) goto L_0x02ad
            goto L_0x02ae
        L_0x02ad:
            r3 = 0
        L_0x02ae:
            if (r3 != 0) goto L_0x02b7
            d.s.j r1 = r0.f81d
            r3 = r20
            r0.a(r1, r3, r2, r2)
        L_0x02b7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavController.a(int, android.os.Bundle):void");
    }

    public i a(int i2) {
        i iVar;
        j jVar;
        j jVar2 = this.f81d;
        if (jVar2 == null) {
            return null;
        }
        if (jVar2.z == i2) {
            return jVar2;
        }
        if (this.f85h.isEmpty()) {
            iVar = this.f81d;
        } else {
            iVar = this.f85h.getLast().x;
        }
        if (iVar instanceof j) {
            jVar = (j) iVar;
        } else {
            jVar = iVar.y;
        }
        return jVar.a(i2, true);
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0035  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0056  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0090  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(int r6, android.os.Bundle r7, d.s.n r8) {
        /*
            r5 = this;
            java.util.Deque<d.s.e> r0 = r5.f85h
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x000b
            d.s.j r0 = r5.f81d
            goto L_0x0015
        L_0x000b:
            java.util.Deque<d.s.e> r0 = r5.f85h
            java.lang.Object r0 = r0.getLast()
            d.s.e r0 = (d.s.e) r0
            d.s.i r0 = r0.x
        L_0x0015:
            if (r0 == 0) goto L_0x0098
            d.s.c r0 = r0.a((int) r6)
            r1 = 0
            if (r0 == 0) goto L_0x0031
            if (r8 != 0) goto L_0x0022
            d.s.n r8 = r0.b
        L_0x0022:
            int r2 = r0.a
            android.os.Bundle r3 = r0.f729c
            if (r3 == 0) goto L_0x0032
            android.os.Bundle r4 = new android.os.Bundle
            r4.<init>()
            r4.putAll(r3)
            goto L_0x0033
        L_0x0031:
            r2 = r6
        L_0x0032:
            r4 = r1
        L_0x0033:
            if (r7 == 0) goto L_0x003f
            if (r4 != 0) goto L_0x003c
            android.os.Bundle r4 = new android.os.Bundle
            r4.<init>()
        L_0x003c:
            r4.putAll(r7)
        L_0x003f:
            if (r2 != 0) goto L_0x0054
            if (r8 == 0) goto L_0x0054
            int r7 = r8.b
            r3 = -1
            if (r7 == r3) goto L_0x0054
            boolean r6 = r8.f739c
            boolean r6 = r5.a((int) r7, (boolean) r6)
            if (r6 == 0) goto L_0x008f
            r5.a()
            goto L_0x008f
        L_0x0054:
            if (r2 == 0) goto L_0x0090
            d.s.i r7 = r5.a((int) r2)
            if (r7 != 0) goto L_0x008c
            android.content.Context r7 = r5.a
            java.lang.String r7 = d.s.i.a((android.content.Context) r7, (int) r2)
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "navigation destination "
            java.lang.StringBuilder r7 = e.a.a.a.a.a((java.lang.String) r1, (java.lang.String) r7)
            if (r0 == 0) goto L_0x0080
            java.lang.String r0 = " referenced from action "
            java.lang.StringBuilder r0 = e.a.a.a.a.a(r0)
            android.content.Context r1 = r5.a
            java.lang.String r6 = d.s.i.a((android.content.Context) r1, (int) r6)
            r0.append(r6)
            java.lang.String r6 = r0.toString()
            goto L_0x0082
        L_0x0080:
            java.lang.String r6 = ""
        L_0x0082:
            java.lang.String r0 = " is unknown to this NavController"
            java.lang.String r6 = e.a.a.a.a.a((java.lang.StringBuilder) r7, (java.lang.String) r6, (java.lang.String) r0)
            r8.<init>(r6)
            throw r8
        L_0x008c:
            r5.a(r7, r4, r8, r1)
        L_0x008f:
            return
        L_0x0090:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            java.lang.String r7 = "Destination id == 0 can only be used in conjunction with a valid navOptions.popUpTo"
            r6.<init>(r7)
            throw r6
        L_0x0098:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "no current navigation node"
            r6.<init>(r7)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavController.a(int, android.os.Bundle, d.s.n):void");
    }
}
