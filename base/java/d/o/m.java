package d.o;

import d.c.a.b.b;
import d.o.g;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

public class m extends g {
    public d.c.a.b.a<k, a> a = new d.c.a.b.a<>();
    public g.b b;

    /* renamed from: c  reason: collision with root package name */
    public final WeakReference<l> f708c;

    /* renamed from: d  reason: collision with root package name */
    public int f709d = 0;

    /* renamed from: e  reason: collision with root package name */
    public boolean f710e = false;

    /* renamed from: f  reason: collision with root package name */
    public boolean f711f = false;

    /* renamed from: g  reason: collision with root package name */
    public ArrayList<g.b> f712g = new ArrayList<>();

    public static class a {
        public g.b a;
        public j b;

        public a(k kVar, g.b bVar) {
            this.b = o.a((Object) kVar);
            this.a = bVar;
        }

        public void a(l lVar, g.a aVar) {
            g.b b2 = m.b(aVar);
            this.a = m.a(this.a, b2);
            this.b.a(lVar, aVar);
            this.a = b2;
        }
    }

    public m(l lVar) {
        this.f708c = new WeakReference<>(lVar);
        this.b = g.b.INITIALIZED;
    }

    public void a(g.a aVar) {
        a(b(aVar));
    }

    public final g.b b(k kVar) {
        d.c.a.b.a<k, a> aVar = this.a;
        g.b bVar = null;
        b.c<K, V> cVar = aVar.B.containsKey(kVar) ? aVar.B.get(kVar).A : null;
        g.b bVar2 = cVar != null ? ((a) cVar.getValue()).a : null;
        if (!this.f712g.isEmpty()) {
            ArrayList<g.b> arrayList = this.f712g;
            bVar = arrayList.get(arrayList.size() - 1);
        }
        return a(a(this.b, bVar2), bVar);
    }

    public final void a(g.b bVar) {
        if (this.b != bVar) {
            this.b = bVar;
            if (this.f710e || this.f709d != 0) {
                this.f711f = true;
                return;
            }
            this.f710e = true;
            b();
            this.f710e = false;
        }
    }

