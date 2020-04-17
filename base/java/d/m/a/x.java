package d.m.a;

import android.util.Log;
import androidx.fragment.app.Fragment;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class x {
    public final ArrayList<Fragment> a = new ArrayList<>();
    public final HashMap<String, v> b = new HashMap<>();

    public void a(Fragment fragment) {
        if (!this.a.contains(fragment)) {
            synchronized (this.a) {
                this.a.add(fragment);
            }
            fragment.mAdded = true;
            return;
        }
        throw new IllegalStateException("Fragment already added: " + fragment);
    }

    public void b(Fragment fragment) {
        synchronized (this.a) {
            this.a.remove(fragment);
        }
        fragment.mAdded = false;
    }

    public List<Fragment> c() {
        ArrayList arrayList;
        if (this.a.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.a) {
            arrayList = new ArrayList(this.a);
        }
        return arrayList;
    }

    public ArrayList<String> d() {
        synchronized (this.a) {
            if (this.a.isEmpty()) {
                return null;
            }
            ArrayList<String> arrayList = new ArrayList<>(this.a.size());
            Iterator<Fragment> it = this.a.iterator();
            while (it.hasNext()) {
                Fragment next = it.next();
                arrayList.add(next.mWho);
                if (p.c(2)) {
                    Log.v("FragmentManager", "saveAllState: adding fragment (" + next.mWho + "): " + next);
                }
            }
            return arrayList;
        }
    }

    public List<Fragment> b() {
        ArrayList arrayList = new ArrayList();
        for (v next : this.b.values()) {
            if (next != null) {
                arrayList.add(next.b);
            } else {
                arrayList.add((Object) null);
            }
        }
        return arrayList;
    }

    public void a(int i2) {
        Iterator<Fragment> it = this.a.iterator();
        while (it.hasNext()) {
            v vVar = this.b.get(it.next().mWho);
            if (vVar != null) {
                vVar.f682c = i2;
            }
        }
        for (v next : this.b.values()) {
            if (next != null) {
                next.f682c = i2;
            }
        }
    }

    public Fragment b(String str) {
        v vVar = this.b.get(str);
        if (vVar != null) {
            return vVar.b;
        }
        return null;
    }

    public void a() {
        this.b.values().removeAll(Collections.singleton((Object) null));
    }

    public boolean a(String str) {
        return this.b.containsKey(str);
    }
}
