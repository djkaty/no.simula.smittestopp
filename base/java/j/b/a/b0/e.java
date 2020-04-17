package j.b.a.b0;

import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattServer;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import com.microsoft.identity.client.PublicClientApplication;
import h.k.b.g;
import h.o.a;
import j.b.a.a0;
import java.nio.charset.Charset;

public final class e {
    public final byte[] a;
    public final BluetoothGattService b;

    /* renamed from: c  reason: collision with root package name */
    public BluetoothGattServer f1490c;

    /* renamed from: d  reason: collision with root package name */
    public final Context f1491d;

    /* renamed from: e  reason: collision with root package name */
    public final BluetoothManager f1492e;

    public e(Context context, BluetoothManager bluetoothManager) {
        if (context == null) {
            g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
            throw null;
        } else if (bluetoothManager != null) {
            this.f1491d = context;
            this.f1492e = bluetoothManager;
            Context applicationContext = context.getApplicationContext();
            g.a((Object) applicationContext, "context.applicationContext");
            String e2 = a0.e(applicationContext);
            Charset charset = a.a;
            if (e2 != null) {
                byte[] bytes = e2.getBytes(charset);
                g.a((Object) bytes, "(this as java.lang.String).getBytes(charset)");
                this.a = bytes;
                BluetoothGattService bluetoothGattService = new BluetoothGattService(a0.a, 0);
                bluetoothGattService.addCharacteristic(new BluetoothGattCharacteristic(a0.b, 2, 1));
                this.b = bluetoothGattService;
                return;
            }
            throw new h.e("null cannot be cast to non-null type java.lang.String");
        } else {
            g.a("bluetoothManager");
            throw null;
        }
    }
}
