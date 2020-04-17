package k.d.a;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import k.d.a.s.b;

public class p {

    /* renamed from: d  reason: collision with root package name */
    public static final Map<Class<?>, List<o>> f2319d = new ConcurrentHashMap();

    /* renamed from: e  reason: collision with root package name */
    public static final a[] f2320e = new a[4];
    public List<b> a;
    public final boolean b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f2321c;

    public p(List<b> list, boolean z, boolean z2) {
        this.a = list;
        this.b = z;
        this.f2321c = z2;
    }

    public final a a() {
        synchronized (f2320e) {
            for (int i2 = 0; i2 < 4; i2++) {
                a aVar = f2320e[i2];
                if (aVar != null) {
                    f2320e[i2] = null;
                    return aVar;
                }
            }
            return new a();
        }
    }

    public final List<o> b(a aVar) {
        ArrayList arrayList = new ArrayList(aVar.a);
        aVar.a.clear();
        aVar.b.clear();
        aVar.f2322c.clear();
        int i2 = 0;
        aVar.f2323d.setLength(0);
        aVar.f2324e = null;
        aVar.f2325f = false;
        aVar.f2326g = null;
        synchronized (f2320e) {
            while (true) {
                if (i2 >= 4) {
                    break;
                } else if (f2320e[i2] == null) {
                    f2320e[i2] = aVar;
                    break;
                } else {
                    i2++;
                }
            }
        }
        return arrayList;
    }

    public static class a {
        public final List<o> a = new ArrayList();
        public final Map<Class, Object> b = new HashMap();

        /* renamed from: c  reason: collision with root package name */
        public final Map<String, Class> f2322c = new HashMap();

        /* renamed from: d  reason: collision with root package name */
        public final StringBuilder f2323d = new StringBuilder(128);

        /* renamed from: e  reason: collision with root package name */
        public Class<?> f2324e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f2325f;

        /* renamed from: g  reason: collision with root package name */
        public k.d.a.s.a f2326g;

        public boolean a(Method method, Class<?> cls) {
            Object put = this.b.put(cls, method);
            if (put == null) {
                return true;
            }
            if (put instanceof Method) {
                if (b((Method) put, cls)) {
                    this.b.put(cls, this);
                } else {
                    throw new IllegalStateException();
                }
            }
            return b(method, cls);
        }

        public final boolean b(Method method, Class<?> cls) {
            this.f2323d.setLength(0);
            this.f2323d.append(method.getName());
            StringBuilder sb = this.f2323d;
            sb.append('>');
            sb.append(cls.getName());
            String sb2 = this.f2323d.toString();
            Class<?> declaringClass = method.getDeclaringClass();
            Class put = this.f2322c.put(sb2, declaringClass);
            if (put == null || put.isAssignableFrom(declaringClass)) {
                return true;
            }
            this.f2322c.put(sb2, put);
            return false;
        }

