package no.nordicsemi.android.support.v18.scanner;

import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.util.Log;
import j.a.a.a.a.a.a;
import j.a.a.a.a.a.f;
import j.a.a.a.a.a.g;
import j.a.a.a.a.a.h;
import j.a.a.a.a.a.k;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

public class ScannerService extends Service {
    public final Object x = new Object();
    public HashMap<PendingIntent, g> y;
    public Handler z;

    public final void a(List<h> list, k kVar, PendingIntent pendingIntent) {
        f fVar = new f(pendingIntent, kVar, this);
        synchronized (this.x) {
            this.y.put(pendingIntent, fVar);
        }
        try {
            a.a().a(list, kVar, fVar, this.z);
        } catch (Exception e2) {
            Log.w("ScannerService", "Starting scanning failed", e2);
        }
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onCreate() {
        super.onCreate();
        this.y = new HashMap<>();
        this.z = new Handler();
    }

    public void onDestroy() {
        a a = a.a();
        for (g b : this.y.values()) {
            try {
                a.b(b);
            } catch (Exception unused) {
            }
        }
        this.y.clear();
        this.y = null;
        this.z = null;
        super.onDestroy();
    }

    public int onStartCommand(Intent intent, int i2, int i3) {
        boolean containsKey;
        long j2;
        long j3;
        boolean isEmpty;
        Intent intent2 = intent;
        PendingIntent pendingIntent = (PendingIntent) intent2.getParcelableExtra("no.nordicsemi.android.support.v18.EXTRA_PENDING_INTENT");
        boolean booleanExtra = intent2.getBooleanExtra("no.nordicsemi.android.support.v18.EXTRA_START", false);
        boolean z2 = !booleanExtra;
        if (pendingIntent == null) {
            synchronized (this.x) {
                isEmpty = this.y.isEmpty();
            }
            if (isEmpty) {
                stopSelf();
            }
            return 2;
        }
        synchronized (this.x) {
            containsKey = this.y.containsKey(pendingIntent);
        }
        if (booleanExtra && !containsKey) {
            List parcelableArrayListExtra = intent2.getParcelableArrayListExtra("no.nordicsemi.android.support.v18.EXTRA_FILTERS");
            k kVar = (k) intent2.getParcelableExtra("no.nordicsemi.android.support.v18.EXTRA_SETTINGS");
            if (parcelableArrayListExtra == null) {
                parcelableArrayListExtra = Collections.emptyList();
            }
            if (kVar == null) {
                if (0 == 0 && 0 == 0) {
                    j3 = 500;
                    j2 = 4500;
                } else {
                    j3 = 0;
                    j2 = 0;
                }
                kVar = new k(0, 1, 0, 1, 3, true, 255, true, true, true, 10000, 10000, j3, j2, (k.a) null);
            }
            a(parcelableArrayListExtra, kVar, pendingIntent);
        } else if (z2 && containsKey) {
            a(pendingIntent);
        }
        return 2;
    }

    public void onTaskRemoved(Intent intent) {
        super.onTaskRemoved(intent);
    }

    public final void a(PendingIntent pendingIntent) {
        g remove;
        boolean isEmpty;
        synchronized (this.x) {
            remove = this.y.remove(pendingIntent);
            isEmpty = this.y.isEmpty();
        }
        if (remove != null) {
            try {
                a.a().b(remove);
            } catch (Exception e2) {
                Log.w("ScannerService", "Stopping scanning failed", e2);
            }
            if (isEmpty) {
                stopSelf();
            }
        }
    }
}
