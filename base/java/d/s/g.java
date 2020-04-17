package d.s;

import d.o.a0;
import d.o.e0;
import d.o.y;
import java.util.HashMap;
import java.util.Iterator;
import java.util.UUID;

public class g extends y {

    /* renamed from: d  reason: collision with root package name */
    public static final a0 f732d = new a();

    /* renamed from: c  reason: collision with root package name */
    public final HashMap<UUID, e0> f733c = new HashMap<>();

    public static class a implements a0 {
        public <T extends y> T a(Class<T> cls) {
            return new g();
        }
    }

    public void b() {
        for (e0 a2 : this.f733c.values()) {
            a2.a();
        }
        this.f733c.clear();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NavControllerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} ViewModelStores (");
        Iterator<UUID> it = this.f733c.keySet().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
