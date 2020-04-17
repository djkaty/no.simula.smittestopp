package j.b.a.d0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.provider.Settings;
import com.microsoft.identity.client.PublicClientApplication;
import h.k.b.g;
import j.b.a.c0.d;
import k.d.a.c;

public final class a extends BroadcastReceiver {
    public static final boolean a(Context context) {
        if (context == null) {
            g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
            throw null;
        } else if (Settings.Secure.getInt(context.getContentResolver(), "location_mode", 0) != 0) {
            return true;
        } else {
            return false;
        }
    }

    public void onReceive(Context context, Intent intent) {
        String action;
        if (intent != null && (action = intent.getAction()) != null && action.equals("android.location.PROVIDERS_CHANGED")) {
            c b = c.b();
            if (context != null) {
                b.a((Object) new d(a(context)));
            } else {
                g.a();
                throw null;
            }
        }
    }
}
