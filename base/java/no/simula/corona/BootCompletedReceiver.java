package no.simula.corona;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.SystemClock;
import com.microsoft.azure.storage.blob.BlobConstants;
import com.microsoft.identity.client.PublicClientApplication;
import h.e;
import h.k.b.g;
import j.b.a.a0;
import l.a.a;

public final class BootCompletedReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        if (context == null) {
            g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
            throw null;
        } else if (intent == null) {
            g.a("intent");
            throw null;
        } else if (!g.a((Object) "android.intent.action.BOOT_COMPLETED", (Object) intent.getAction())) {
        } else {
            if (!a0.c(context) && !a0.d(context)) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 26) {
                Intent intent2 = new Intent(context, DataCollectorService.class);
                intent2.putExtra("service-command", 4);
                intent2.putExtra("auto_start", true);
                context.startForegroundService(intent2);
                return;
            }
            Object systemService = context.getSystemService("alarm");
            if (systemService != null) {
                a.f2455d.a("starting app automatically", new Object[0]);
                Intent intent3 = new Intent(context, DataCollectorService.class);
                intent3.putExtra("service-command", 4);
                intent3.putExtra("auto_start", true);
                ((AlarmManager) systemService).set(1, SystemClock.currentThreadTimeMillis() + ((long) 10000), PendingIntent.getService(context, 0, intent3, BlobConstants.DEFAULT_SINGLE_BLOB_PUT_THRESHOLD_IN_BYTES));
                return;
            }
            throw new e("null cannot be cast to non-null type android.app.AlarmManager");
        }
    }
}
