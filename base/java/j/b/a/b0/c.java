package j.b.a.b0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import h.k.b.g;
import l.a.a;

public final class c extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if (action != null && action.hashCode() == -1530327060 && action.equals("android.bluetooth.adapter.action.STATE_CHANGED")) {
                int intExtra = intent.getIntExtra("android.bluetooth.adapter.extra.STATE", -1);
                if (intExtra == 10) {
                    a.f2455d.a("Bluetooth is off", new Object[0]);
                    k.d.a.c.b().a((Object) new j.b.a.c0.a(false));
                } else if (intExtra == 12) {
                    k.d.a.c.b().a((Object) new j.b.a.c0.a(true));
                    a.f2455d.a("Bluetooth is on", new Object[0]);
                }
            }
        } else {
            g.a();
            throw null;
        }
    }
}