    public static g.b b(g.a aVar) {
        int ordinal = aVar.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal == 2) {
                    return g.b.RESUMED;
                }
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        if (ordinal == 5) {
                            return g.b.DESTROYED;
                        }
                        throw new IllegalArgumentException("Unexpected event value " + aVar);
                    }
                }
            }
            return g.b.STARTED;
        }
        return g.b.CREATED;
    }

    public void a(k kVar) {
        l lVar;
        g.b bVar = this.b;
        g.b bVar2 = g.b.DESTROYED;
        if (bVar != bVar2) {
            bVar2 = g.b.INITIALIZED;
        }
        a aVar = new a(kVar, bVar2);
        if (this.a.b(kVar, aVar) == null && (lVar = (l) this.f708c.get()) != null) {
            boolean z = this.f709d != 0 || this.f710e;
            g.b b2 = b(kVar);
            this.f709d++;
            while (aVar.a.compareTo(b2) < 0 && this.a.B.containsKey(kVar)) {
                this.f712g.add(aVar.a);
                aVar.a(lVar, b(aVar.a));
                a();
                b2 = b(kVar);
            }
            if (!z) {
                b();
            }
            this.f709d--;
        }
    }

    public static g.a b(g.b bVar) {
        int ordinal = bVar.ordinal();
        if (ordinal == 0 || ordinal == 1) {
            return g.a.ON_CREATE;
        }
        if (ordinal == 2) {
            return g.a.ON_START;
        }
        if (ordinal == 3) {
            return g.a.ON_RESUME;
        }
        if (ordinal != 4) {
            throw new IllegalArgumentException("Unexpected state value " + bVar);
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:4:0x0013, code lost:
        r1 = ((d.o.m.a) r1.x.getValue()).a;
        r2 = ((d.o.m.a) r8.a.y.getValue()).a;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void b() {
        /*
            r8 = this;
            java.lang.ref.WeakReference<d.o.l> r0 = r8.f708c
            java.lang.Object r0 = r0.get()
            d.o.l r0 = (d.o.l) r0
            if (r0 == 0) goto L_0x0143
        L_0x000a:
            d.c.a.b.a<d.o.k, d.o.m$a> r1 = r8.a
            int r2 = r1.A
            r3 = 0
            r4 = 1
            if (r2 != 0) goto L_0x0013
            goto L_0x002f
        L_0x0013:
            d.c.a.b.b$c<K, V> r1 = r1.x
            java.lang.Object r1 = r1.getValue()
            d.o.m$a r1 = (d.o.m.a) r1
            d.o.g$b r1 = r1.a
            d.c.a.b.a<d.o.k, d.o.m$a> r2 = r8.a
            d.c.a.b.b$c<K, V> r2 = r2.y
            java.lang.Object r2 = r2.getValue()
            d.o.m$a r2 = (d.o.m.a) r2
            d.o.g$b r2 = r2.a
            if (r1 != r2) goto L_0x0031
            d.o.g$b r1 = r8.b
            if (r1 != r2) goto L_0x0031
        L_0x002f:
            r1 = 1
            goto L_0x0032
        L_0x0031:
            r1 = 0
        L_0x0032:
            if (r1 != 0) goto L_0x0140
            r8.f711f = r3
            d.o.g$b r1 = r8.b
            d.c.a.b.a<d.o.k, d.o.m$a> r2 = r8.a
            d.c.a.b.b$c<K, V> r2 = r2.x
            java.lang.Object r2 = r2.getValue()
            d.o.m$a r2 = (d.o.m.a) r2
            d.o.g$b r2 = r2.a
            int r1 = r1.compareTo(r2)
            if (r1 >= 0) goto L_0x00dc
            d.c.a.b.a<d.o.k, d.o.m$a> r1 = r8.a
            d.c.a.b.b$b r2 = new d.c.a.b.b$b
            d.c.a.b.b$c<K, V> r5 = r1.y
            d.c.a.b.b$c<K, V> r6 = r1.x
            r2.<init>(r5, r6)
            java.util.WeakHashMap<d.c.a.b.b$f<K, V>, java.lang.Boolean> r1 = r1.z
            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r3)
            r1.put(r2, r3)
        L_0x005e:
            boolean r1 = r2.hasNext()
            if (r1 == 0) goto L_0x00dc
            boolean r1 = r8.f711f
            if (r1 != 0) goto L_0x00dc
            java.lang.Object r1 = r2.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r3 = r1.getValue()
            d.o.m$a r3 = (d.o.m.a) r3
        L_0x0074:
            d.o.g$b r5 = r3.a
            d.o.g$b r6 = r8.b
            int r5 = r5.compareTo(r6)
            if (r5 <= 0) goto L_0x005e
            boolean r5 = r8.f711f
            if (r5 != 0) goto L_0x005e
            d.c.a.b.a<d.o.k, d.o.m$a> r5 = r8.a
            java.lang.Object r6 = r1.getKey()
            boolean r5 = r5.contains(r6)
            if (r5 == 0) goto L_0x005e
            d.o.g$b r5 = r3.a
            int r6 = r5.ordinal()
            if (r6 == 0) goto L_0x00d6
            if (r6 == r4) goto L_0x00d0
            r7 = 2
            if (r6 == r7) goto L_0x00be
            r7 = 3
            if (r6 == r7) goto L_0x00bb
            r7 = 4
            if (r6 != r7) goto L_0x00a4
            d.o.g$a r5 = d.o.g.a.ON_PAUSE
            goto L_0x00c0
        L_0x00a4:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Unexpected state value "
            r1.append(r2)
            r1.append(r5)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x00bb:
            d.o.g$a r5 = d.o.g.a.ON_STOP
            goto L_0x00c0
        L_0x00be:
            d.o.g$a r5 = d.o.g.a.ON_DESTROY
        L_0x00c0:
            d.o.g$b r6 = b((d.o.g.a) r5)
            java.util.ArrayList<d.o.g$b> r7 = r8.f712g
            r7.add(r6)
            r3.a(r0, r5)
            r8.a()
            goto L_0x0074
        L_0x00d0:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r0.<init>()
            throw r0
        L_0x00d6:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r0.<init>()
            throw r0
        L_0x00dc:
            d.c.a.b.a<d.o.k, d.o.m$a> r1 = r8.a
            d.c.a.b.b$c<K, V> r1 = r1.y
            boolean r2 = r8.f711f
            if (r2 != 0) goto L_0x000a
            if (r1 == 0) goto L_0x000a
            d.o.g$b r2 = r8.b
            java.lang.Object r1 = r1.getValue()
            d.o.m$a r1 = (d.o.m.a) r1
            d.o.g$b r1 = r1.a
            int r1 = r2.compareTo(r1)
            if (r1 <= 0) goto L_0x000a
            d.c.a.b.a<d.o.k, d.o.m$a> r1 = r8.a
            d.c.a.b.b$d r1 = r1.a()
        L_0x00fc:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L_0x000a
            boolean r2 = r8.f711f
            if (r2 != 0) goto L_0x000a
            java.lang.Object r2 = r1.next()
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2
            java.lang.Object r3 = r2.getValue()
            d.o.m$a r3 = (d.o.m.a) r3
        L_0x0112:
            d.o.g$b r4 = r3.a
            d.o.g$b r5 = r8.b
            int r4 = r4.compareTo(r5)
            if (r4 >= 0) goto L_0x00fc
            boolean r4 = r8.f711f
            if (r4 != 0) goto L_0x00fc
            d.c.a.b.a<d.o.k, d.o.m$a> r4 = r8.a
            java.lang.Object r5 = r2.getKey()
            boolean r4 = r4.contains(r5)
            if (r4 == 0) goto L_0x00fc
            d.o.g$b r4 = r3.a
            java.util.ArrayList<d.o.g$b> r5 = r8.f712g
            r5.add(r4)
            d.o.g$b r4 = r3.a
            d.o.g$a r4 = b((d.o.g.b) r4)
            r3.a(r0, r4)
            r8.a()
            goto L_0x0112
        L_0x0140:
            r8.f711f = r3
            return
        L_0x0143:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d.o.m.b():void");
    }

    public final void a() {
        ArrayList<g.b> arrayList = this.f712g;
        arrayList.remove(arrayList.size() - 1);
    }

    public static g.b a(g.b bVar, g.b bVar2) {
        return (bVar2 == null || bVar2.compareTo(bVar) >= 0) ? bVar : bVar2;
    }
}
