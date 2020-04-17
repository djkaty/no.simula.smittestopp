package d.v;

import android.os.Bundle;
import androidx.savedstate.Recreator;
import androidx.savedstate.SavedStateRegistry$1;
import d.o.g;
import d.o.m;
import d.v.a;
import java.util.Map;

public final class b {
    public final c a;
    public final a b = new a();

    public b(c cVar) {
        this.a = cVar;
    }

    public void a(Bundle bundle) {
        g lifecycle = this.a.getLifecycle();
        if (((m) lifecycle).b == g.b.INITIALIZED) {
            lifecycle.a(new Recreator(this.a));
            a aVar = this.b;
            if (!aVar.f940c) {
                if (bundle != null) {
                    aVar.b = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
                }
                lifecycle.a(new SavedStateRegistry$1(aVar));
                aVar.f940c = true;
                return;
            }
            throw new IllegalStateException("SavedStateRegistry was already restored.");
        }
        throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
    }

    public void b(Bundle bundle) {
        a aVar = this.b;
        if (aVar != null) {
            Bundle bundle2 = new Bundle();
            Bundle bundle3 = aVar.b;
            if (bundle3 != null) {
                bundle2.putAll(bundle3);
            }
            d.c.a.b.b<K, V>.d a2 = aVar.a.a();
            while (a2.hasNext()) {
                Map.Entry entry = (Map.Entry) a2.next();
                bundle2.putBundle((String) entry.getKey(), ((a.b) entry.getValue()).a());
            }
            bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
            return;
        }
        throw null;
    }
}
