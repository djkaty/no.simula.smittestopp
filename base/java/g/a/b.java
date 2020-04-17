package g.a;

import java.net.URL;
import java.security.PrivilegedAction;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class b extends AbstractSet<a> {
    public static final ConcurrentMap<String, b> B = new ConcurrentHashMap();
    public static final Object C = new Object();
    public static final ClassLoader D;
    public static final boolean E;
    public static volatile Throwable F;
    public final Class<Enum> A;
    public final Map<String, a> x;
    public final Map<Long, a> y;
    public final Set<Enum> z;

    public static class a implements PrivilegedAction<URL> {
        public Object run() {
            return b.D.getResource("jnr/constants/ConstantSet.class");
        }
    }

    /* renamed from: g.a.b$b  reason: collision with other inner class name */
    public final class C0077b implements Iterator<a> {
        public final Iterator<Enum> x;
        public a y = null;

        public C0077b(b bVar, Collection<Enum> collection) {
            a aVar = null;
            Iterator<Enum> it = collection.iterator();
            this.x = it;
            this.y = it.hasNext() ? (a) this.x.next() : aVar;
        }

        public boolean hasNext() {
            a aVar = this.y;
            return aVar != null && !aVar.name().equals("__UNKNOWN_CONSTANT__");
        }

        public Object next() {
            a aVar = this.y;
            this.y = this.x.hasNext() ? (a) this.x.next() : null;
            return aVar;
        }

        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(5:16|17|18|19|20) */
    /* JADX WARNING: Missing exception handler attribute for start block: B:19:0x0040 */
    static {
        /*
            java.util.concurrent.ConcurrentHashMap r0 = new java.util.concurrent.ConcurrentHashMap
            r0.<init>()
            B = r0
            java.lang.Object r0 = new java.lang.Object
            r0.<init>()
            C = r0
            java.lang.Class<g.a.b> r0 = g.a.b.class
            java.lang.ClassLoader r0 = r0.getClassLoader()
            if (r0 == 0) goto L_0x0019
            D = r0
            goto L_0x001f
        L_0x0019:
            java.lang.ClassLoader r0 = java.lang.ClassLoader.getSystemClassLoader()
            D = r0
        L_0x001f:
            r0 = 0
            g.a.b$a r1 = new g.a.b$a     // Catch:{ all -> 0x0041 }
            r1.<init>()     // Catch:{ all -> 0x0041 }
            java.lang.Object r1 = java.security.AccessController.doPrivileged(r1)     // Catch:{ all -> 0x0041 }
            java.net.URL r1 = (java.net.URL) r1     // Catch:{ all -> 0x0041 }
            java.io.InputStream r1 = r1.openStream()     // Catch:{ all -> 0x0041 }
            r1.read()     // Catch:{ all -> 0x0036 }
        L_0x0032:
            r1.close()     // Catch:{ Exception -> 0x003a }
            goto L_0x003a
        L_0x0036:
            r2 = move-exception
            F = r2     // Catch:{ all -> 0x003c }
            goto L_0x0032
        L_0x003a:
            r0 = 1
            goto L_0x0048
        L_0x003c:
            r2 = move-exception
            r1.close()     // Catch:{ Exception -> 0x0040 }
        L_0x0040:
            throw r2     // Catch:{ all -> 0x0041 }
        L_0x0041:
            r1 = move-exception
            java.lang.Throwable r2 = F
            if (r2 != 0) goto L_0x0048
            F = r1
        L_0x0048:
            E = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: g.a.b.<clinit>():void");
    }

    public b(Class<Enum> cls) {
        this.A = cls;
        this.z = EnumSet.allOf(cls);
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        for (Enum next : this.z) {
            if (next instanceof a) {
                a aVar = (a) next;
                hashMap.put(next.name(), aVar);
                hashMap2.put(Long.valueOf(aVar.longValue()), aVar);
            }
        }
        this.x = Collections.unmodifiableMap(hashMap);
        this.y = Collections.unmodifiableMap(hashMap2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x006b A[SYNTHETIC, Splitter:B:13:0x006b] */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0078 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final java.lang.Class<java.lang.Enum> a(java.lang.String r8) {
        /*
            g.a.c r0 = g.a.c.a
            boolean r1 = g.a.c.b
            r2 = 2
            r3 = 0
            r4 = 1
            if (r1 == 0) goto L_0x0027
            r1 = 3
            java.lang.String[] r1 = new java.lang.String[r1]
            java.lang.String r5 = r0.a()
            r1[r3] = r5
            java.lang.String r0 = r0.b()
            r1[r4] = r0
            java.lang.Object[] r0 = new java.lang.Object[r4]
            java.lang.String r5 = g.a.c.C0078c.a
            r0[r3] = r5
            java.lang.String r3 = "%s.platform.fake"
            java.lang.String r0 = java.lang.String.format(r3, r0)
            r1[r2] = r0
            goto L_0x0035
        L_0x0027:
            java.lang.String[] r1 = new java.lang.String[r2]
            java.lang.String r2 = r0.a()
            r1[r3] = r2
            java.lang.String r0 = r0.b()
            r1[r4] = r0
        L_0x0035:
            int r0 = r1.length
            r2 = 0
        L_0x0037:
            if (r2 >= r0) goto L_0x007b
            r3 = r1[r2]
            java.lang.String r5 = "."
            java.lang.String r3 = e.a.a.a.a.a((java.lang.String) r3, (java.lang.String) r5, (java.lang.String) r8)
            boolean r5 = E
            if (r5 == 0) goto L_0x0068
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r6 = 46
            r7 = 47
            java.lang.String r6 = r3.replace(r6, r7)
            r5.append(r6)
            java.lang.String r6 = ".class"
            r5.append(r6)
            java.lang.String r5 = r5.toString()
            java.lang.ClassLoader r6 = D
            java.net.URL r5 = r6.getResource(r5)
            if (r5 != 0) goto L_0x0068
            r5 = 0
            goto L_0x0069
        L_0x0068:
            r5 = 1
        L_0x0069:
            if (r5 == 0) goto L_0x0078
            java.lang.ClassLoader r5 = D     // Catch:{ ClassNotFoundException -> 0x0078 }
            java.lang.Class r3 = java.lang.Class.forName(r3, r4, r5)     // Catch:{ ClassNotFoundException -> 0x0078 }
            java.lang.Class<java.lang.Enum> r5 = java.lang.Enum.class
            java.lang.Class r8 = r3.asSubclass(r5)     // Catch:{ ClassNotFoundException -> 0x0078 }
            return r8
        L_0x0078:
            int r2 = r2 + 1
            goto L_0x0037
        L_0x007b:
            r8 = 0
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: g.a.b.a(java.lang.String):java.lang.Class");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0047, code lost:
        return r1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static g.a.b b(java.lang.String r4) {
        /*
            java.lang.Object r0 = C
            monitor-enter(r0)
            java.util.concurrent.ConcurrentMap<java.lang.String, g.a.b> r1 = B     // Catch:{ all -> 0x0048 }
            java.lang.Object r1 = r1.get(r4)     // Catch:{ all -> 0x0048 }
            g.a.b r1 = (g.a.b) r1     // Catch:{ all -> 0x0048 }
            if (r1 != 0) goto L_0x0046
            java.lang.Class r1 = a(r4)     // Catch:{ all -> 0x0048 }
            if (r1 != 0) goto L_0x0016
            r4 = 0
            monitor-exit(r0)     // Catch:{ all -> 0x0048 }
            return r4
        L_0x0016:
            java.lang.Class<g.a.a> r2 = g.a.a.class
            boolean r2 = r2.isAssignableFrom(r1)     // Catch:{ all -> 0x0048 }
            if (r2 == 0) goto L_0x002a
            java.util.concurrent.ConcurrentMap<java.lang.String, g.a.b> r2 = B     // Catch:{ all -> 0x0048 }
            g.a.b r3 = new g.a.b     // Catch:{ all -> 0x0048 }
            r3.<init>(r1)     // Catch:{ all -> 0x0048 }
            r2.put(r4, r3)     // Catch:{ all -> 0x0048 }
            r1 = r3
            goto L_0x0046
        L_0x002a:
            java.lang.ClassCastException r1 = new java.lang.ClassCastException     // Catch:{ all -> 0x0048 }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x0048 }
            r2.<init>()     // Catch:{ all -> 0x0048 }
            java.lang.String r3 = "class for "
            r2.append(r3)     // Catch:{ all -> 0x0048 }
            r2.append(r4)     // Catch:{ all -> 0x0048 }
            java.lang.String r4 = " does not implement Constant interface"
            r2.append(r4)     // Catch:{ all -> 0x0048 }
            java.lang.String r4 = r2.toString()     // Catch:{ all -> 0x0048 }
            r1.<init>(r4)     // Catch:{ all -> 0x0048 }
            throw r1     // Catch:{ all -> 0x0048 }
        L_0x0046:
            monitor-exit(r0)     // Catch:{ all -> 0x0048 }
            return r1
        L_0x0048:
            r4 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0048 }
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: g.a.b.b(java.lang.String):g.a.b");
    }

    public boolean contains(Object obj) {
        return obj != null && obj.getClass().equals(this.A);
    }

    public Iterator<a> iterator() {
        return new C0077b(this, this.z);
    }

    public int size() {
        return this.z.size();
    }
}
