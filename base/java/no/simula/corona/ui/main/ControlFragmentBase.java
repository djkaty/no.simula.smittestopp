package no.simula.corona.ui.main;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.location.LocationManager;
import android.os.Bundle;
import android.view.View;
import com.microsoft.appcenter.analytics.ingestion.models.EventLog;
import h.e;
import h.k.b.g;
import j.b.a.c0.a;
import j.b.a.c0.d;
import j.b.a.e0.b.b;
import k.d.a.c;
import k.d.a.m;
import org.greenrobot.eventbus.ThreadMode;

public class ControlFragmentBase extends MainBaseFragment {
    public boolean A;
    public boolean B;
    public boolean y;
    public boolean z;

    public void a() {
    }

    public void b() {
    }

    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        a();
    }

    @m(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(a aVar) {
        if (aVar != null) {
            if (!aVar.a) {
                this.A = false;
            }
            this.y = aVar.a;
            b();
            return;
        }
        g.a(EventLog.TYPE);
        throw null;
    }

    public void onStart() {
        super.onStart();
        c.b().b(this);
    }

    public void onStop() {
        super.onStop();
        c.b().c(this);
    }

    public void onViewCreated(View view, Bundle bundle) {
        Object obj = null;
        if (view != null) {
            super.onViewCreated(view, bundle);
            b bVar = this.x;
            this.A = g.a((Object) bVar != null ? bVar.b() : null, (Object) true);
            b bVar2 = this.x;
            this.B = g.a((Object) bVar2 != null ? bVar2.i() : null, (Object) true);
            Context context = getContext();
            Object systemService = context != null ? context.getSystemService("bluetooth") : null;
            if (systemService != null) {
                BluetoothAdapter adapter = ((BluetoothManager) systemService).getAdapter();
                this.y = adapter != null ? adapter.isEnabled() : false;
                Context context2 = getContext();
                if (context2 != null) {
                    obj = context2.getSystemService("location");
                }
                if (obj != null) {
                    this.z = ((LocationManager) obj).isProviderEnabled("gps");
                    return;
                }
                throw new e("null cannot be cast to non-null type android.location.LocationManager");
            }
            throw new e("null cannot be cast to non-null type android.bluetooth.BluetoothManager");
        }
        g.a("view");
        throw null;
    }

    @m(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(j.b.a.c0.b bVar) {
        if (bVar != null) {
            this.A = bVar.a;
            b();
            return;
        }
        g.a(EventLog.TYPE);
        throw null;
    }

    @m(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(j.b.a.c0.c cVar) {
        if (cVar != null) {
            this.B = cVar.a;
            b();
            return;
        }
        g.a(EventLog.TYPE);
        throw null;
    }

    @m(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(d dVar) {
        if (dVar != null) {
            if (!dVar.a) {
                this.B = false;
            }
            this.z = dVar.a;
            b();
            return;
        }
        g.a(EventLog.TYPE);
        throw null;
    }
}
