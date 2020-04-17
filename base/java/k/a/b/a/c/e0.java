package k.a.b.a.c;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import k.a.b.a.c.e;

public class e0 extends c<List> {
    public final b a;
    public final b b;

    /* renamed from: c  reason: collision with root package name */
    public final b f1707c;

    /* renamed from: d  reason: collision with root package name */
    public x f1708d;

    public class a extends d0<List> implements b {

        /* renamed from: c  reason: collision with root package name */
        public List f1709c;

        /* renamed from: d  reason: collision with root package name */
        public int f1710d;

        public a(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public boolean a(r0<List> r0Var) {
            return e0.this == r0Var.getType();
        }

        public int c(Object obj) {
            int i2;
            List list = (List) obj;
            if (list == this.f1709c) {
                i2 = this.f1710d;
            } else {
                i2 = e0.a(list, this.a);
            }
            return i2 + 4;
        }

        public void d(Object obj) {
            int i2;
            List list = (List) obj;
            x xVar = this.a;
            y0 y0Var = xVar.a;
            if (list == this.f1709c) {
                i2 = this.f1710d;
            } else {
                i2 = e0.a(list, xVar);
            }
            y0Var.c(i2 + 4 + 4);
            x xVar2 = this.a;
            xVar2.a.b(list.size());
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                Object obj2 = list.get(i3);
                r0 a = this.a.a(obj2).a(obj2);
                a.c();
                a.a(obj2);
            }
        }

        public byte g() {
            return -48;
        }

        public a getType() {
            return e0.this;
        }

        public Object k() {
            Object obj;
            r rVar = this.b;
            k0 k0Var = rVar.a;
            rVar.f();
            int f2 = rVar.f();
            if (f2 <= rVar.a()) {
                q0 q0Var = null;
                ArrayList arrayList = new ArrayList(f2);
                int i2 = 0;
                while (i2 < f2) {
                    byte b = k0Var.get(k0Var.position());
                    boolean z = b == -32 || b == -16;
                    if (q0Var == null) {
                        q0Var = this.b.b();
                    } else if (b == 0 || !(q0Var instanceof j0)) {
                        q0Var = this.b.b();
                    } else if (b != ((j0) q0Var).g()) {
                        q0Var = this.b.b();
                    } else {
                        k0Var.get();
                    }
                    if (q0Var != null) {
                        if (z) {
                            obj = ((e.b) q0Var).j();
                        } else {
                            obj = q0Var.k();
                        }
                        arrayList.add(obj);
                        i2++;
                    } else {
                        throw new q("Unknown constructor");
                    }
                }
                return arrayList;
            }
            StringBuilder a = e.a.a.a.a.a("List element count ", f2, " is specified to be greater than the amount of data available (");
            a.append(rVar.a());
            a.append(")");
            throw new IllegalArgumentException(a.toString());
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m17getType() {
            return e0.this;
        }

        public void a(List list, int i2) {
            this.f1709c = list;
            this.f1710d = i2;
        }
    }

    public interface b extends j0<List> {
        void a(List list, int i2);
    }

    public class c extends m0<List> implements b {

        /* renamed from: c  reason: collision with root package name */
        public List f1712c;

        /* renamed from: d  reason: collision with root package name */
        public int f1713d;

        public c(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(List list, int i2) {
            this.f1712c = list;
            this.f1713d = i2;
        }

        public boolean a(r0<List> r0Var) {
            return r0Var == this;
        }

        public int c(Object obj) {
            int i2;
            List list = (List) obj;
            if (list == this.f1712c) {
                i2 = this.f1713d;
            } else {
                i2 = e0.a(list, this.a);
            }
            return i2 + 1;
        }

        public void d(Object obj) {
            int i2;
            List list = (List) obj;
            x xVar = this.a;
            y0 y0Var = xVar.a;
            if (list == this.f1712c) {
                i2 = this.f1713d;
            } else {
                i2 = e0.a(list, xVar);
            }
            y0Var.c(i2 + 1 + 1);
            this.a.a.a((byte) list.size());
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                Object obj2 = list.get(i3);
                r0 a = this.a.a(obj2).a(obj2);
                a.c();
                a.a(obj2);
            }
        }

        public byte g() {
            return -64;
        }

        public a getType() {
            return e0.this;
        }

        public Object k() {
            Object obj;
            r rVar = this.b;
            k0 k0Var = rVar.a;
            rVar.e();
            byte e2 = rVar.e() & 255;
            q0 q0Var = null;
            ArrayList arrayList = new ArrayList(e2);
            int i2 = 0;
            while (i2 < e2) {
                byte b = k0Var.get(k0Var.position());
                boolean z = b == -32 || b == -16;
                if (q0Var == null) {
                    q0Var = this.b.b();
                } else if (b == 0 || !(q0Var instanceof j0)) {
                    q0Var = this.b.b();
                } else if (b != ((j0) q0Var).g()) {
                    q0Var = this.b.b();
                } else {
                    k0Var.get();
                }
                if (q0Var != null) {
                    if (z) {
                        obj = ((e.b) q0Var).j();
                    } else {
                        obj = q0Var.k();
                    }
                    arrayList.add(obj);
                    i2++;
                } else {
                    throw new q("Unknown constructor");
                }
            }
            return arrayList;
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m18getType() {
            return e0.this;
        }
    }

    public class d extends z<List> implements b {
        public d(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(Object obj) {
            List list = (List) obj;
        }

        public void a(List list, int i2) {
        }

        public boolean a(r0<List> r0Var) {
            return r0Var == this;
        }

        public byte g() {
            return 69;
        }

        public a getType() {
            return e0.this;
        }

        public int i() {
            return 0;
        }

        public Object k() {
            return Collections.EMPTY_LIST;
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m19getType() {
            return e0.this;
        }
    }

    public e0(x xVar, r rVar) {
        this.f1708d = xVar;
        this.a = new a(xVar, rVar);
        this.b = new c(xVar, rVar);
        this.f1707c = new d(xVar, rVar);
        xVar.f1786c.put(List.class, this);
        rVar.a(this);
    }

    public r0 f() {
        return this.a;
    }

    public Collection<b> i() {
        return Arrays.asList(new b[]{this.f1707c, this.b, this.a});
    }

    public Class<List> a() {
        return List.class;
    }

    public b a(List list) {
        b bVar;
        int a2 = a(list, this.f1708d);
        if (list.isEmpty()) {
            bVar = this.f1707c;
        } else {
            bVar = (list.size() > 255 || a2 >= 254) ? this.a : this.b;
        }
        bVar.a(list, a2);
        return bVar;
    }

    public static int a(List list, x xVar) {
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            Object obj = list.get(i2);
            a a2 = xVar.a(obj);
            if (a2 != null) {
                r0 a3 = a2.a(obj);
                i3 += a3.b(obj) + a3.d();
                i2++;
            } else {
                StringBuilder a4 = e.a.a.a.a.a("No encoding defined for type: ");
                a4.append(obj.getClass());
                throw new IllegalArgumentException(a4.toString());
            }
        }
        return i3;
    }
}
