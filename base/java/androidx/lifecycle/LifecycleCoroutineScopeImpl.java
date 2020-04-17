package androidx.lifecycle;

import com.microsoft.appcenter.analytics.ingestion.models.EventLog;
import d.o.g;
import d.o.h;
import d.o.j;
import d.o.l;

public final class LifecycleCoroutineScopeImpl extends h implements j {
    public void a(l lVar, g.a aVar) {
        if (lVar == null) {
            h.k.b.g.a("source");
            throw null;
        } else if (aVar != null) {
            throw null;
        } else {
            h.k.b.g.a(EventLog.TYPE);
            throw null;
        }
    }
}
