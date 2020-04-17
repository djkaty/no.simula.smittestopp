package k.d.a;

import java.util.ArrayList;
import java.util.List;

public final class j {

    /* renamed from: d  reason: collision with root package name */
    public static final List<j> f2312d = new ArrayList();
    public Object a;
    public q b;

    /* renamed from: c  reason: collision with root package name */
    public j f2313c;

    public j(Object obj, q qVar) {
        this.a = obj;
        this.b = qVar;
    }

    public static j a(q qVar, Object obj) {
        synchronized (f2312d) {
            int size = f2312d.size();
            if (size <= 0) {
                return new j(obj, qVar);
            }
            j remove = f2312d.remove(size - 1);
            remove.a = obj;
            remove.b = qVar;
            remove.f2313c = null;
            return remove;
        }
    }

    public static void a(j jVar) {
        jVar.a = null;
        jVar.b = null;
        jVar.f2313c = null;
        synchronized (f2312d) {
            if (f2312d.size() < 10000) {
                f2312d.add(jVar);
            }
        }
    }
}
