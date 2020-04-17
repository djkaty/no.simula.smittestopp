package j.b.a.b0;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattServer;
import android.bluetooth.BluetoothGattServerCallback;
import e.a.a.a.a;
import e.c.a.a.b.l.c;
import h.k.b.g;

public final class d extends BluetoothGattServerCallback {
    public final /* synthetic */ e a;

    public d(e eVar) {
        this.a = eVar;
    }

    public void onCharacteristicReadRequest(BluetoothDevice bluetoothDevice, int i2, int i3, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        if (bluetoothDevice == null) {
            g.a("device");
            throw null;
        } else if (bluetoothGattCharacteristic == null) {
            g.a("characteristic");
            throw null;
        } else if (c.a(bluetoothGattCharacteristic) && this.a.f1490c != null) {
            if (i3 == 0) {
                StringBuilder a2 = a.a("Requesting characteristic UUID: ");
                a2.append(bluetoothGattCharacteristic.getUuid());
                l.a.a.f2455d.a(a2.toString(), new Object[0]);
                l.a.a.f2455d.a("Responding: + " + new String(this.a.a, h.o.a.a), new Object[0]);
            }
            e eVar = this.a;
            byte[] bArr = eVar.a;
            if (i3 > bArr.length) {
                BluetoothGattServer bluetoothGattServer = eVar.f1490c;
                if (bluetoothGattServer != null) {
                    bluetoothGattServer.sendResponse(bluetoothDevice, i2, 0, 0, new byte[0]);
                    return;
                }
                g.a();
                throw null;
            }
            byte[] bArr2 = new byte[(bArr.length - i3)];
            int length = bArr.length;
            for (int i4 = i3; i4 < length; i4++) {
                bArr2[i4 - i3] = this.a.a[i4];
            }
            BluetoothGattServer bluetoothGattServer2 = this.a.f1490c;
            if (bluetoothGattServer2 != null) {
                bluetoothGattServer2.sendResponse(bluetoothDevice, i2, 0, i3, bArr2);
            } else {
                g.a();
                throw null;
            }
        }
    }
}
