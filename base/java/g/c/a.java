package g.c;

import g.c.l.c;
import g.c.l.d;
import g.c.l.e;
import g.c.l.f;
import g.c.l.g;
import g.c.l.h;
import java.io.File;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;

public abstract class a<T> {
    public final List<String> a = new ArrayList();
    public final List<String> b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public final List<d> f1343c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    public final List<c> f1344d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    public final Map<b, Object> f1345e = new EnumMap(b.class);

    /* renamed from: f  reason: collision with root package name */
    public final h.a f1346f = new h.a();

    /* renamed from: g  reason: collision with root package name */
    public final c.a f1347g = new c.a();

    /* renamed from: h  reason: collision with root package name */
    public final Class<T> f1348h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f1349i = false;

    /* renamed from: g.c.a$a  reason: collision with other inner class name */
    public class C0081a implements InvocationHandler {
        public final /* synthetic */ Throwable a;

        public C0081a(a aVar, Throwable th) {
            this.a = th;
        }

        public Object invoke(Object obj, Method method, Object[] objArr) {
            throw this.a;
        }
    }

    public static final class b {
        public static final List<String> a;

        static {
            ArrayList arrayList = new ArrayList();
            try {
                arrayList.addAll(a.a("jnr.ffi.library.path"));
                arrayList.addAll(a.a("jaffl.library.path"));
                arrayList.addAll(a.a("jna.library.path"));
                arrayList.addAll(a.a("java.library.path"));
            } catch (Exception unused) {
            }
            int ordinal = d.d().a.ordinal();
            if (ordinal == 1 || ordinal == 2 || ordinal == 3 || ordinal == 5 || ordinal == 9) {
                File file = new File("/etc/ld.so.conf");
                File file2 = new File("/etc/ld.so.conf.d");
                if (file.exists()) {
                    a(arrayList, file);
                }
                if (file2.isDirectory()) {
                    for (File a2 : file2.listFiles()) {
                        a(arrayList, a2);
                    }
                }
            }
            a = Collections.unmodifiableList(new ArrayList(arrayList));
        }

        /* JADX WARNING: Removed duplicated region for block: B:22:0x003d A[SYNTHETIC, Splitter:B:22:0x003d] */
        /* JADX WARNING: Removed duplicated region for block: B:28:0x0044 A[SYNTHETIC, Splitter:B:28:0x0044] */
        /* JADX WARNING: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public static void a(java.util.List<java.lang.String> r3, java.io.File r4) {
            /*
                boolean r0 = r4.isFile()
                if (r0 == 0) goto L_0x0047
                boolean r0 = r4.exists()
                if (r0 != 0) goto L_0x000d
                goto L_0x0047
            L_0x000d:
                r0 = 0
                java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch:{ IOException -> 0x0041, all -> 0x003a }
                java.io.FileReader r2 = new java.io.FileReader     // Catch:{ IOException -> 0x0041, all -> 0x003a }
                r2.<init>(r4)     // Catch:{ IOException -> 0x0041, all -> 0x003a }
                r1.<init>(r2)     // Catch:{ IOException -> 0x0041, all -> 0x003a }
                java.lang.String r4 = r1.readLine()     // Catch:{ IOException -> 0x0038, all -> 0x0035 }
            L_0x001c:
                if (r4 == 0) goto L_0x0031
                java.io.File r0 = new java.io.File     // Catch:{ IOException -> 0x0038, all -> 0x0035 }
                r0.<init>(r4)     // Catch:{ IOException -> 0x0038, all -> 0x0035 }
                boolean r0 = r0.exists()     // Catch:{ IOException -> 0x0038, all -> 0x0035 }
                if (r0 == 0) goto L_0x002c
                r3.add(r4)     // Catch:{ IOException -> 0x0038, all -> 0x0035 }
            L_0x002c:
                java.lang.String r4 = r1.readLine()     // Catch:{ IOException -> 0x0038, all -> 0x0035 }
                goto L_0x001c
            L_0x0031:
                r1.close()     // Catch:{ IOException -> 0x0047 }
                goto L_0x0047
            L_0x0035:
                r3 = move-exception
                r0 = r1
                goto L_0x003b
            L_0x0038:
                r0 = r1
                goto L_0x0042
            L_0x003a:
                r3 = move-exception
            L_0x003b:
                if (r0 == 0) goto L_0x0040
                r0.close()     // Catch:{ IOException -> 0x0040 }
            L_0x0040:
                throw r3
            L_0x0041:
            L_0x0042:
                if (r0 == 0) goto L_0x0047
                r0.close()     // Catch:{ IOException -> 0x0047 }
            L_0x0047:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: g.c.a.b.a(java.util.List, java.io.File):void");
        }
    }

    public a(Class<T> cls) {
        this.f1348h = cls;
    }

    public T a() {
        if (!this.b.isEmpty()) {
            List<d> list = this.f1343c;
            h.a aVar = this.f1346f;
            list.add(0, new e(new g(aVar.a, aVar.b)));
            this.f1345e.put(b.TypeMapper, this.f1343c.size() > 1 ? new g.c.l.b(this.f1343c) : this.f1343c.get(0));
            List<c> list2 = this.f1344d;
            c.a aVar2 = this.f1347g;
            if (aVar2 != null) {
                list2.add(0, new f(aVar2.a));
                this.f1345e.put(b.FunctionMapper, this.f1344d.size() > 1 ? new g.c.l.a(this.f1344d) : this.f1344d.get(0));
                try {
                    Class<T> cls = this.f1348h;
                    List<T> unmodifiableList = Collections.unmodifiableList(this.b);
                    ArrayList arrayList = new ArrayList(this.a);
                    arrayList.addAll(b.a);
                    a(cls, unmodifiableList, Collections.unmodifiableList(arrayList), Collections.unmodifiableMap(this.f1345e));
                    throw null;
                } catch (LinkageError e2) {
                    if (!this.f1349i) {
                        return a((Throwable) e2);
                    }
                    throw e2;
                } catch (Exception e3) {
                    RuntimeException runtimeException = e3 instanceof RuntimeException ? (RuntimeException) e3 : new RuntimeException(e3);
                    if (!this.f1349i) {
                        return a((Throwable) runtimeException);
                    }
                    throw runtimeException;
                }
            } else {
                throw null;
            }
        } else {
            throw new UnsatisfiedLinkError("no library names specified");
        }
    }

    public abstract T a(Class<T> cls, Collection<String> collection, Collection<String> collection2, Map<b, Object> map);

    public final T a(Throwable th) {
        Class<T> cls = this.f1348h;
        return cls.cast(Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{this.f1348h, g.c.m.e.class}, new C0081a(this, th)));
    }

    public static /* synthetic */ List a(String str) {
        String property = System.getProperty(str);
        if (property != null) {
            return new ArrayList(Arrays.asList(property.split(File.pathSeparator)));
        }
        return Collections.emptyList();
    }
}
