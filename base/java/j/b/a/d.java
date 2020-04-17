package j.b.a;

import android.os.Binder;
import h.k.b.g;
import no.simula.corona.DataCollectorService;

public final class d extends Binder {
    public final DataCollectorService a;

    public d(DataCollectorService dataCollectorService) {
        if (dataCollectorService != null) {
            this.a = dataCollectorService;
        } else {
            g.a("collector");
            throw null;
        }
    }
}
