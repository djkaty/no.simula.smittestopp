package j.a.a.a.a.a;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import j.a.a.a.a.a.k;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public abstract class a {
    public static a a;

    public static synchronized a a() {
        synchronized (a.class) {
            if (a != null) {
                a aVar = a;
                return aVar;
            } else if (Build.VERSION.SDK_INT >= 26) {
                d dVar = new d();
                a = dVar;
                return dVar;
            } else if (Build.VERSION.SDK_INT >= 23) {
                c cVar = new c();
                a = cVar;
                return cVar;
            } else {
                b bVar = new b();
                a = bVar;
                return bVar;
            }
        }
    }

    public abstract void a(g gVar);

    public abstract void a(List<h> list, k kVar, g gVar, Handler handler);

    public final void b(g gVar) {
        if (gVar != null) {
            c(gVar);
            return;
        }
        throw new IllegalArgumentException("callback is null");
    }

    public abstract void c(g gVar);

    /* renamed from: j.a.a.a.a.a.a$a  reason: collision with other inner class name */
    public static class C0087a {
        public final Object a = new Object();
        public final boolean b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f1446c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f1447d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f1448e;

        /* renamed from: f  reason: collision with root package name */
        public final List<h> f1449f;

        /* renamed from: g  reason: collision with root package name */
        public final k f1450g;

        /* renamed from: h  reason: collision with root package name */
        public final g f1451h;

        /* renamed from: i  reason: collision with root package name */
        public final Handler f1452i;

        /* renamed from: j  reason: collision with root package name */
        public final List<j> f1453j = new ArrayList();

        /* renamed from: k  reason: collision with root package name */
        public final Set<String> f1454k = new HashSet();

        /* renamed from: l  reason: collision with root package name */
        public final Map<String, j> f1455l = new HashMap();
        public final Runnable m = new C0088a();
        public final Runnable n = new b();

        /* renamed from: j.a.a.a.a.a.a$a$a  reason: collision with other inner class name */
        public class C0088a implements Runnable {
            public C0088a() {
            }

            public void run() {
                C0087a aVar = C0087a.this;
                if (!aVar.f1448e) {
                    aVar.b();
                    C0087a aVar2 = C0087a.this;
                    aVar2.f1452i.postDelayed(this, aVar2.f1450g.B);
                }
            }
        }

        /* renamed from: j.a.a.a.a.a.a$a$b */
        public class b implements Runnable {

            /* renamed from: j.a.a.a.a.a.a$a$b$a  reason: collision with other inner class name */
            public class C0089a implements Runnable {
                public final /* synthetic */ j x;

                public C0089a(j jVar) {
                    this.x = jVar;
                }

                public void run() {
                    C0087a.this.f1451h.a(4, this.x);
                }
            }

            public b() {
            }

            public void run() {
                long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
                synchronized (C0087a.this.a) {
                    Iterator<j> it = C0087a.this.f1455l.values().iterator();
                    while (it.hasNext()) {
                        j next = it.next();
                        if (next.A < elapsedRealtimeNanos - C0087a.this.f1450g.H) {
                            it.remove();
                            C0087a.this.f1452i.post(new C0089a(next));
                        }
                    }
                    if (!C0087a.this.f1455l.isEmpty()) {
                        C0087a.this.f1452i.postDelayed(this, C0087a.this.f1450g.I);
                    }
                }
            }
        }

        public C0087a(boolean z, boolean z2, List<h> list, k kVar, g gVar, Handler handler) {
            this.f1449f = Collections.unmodifiableList(list);
            this.f1450g = kVar;
            this.f1451h = gVar;
            this.f1452i = handler;
            boolean z3 = false;
            this.f1448e = false;
            this.f1447d = kVar.A != 1 && (!(Build.VERSION.SDK_INT >= 23) || !kVar.G);
            this.b = !list.isEmpty() && (!z2 || !kVar.E);
            long j2 = kVar.B;
            if (j2 > 0 && (!z || !kVar.F)) {
                z3 = true;
            }
            this.f1446c = z3;
            if (z3) {
                handler.postDelayed(this.m, j2);
            }
        }

        public void a() {
            this.f1448e = true;
            this.f1452i.removeCallbacksAndMessages((Object) null);
            synchronized (this.a) {
                this.f1455l.clear();
                this.f1454k.clear();
                this.f1453j.clear();
            }
        }

        public void b() {
            if (this.f1446c && !this.f1448e) {
                synchronized (this.a) {
                    this.f1451h.a((List<j>) new ArrayList(this.f1453j));
                    this.f1453j.clear();
                    this.f1454k.clear();
                }
            }
        }

        public void a(int i2, j jVar) {
            boolean isEmpty;
            j put;
            if (this.f1448e) {
                return;
            }
            if (this.f1449f.isEmpty() || a(jVar)) {
                String address = jVar.x.getAddress();
                if (this.f1447d) {
                    synchronized (this.f1455l) {
                        isEmpty = this.f1455l.isEmpty();
                        put = this.f1455l.put(address, jVar);
                    }
                    if (put == null && (this.f1450g.A & 2) > 0) {
                        this.f1451h.a(2, jVar);
                    }
                    if (isEmpty && (this.f1450g.A & 4) > 0) {
                        this.f1452i.removeCallbacks(this.n);
                        this.f1452i.postDelayed(this.n, this.f1450g.I);
                    }
                } else if (this.f1446c) {
                    synchronized (this.a) {
                        if (!this.f1454k.contains(address)) {
                            this.f1453j.add(jVar);
                            this.f1454k.add(address);
                        }
                    }
                } else {
                    this.f1451h.a(i2, jVar);
                }
            }
        }

        public void a(List<j> list) {
            if (!this.f1448e) {
                if (this.b) {
                    ArrayList arrayList = new ArrayList();
                    for (j next : list) {
                        if (a(next)) {
                            arrayList.add(next);
                        }
                    }
                    list = arrayList;
                }
                this.f1451h.a(list);
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:82:0x00fb A[SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final boolean a(j.a.a.a.a.a.j r21) {
            /*
                r20 = this;
                r0 = r20
                r1 = r21
                java.util.List<j.a.a.a.a.a.h> r2 = r0.f1449f
                java.util.Iterator r2 = r2.iterator()
            L_0x000a:
                boolean r3 = r2.hasNext()
                r4 = 0
                if (r3 == 0) goto L_0x00ff
                java.lang.Object r3 = r2.next()
                j.a.a.a.a.a.h r3 = (j.a.a.a.a.a.h) r3
                r5 = 0
                if (r3 == 0) goto L_0x00fe
                r6 = 1
                if (r1 != 0) goto L_0x001f
                goto L_0x00fb
            L_0x001f:
                android.bluetooth.BluetoothDevice r7 = r1.x
                java.lang.String r8 = r3.y
                if (r8 == 0) goto L_0x0031
                java.lang.String r7 = r7.getAddress()
                boolean r7 = r8.equals(r7)
                if (r7 != 0) goto L_0x0031
                goto L_0x00fb
            L_0x0031:
                j.a.a.a.a.a.i r7 = r1.y
                if (r7 != 0) goto L_0x0047
                java.lang.String r8 = r3.x
                if (r8 != 0) goto L_0x00fb
                android.os.ParcelUuid r8 = r3.z
                if (r8 != 0) goto L_0x00fb
                byte[] r8 = r3.F
                if (r8 != 0) goto L_0x00fb
                byte[] r8 = r3.C
                if (r8 == 0) goto L_0x0047
                goto L_0x00fb
            L_0x0047:
                java.lang.String r8 = r3.x
                if (r8 == 0) goto L_0x0055
                java.lang.String r9 = r7.f1471f
                boolean r8 = r8.equals(r9)
                if (r8 != 0) goto L_0x0055
                goto L_0x00fb
            L_0x0055:
                android.os.ParcelUuid r8 = r3.z
                if (r8 == 0) goto L_0x00c1
                android.os.ParcelUuid r9 = r3.A
                java.util.List<android.os.ParcelUuid> r10 = r7.b
                if (r10 != 0) goto L_0x0060
                goto L_0x00bd
            L_0x0060:
                java.util.Iterator r10 = r10.iterator()
            L_0x0064:
                boolean r11 = r10.hasNext()
                if (r11 == 0) goto L_0x00bd
                java.lang.Object r11 = r10.next()
                android.os.ParcelUuid r11 = (android.os.ParcelUuid) r11
                if (r9 != 0) goto L_0x0074
                r12 = r5
                goto L_0x0078
            L_0x0074:
                java.util.UUID r12 = r9.getUuid()
            L_0x0078:
                java.util.UUID r13 = r8.getUuid()
                java.util.UUID r11 = r11.getUuid()
                if (r12 != 0) goto L_0x0087
                boolean r11 = r13.equals(r11)
                goto L_0x00b9
            L_0x0087:
                long r14 = r13.getLeastSignificantBits()
                long r16 = r12.getLeastSignificantBits()
                long r14 = r14 & r16
                long r16 = r11.getLeastSignificantBits()
                long r18 = r12.getLeastSignificantBits()
                long r16 = r16 & r18
                int r18 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1))
                if (r18 == 0) goto L_0x00a0
                goto L_0x00b8
            L_0x00a0:
                long r13 = r13.getMostSignificantBits()
                long r15 = r12.getMostSignificantBits()
                long r13 = r13 & r15
                long r15 = r11.getMostSignificantBits()
                long r11 = r12.getMostSignificantBits()
                long r11 = r11 & r15
                int r15 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1))
                if (r15 != 0) goto L_0x00b8
                r11 = 1
                goto L_0x00b9
            L_0x00b8:
                r11 = 0
            L_0x00b9:
                if (r11 == 0) goto L_0x0064
                r8 = 1
                goto L_0x00be
            L_0x00bd:
                r8 = 0
            L_0x00be:
                if (r8 != 0) goto L_0x00c1
                goto L_0x00fb
            L_0x00c1:
                android.os.ParcelUuid r8 = r3.B
                if (r8 == 0) goto L_0x00de
                if (r7 == 0) goto L_0x00de
                byte[] r9 = r3.C
                byte[] r10 = r3.D
                java.util.Map<android.os.ParcelUuid, byte[]> r11 = r7.f1469d
                if (r11 != 0) goto L_0x00d1
                r8 = r5
                goto L_0x00d7
            L_0x00d1:
                java.lang.Object r8 = r11.get(r8)
                byte[] r8 = (byte[]) r8
            L_0x00d7:
                boolean r8 = r3.a(r9, r10, r8)
                if (r8 != 0) goto L_0x00de
                goto L_0x00fb
            L_0x00de:
                int r8 = r3.E
                if (r8 < 0) goto L_0x00fa
                if (r7 == 0) goto L_0x00fa
                byte[] r9 = r3.F
                byte[] r10 = r3.G
                android.util.SparseArray<byte[]> r7 = r7.f1468c
                if (r7 != 0) goto L_0x00ed
                goto L_0x00f3
            L_0x00ed:
                java.lang.Object r5 = r7.get(r8)
                byte[] r5 = (byte[]) r5
            L_0x00f3:
                boolean r3 = r3.a(r9, r10, r5)
                if (r3 != 0) goto L_0x00fa
                goto L_0x00fb
            L_0x00fa:
                r4 = 1
            L_0x00fb:
                if (r4 == 0) goto L_0x000a
                return r6
            L_0x00fe:
                throw r5
            L_0x00ff:
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: j.a.a.a.a.a.a.C0087a.a(j.a.a.a.a.a.j):boolean");
        }
    }

    public final void a(List<h> list, k kVar, g gVar) {
        List<h> list2;
        a aVar;
        k kVar2;
        long j2;
        long j3;
        g gVar2 = gVar;
        if (gVar2 != null) {
            Handler handler = new Handler(Looper.getMainLooper());
            if (list != null) {
                list2 = list;
            } else {
                list2 = Collections.emptyList();
            }
            if (kVar != null) {
                aVar = this;
                kVar2 = kVar;
            } else {
                if (0 == 0 && 0 == 0) {
                    j3 = 500;
                    j2 = 4500;
                } else {
                    j3 = 0;
                    j2 = 0;
                }
                aVar = this;
                kVar2 = new k(0, 1, 0, 1, 3, true, 255, true, true, true, 10000, 10000, j3, j2, (k.a) null);
            }
            aVar.a(list2, kVar2, gVar2, handler);
            return;
        }
        throw new IllegalArgumentException("callback is null");
    }
}
