package androidx.lifecycle;

import d.o.e0;
import d.o.f0;
import d.o.g;
import d.o.j;
import d.o.l;
import d.o.m;
import d.o.w;
import d.o.y;
import d.v.a;
import d.v.c;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

public final class SavedStateHandleController implements j {
    public final String x;
    public boolean y = false;
    public final w z;

    public static final class a implements a.C0048a {
        public void a(c cVar) {
            if (cVar instanceof f0) {
                e0 viewModelStore = ((f0) cVar).getViewModelStore();
                d.v.a savedStateRegistry = cVar.getSavedStateRegistry();
                if (viewModelStore != null) {
                    Iterator it = new HashSet(viewModelStore.a.keySet()).iterator();
                    while (it.hasNext()) {
                        HashMap<String, y> hashMap = viewModelStore.a;
                        g lifecycle = cVar.getLifecycle();
                        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) hashMap.get((String) it.next()).a("androidx.lifecycle.savedstate.vm.tag");
                        if (savedStateHandleController != null && !savedStateHandleController.y) {
                            savedStateHandleController.a(savedStateRegistry, lifecycle);
                            SavedStateHandleController.b(savedStateRegistry, lifecycle);
                        }
                    }
                    if (!new HashSet(viewModelStore.a.keySet()).isEmpty()) {
                        savedStateRegistry.a((Class<? extends a.C0048a>) a.class);
                        return;
                    }
                    return;
                }
                throw null;
            }
            throw new IllegalStateException("Internal error: OnRecreation should be registered only on componentsthat implement ViewModelStoreOwner");
        }
    }

    public SavedStateHandleController(String str, w wVar) {
        this.x = str;
        this.z = wVar;
    }

    public static void b(final d.v.a aVar, final g gVar) {
        g.b bVar = ((m) gVar).b;
        if (bVar == g.b.INITIALIZED || bVar.isAtLeast(g.b.STARTED)) {
            aVar.a((Class<? extends a.C0048a>) a.class);
        } else {
            gVar.a(new j() {
                public void a(l lVar, g.a aVar) {
                    if (aVar == g.a.ON_START) {
                        ((m) gVar).a.remove(this);
                        aVar.a((Class<? extends a.C0048a>) a.class);
                    }
                }
            });
        }
    }

    public void a(d.v.a aVar, g gVar) {
        if (!this.y) {
            this.y = true;
            gVar.a(this);
            if (aVar.a.b(this.x, this.z.b) != null) {
                throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
            }
            return;
        }
        throw new IllegalStateException("Already attached to lifecycleOwner");
    }

    public void a(l lVar, g.a aVar) {
        if (aVar == g.a.ON_DESTROY) {
            this.y = false;
            ((m) lVar.getLifecycle()).a.remove(this);
        }
    }
}
