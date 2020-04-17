package j.b.a.b0;

import android.app.Application;
import android.bluetooth.BluetoothDevice;
import android.os.Build;
import com.microsoft.azure.sdk.iot.deps.serializer.ConfigurationMetricsParser;
import e.a.a.a.a;
import j.a.a.a.a.a.g;
import java.util.ArrayList;
import java.util.List;

public final class j extends g {
    public long a;
    public final List<String> b;

    /* renamed from: c  reason: collision with root package name */
    public final Application f1504c;

    /* renamed from: d  reason: collision with root package name */
    public h f1505d;

    public j(Application application, h hVar) {
        if (application != null) {
            this.f1504c = application;
            this.f1505d = hVar;
            this.b = new ArrayList();
            return;
        }
        h.k.b.g.a("application");
        throw null;
    }

    public void a(int i2, j.a.a.a.a.a.j jVar) {
        if (jVar != null) {
            a(jVar);
        } else {
            h.k.b.g.a("result");
            throw null;
        }
    }

    public void a(List<j.a.a.a.a.a.j> list) {
        if (list != null) {
            StringBuilder a2 = a.a("onBatchScanResults size ");
            a2.append(list.size());
            l.a.a.f2455d.c(a2.toString(), new Object[0]);
            for (j.a.a.a.a.a.j a3 : list) {
                a(a3);
            }
            return;
        }
        h.k.b.g.a(ConfigurationMetricsParser.RESULTS_NAME);
        throw null;
    }

    public final void a(j.a.a.a.a.a.j jVar) {
        f fVar;
        List<String> list = this.b;
        BluetoothDevice bluetoothDevice = jVar.x;
        h.k.b.g.a((Object) bluetoothDevice, "result.device");
        if (!list.contains(bluetoothDevice.getAddress())) {
            l.a.a.f2455d.c("Received " + jVar, new Object[0]);
            this.a = System.currentTimeMillis();
            if (Build.VERSION.SDK_INT >= 26) {
                fVar = new f(this.f1505d, jVar.z, jVar.F);
            } else {
                fVar = new f(this.f1505d, jVar.z, 0);
            }
            List<String> list2 = this.b;
            BluetoothDevice bluetoothDevice2 = jVar.x;
            h.k.b.g.a((Object) bluetoothDevice2, "result.device");
            String address = bluetoothDevice2.getAddress();
            h.k.b.g.a((Object) address, "result.device.address");
            list2.add(address);
            BluetoothDevice bluetoothDevice3 = jVar.x;
            h.k.b.g.a((Object) bluetoothDevice3, "result.device");
            if (Build.VERSION.SDK_INT >= 23) {
                bluetoothDevice3.connectGatt(this.f1504c, false, fVar, 2);
            } else {
                bluetoothDevice3.connectGatt(this.f1504c, false, fVar);
            }
        }
    }

    public void a(int i2) {
        l.a.a.f2455d.b(a.a("Scan failed ", i2), new Object[0]);
    }
}
