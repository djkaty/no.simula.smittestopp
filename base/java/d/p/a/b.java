package d.p.a;

import d.b.a.r;
import d.f.i;
import d.o.a0;
import d.o.b0;
import d.o.d0;
import d.o.e0;
import d.o.l;
import d.o.q;
import d.o.y;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class b extends a {
    public final l a;
    public final c b;

    public static class a<D> extends q<D> {

        /* renamed from: j  reason: collision with root package name */
        public l f718j;

        /* renamed from: k  reason: collision with root package name */
        public C0036b<D> f719k;

        public void a() {
            throw null;
        }

        public void b() {
            throw null;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(0);
            sb.append(" : ");
            r.a((Object) null, sb);
            sb.append("}}");
            return sb.toString();
        }

        public void a(d.o.r<? super D> rVar) {
            super.a(rVar);
            this.f718j = null;
            this.f719k = null;
        }

        public void a(D d2) {
            super.a(d2);
        }
    }

    /* renamed from: d.p.a.b$b  reason: collision with other inner class name */
    public static class C0036b<D> implements d.o.r<D> {
    }

    public static class c extends y {

        /* renamed from: d  reason: collision with root package name */
        public static final a0 f720d = new a();

        /* renamed from: c  reason: collision with root package name */
        public i<a> f721c = new i<>(10);

        public static class a implements a0 {
            public <T extends y> T a(Class<T> cls) {
                return new c();
            }
        }

        public void b() {
            if (this.f721c.b() <= 0) {
                i<a> iVar = this.f721c;
                int i2 = iVar.A;
                Object[] objArr = iVar.z;
                for (int i3 = 0; i3 < i2; i3++) {
                    objArr[i3] = null;
                }
                iVar.A = 0;
                iVar.x = false;
            } else if (this.f721c.d(0) != null) {
                throw null;
            } else {
                throw null;
            }
        }
    }

    public b(l lVar, e0 e0Var) {
        y yVar;
        this.a = lVar;
        a0 a0Var = c.f720d;
        Class cls = c.class;
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            String b2 = e.a.a.a.a.b("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
            y yVar2 = e0Var.a.get(b2);
            if (!cls.isInstance(yVar2)) {
                if (a0Var instanceof b0) {
                    yVar = ((b0) a0Var).a(b2, cls);
                } else {
                    yVar = a0Var.a(cls);
                }
                yVar2 = yVar;
                y put = e0Var.a.put(b2, yVar2);
                if (put != null) {
                    put.b();
                }
            } else if (a0Var instanceof d0) {
                ((d0) a0Var).a(yVar2);
            }
            this.b = (c) yVar2;
            return;
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @Deprecated
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        c cVar = this.b;
        if (cVar.f721c.b() > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            String str2 = str + "    ";
            if (cVar.f721c.b() > 0) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(cVar.f721c.b(0));
                printWriter.print(": ");
                printWriter.println(cVar.f721c.d(0).toString());
                printWriter.print(str2);
                printWriter.print("mId=");
                printWriter.print(0);
                printWriter.print(" mArgs=");
                printWriter.println((Object) null);
                printWriter.print(str2);
                printWriter.print("mLoader=");
                printWriter.println((Object) null);
                throw null;
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        r.a((Object) this.a, sb);
        sb.append("}}");
        return sb.toString();
    }
}
