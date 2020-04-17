package j.a.a.a.a.a;

import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class f extends g {
    public final PendingIntent a;
    public Context b;

    /* renamed from: c  reason: collision with root package name */
    public Context f1457c;

    /* renamed from: d  reason: collision with root package name */
    public long f1458d;

    /* renamed from: e  reason: collision with root package name */
    public long f1459e;

    public f(PendingIntent pendingIntent, k kVar) {
        this.a = pendingIntent;
        this.f1459e = kVar.B;
    }

    public void a(int i2, j jVar) {
        Context context = this.b;
        if (context == null) {
            context = this.f1457c;
        }
        if (context != null) {
            try {
                Intent intent = new Intent();
                intent.putExtra("android.bluetooth.le.extra.CALLBACK_TYPE", i2);
                intent.putParcelableArrayListExtra("android.bluetooth.le.extra.LIST_SCAN_RESULT", new ArrayList(Collections.singletonList(jVar)));
                this.a.send(context, 0, intent);
            } catch (PendingIntent.CanceledException unused) {
            }
        }
    }

    public f(PendingIntent pendingIntent, k kVar, Service service) {
        this.a = pendingIntent;
        this.f1459e = kVar.B;
        this.f1457c = service;
    }

    public void a(List<j> list) {
        Context context = this.b;
        if (context == null) {
            context = this.f1457c;
        }
        if (context != null) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (this.f1458d <= (elapsedRealtime - this.f1459e) + 5) {
                this.f1458d = elapsedRealtime;
                try {
                    Intent intent = new Intent();
                    intent.putExtra("android.bluetooth.le.extra.CALLBACK_TYPE", 1);
                    intent.putParcelableArrayListExtra("android.bluetooth.le.extra.LIST_SCAN_RESULT", new ArrayList(list));
                    intent.setExtrasClassLoader(j.class.getClassLoader());
                    this.a.send(context, 0, intent);
                } catch (PendingIntent.CanceledException unused) {
                }
            }
        }
    }

    public void a(int i2) {
        Context context = this.b;
        if (context == null) {
            context = this.f1457c;
        }
        if (context != null) {
            try {
                Intent intent = new Intent();
                intent.putExtra("android.bluetooth.le.extra.ERROR_CODE", i2);
                this.a.send(context, 0, intent);
            } catch (PendingIntent.CanceledException unused) {
            }
        }
    }
}
