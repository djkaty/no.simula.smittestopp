package d.m.a;

import android.util.Log;
import androidx.fragment.app.Fragment;
import d.o.a0;
import d.o.e0;
import d.o.y;
import java.util.HashMap;
import java.util.Iterator;

public final class t extends y {

    /* renamed from: i  reason: collision with root package name */
    public static final a0 f675i = new a();

    /* renamed from: c  reason: collision with root package name */
    public final HashMap<String, Fragment> f676c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    public final HashMap<String, t> f677d = new HashMap<>();

    /* renamed from: e  reason: collision with root package name */
    public final HashMap<String, e0> f678e = new HashMap<>();

    /* renamed from: f  reason: collision with root package name */
    public final boolean f679f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f680g = false;

    /* renamed from: h  reason: collision with root package name */
    public boolean f681h = false;

    public static class a implements a0 {
        public <T extends y> T a(Class<T> cls) {
            return new t(true);
        }
    }

    public t(boolean z) {
        this.f679f = z;
    }

    public boolean a(Fragment fragment) {
        if (!this.f676c.containsKey(fragment.mWho)) {
            return true;
        }
        if (this.f679f) {
            return this.f680g;
        }
        return !this.f681h;
    }

    public void b() {
        if (p.c(3)) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.f680g = true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || t.class != obj.getClass()) {
            return false;
        }
        t tVar = (t) obj;
        if (!this.f676c.equals(tVar.f676c) || !this.f677d.equals(tVar.f677d) || !this.f678e.equals(tVar.f678e)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int hashCode = this.f677d.hashCode();
        return this.f678e.hashCode() + ((hashCode + (this.f676c.hashCode() * 31)) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator<Fragment> it = this.f676c.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator<String> it2 = this.f677d.keySet().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator<String> it3 = this.f678e.keySet().iterator();
        while (it3.hasNext()) {
            sb.append(it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