        public void a() {
            if (this.f2325f) {
                this.f2324e = null;
                return;
            }
            Class<? super Object> superclass = this.f2324e.getSuperclass();
            this.f2324e = superclass;
            String name = superclass.getName();
            if (name.startsWith("java.") || name.startsWith("javax.") || name.startsWith("android.") || name.startsWith("androidx.")) {
                this.f2324e = null;
            }
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(3:3|4|5) */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x00e2, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00e3, code lost:
        r1 = e.a.a.a.a.a("Could not inspect methods of ");
        r1.append(r15.f2324e.getName());
        r15 = r1.toString();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00f8, code lost:
        if (r14.f2321c != false) goto L_0x00fa;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00fa, code lost:
        r15 = e.a.a.a.a.b(r15, ". Please consider using EventBus annotation processor to avoid reflection.");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x0101, code lost:
        r15 = e.a.a.a.a.b(r15, ". Please make this class visible to EventBus annotation processor to avoid reflection.");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x010c, code lost:
        throw new k.d.a.e(r15, r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:4:?, code lost:
        r1 = r15.f2324e.getMethods();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:5:0x000e, code lost:
        r15.f2325f = true;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0008 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(k.d.a.p.a r15) {
        /*
            r14 = this;
            r0 = 1
            java.lang.Class<?> r1 = r15.f2324e     // Catch:{ all -> 0x0008 }
            java.lang.reflect.Method[] r1 = r1.getDeclaredMethods()     // Catch:{ all -> 0x0008 }
            goto L_0x0010
        L_0x0008:
            java.lang.Class<?> r1 = r15.f2324e     // Catch:{ LinkageError -> 0x00e2 }
            java.lang.reflect.Method[] r1 = r1.getMethods()     // Catch:{ LinkageError -> 0x00e2 }
            r15.f2325f = r0
        L_0x0010:
            int r2 = r1.length
            r3 = 0
            r4 = 0
        L_0x0013:
            if (r4 >= r2) goto L_0x00e1
            r6 = r1[r4]
            int r5 = r6.getModifiers()
            r7 = r5 & 1
            java.lang.String r8 = "."
            if (r7 == 0) goto L_0x00a6
            r5 = r5 & 5192(0x1448, float:7.276E-42)
            if (r5 != 0) goto L_0x00a6
            java.lang.Class[] r5 = r6.getParameterTypes()
            int r7 = r5.length
            if (r7 != r0) goto L_0x005b
            java.lang.Class<k.d.a.m> r7 = k.d.a.m.class
            java.lang.annotation.Annotation r7 = r6.getAnnotation(r7)
            k.d.a.m r7 = (k.d.a.m) r7
            if (r7 == 0) goto L_0x00dd
            r8 = r5[r3]
            boolean r5 = r15.a(r6, r8)
            if (r5 == 0) goto L_0x00dd
            org.greenrobot.eventbus.ThreadMode r9 = r7.threadMode()
            java.util.List<k.d.a.o> r11 = r15.a
            k.d.a.o r12 = new k.d.a.o
            int r10 = r7.priority()
            boolean r13 = r7.sticky()
            r5 = r12
            r7 = r8
            r8 = r9
            r9 = r10
            r10 = r13
            r5.<init>(r6, r7, r8, r9, r10)
            r11.add(r12)
            goto L_0x00dd
        L_0x005b:
            boolean r7 = r14.b
            if (r7 == 0) goto L_0x00dd
            java.lang.Class<k.d.a.m> r7 = k.d.a.m.class
            boolean r7 = r6.isAnnotationPresent(r7)
            if (r7 != 0) goto L_0x0068
            goto L_0x00dd
        L_0x0068:
            java.lang.StringBuilder r15 = new java.lang.StringBuilder
            r15.<init>()
            java.lang.Class r0 = r6.getDeclaringClass()
            java.lang.String r0 = r0.getName()
            r15.append(r0)
            r15.append(r8)
            java.lang.String r0 = r6.getName()
            r15.append(r0)
            java.lang.String r15 = r15.toString()
            k.d.a.e r0 = new k.d.a.e
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "@Subscribe method "
            r1.append(r2)
            r1.append(r15)
            java.lang.String r15 = "must have exactly 1 parameter but has "
            r1.append(r15)
            int r15 = r5.length
            r1.append(r15)
            java.lang.String r15 = r1.toString()
            r0.<init>(r15)
            throw r0
        L_0x00a6:
            boolean r5 = r14.b
            if (r5 == 0) goto L_0x00dd
            java.lang.Class<k.d.a.m> r5 = k.d.a.m.class
            boolean r5 = r6.isAnnotationPresent(r5)
            if (r5 != 0) goto L_0x00b3
            goto L_0x00dd
        L_0x00b3:
            java.lang.StringBuilder r15 = new java.lang.StringBuilder
            r15.<init>()
            java.lang.Class r0 = r6.getDeclaringClass()
            java.lang.String r0 = r0.getName()
            r15.append(r0)
            r15.append(r8)
            java.lang.String r0 = r6.getName()
            r15.append(r0)
            java.lang.String r15 = r15.toString()
            k.d.a.e r0 = new k.d.a.e
            java.lang.String r1 = " is a illegal @Subscribe method: must be public, non-static, and non-abstract"
            java.lang.String r15 = e.a.a.a.a.b(r15, r1)
            r0.<init>(r15)
            throw r0
        L_0x00dd:
            int r4 = r4 + 1
            goto L_0x0013
        L_0x00e1:
            return
        L_0x00e2:
            r0 = move-exception
            java.lang.String r1 = "Could not inspect methods of "
            java.lang.StringBuilder r1 = e.a.a.a.a.a(r1)
            java.lang.Class<?> r15 = r15.f2324e
            java.lang.String r15 = r15.getName()
            r1.append(r15)
            java.lang.String r15 = r1.toString()
            boolean r1 = r14.f2321c
            if (r1 == 0) goto L_0x0101
            java.lang.String r1 = ". Please consider using EventBus annotation processor to avoid reflection."
            java.lang.String r15 = e.a.a.a.a.b(r15, r1)
            goto L_0x0107
        L_0x0101:
            java.lang.String r1 = ". Please make this class visible to EventBus annotation processor to avoid reflection."
            java.lang.String r15 = e.a.a.a.a.b(r15, r1)
        L_0x0107:
            k.d.a.e r1 = new k.d.a.e
            r1.<init>(r15, r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: k.d.a.p.a(k.d.a.p$a):void");
    }
}
