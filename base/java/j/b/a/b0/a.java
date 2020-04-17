package j.b.a.b0;

import android.bluetooth.le.AdvertiseData;
import android.bluetooth.le.AdvertiseSettings;
import android.bluetooth.le.BluetoothLeAdvertiser;
import android.os.ParcelUuid;
import h.k.b.g;
import j.b.a.a0;

public final class a {
    public final AdvertiseData a;
    public final AdvertiseSettings b;

    /* renamed from: c  reason: collision with root package name */
    public final b f1488c = new b();

    /* renamed from: d  reason: collision with root package name */
    public final BluetoothLeAdvertiser f1489d;

    public a(BluetoothLeAdvertiser bluetoothLeAdvertiser) {
        this.f1489d = bluetoothLeAdvertiser;
        AdvertiseData build = new AdvertiseData.Builder().addServiceUuid(new ParcelUuid(a0.a)).setIncludeDeviceName(false).setIncludeTxPowerLevel(true).build();
        g.a((Object) build, "AdvertiseData.Builder()\n…rue)\n            .build()");
        this.a = build;
        AdvertiseSettings build2 = new AdvertiseSettings.Builder().setAdvertiseMode(0).setConnectable(true).setTimeout(0).setTxPowerLevel(2).build();
        g.a((Object) build2, "AdvertiseSettings.Builde…IUM)\n            .build()");
        this.b = build2;
    }
}
