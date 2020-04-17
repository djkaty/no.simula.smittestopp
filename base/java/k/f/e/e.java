package k.f.e;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import k.f.a;
import k.f.b;
import k.f.d.d;

public class e implements a {
    public boolean a = false;
    public final Map<String, d> b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public final LinkedBlockingQueue<d> f2452c = new LinkedBlockingQueue<>();

    public synchronized b a(String str) {
        d dVar;
        dVar = this.b.get(str);
        if (dVar == null) {
            dVar = new d(str, this.f2452c, this.a);
            this.b.put(str, dVar);
        }
        return dVar;
    }
}
