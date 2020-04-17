package j.b.a.b0;

import android.bluetooth.le.AdvertiseCallback;
import android.bluetooth.le.AdvertiseSettings;
import l.a.a;

public final class b extends AdvertiseCallback {
    public void onStartFailure(int i2) {
        a.f2455d.b(e.a.a.a.a.a("Failed to start with error code ", i2), new Object[0]);
    }

    public void onStartSuccess(AdvertiseSettings advertiseSettings) {
        StringBuilder a = e.a.a.a.a.a("Started advertising with settings ");
        a.append(String.valueOf(advertiseSettings));
        a.f2455d.c(a.toString(), new Object[0]);
    }
}
