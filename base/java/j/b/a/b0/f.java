package j.b.a.b0;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import e.c.a.a.b.l.c;
import h.k.b.g;
import j.b.a.a0;
import l.a.a;

public final class f extends BluetoothGattCallback {
    public String a;
    public final h b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1493c;

    /* renamed from: d  reason: collision with root package name */
    public final int f1494d;

    public f(h hVar, int i2, int i3) {
        this.b = hVar;
        this.f1493c = i2;
        this.f1494d = i3;
    }

    public void a(String str, Integer num) {
        h hVar;
        if (str != null && num != null && (hVar = this.b) != null) {
            hVar.a(str, num.intValue(), this.f1494d, System.currentTimeMillis());
        }
    }

    public void onCharacteristicRead(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i2) {
        String str = null;
        if (bluetoothGatt == null) {
            g.a("gatt");
            throw null;
        } else if (bluetoothGattCharacteristic != null) {
            if (i2 != 0) {
                bluetoothGatt.disconnect();
            }
            if (c.a(bluetoothGattCharacteristic)) {
                a.f2455d.c("onCharacteristicRead", new Object[0]);
                byte[] value = bluetoothGattCharacteristic.getValue();
                if (value != null) {
                    str = new String(value, h.o.a.a);
                }
                this.a = str;
                StringBuilder a2 = e.a.a.a.a.a("Got identifier ");
                a2.append(this.a);
                a.f2455d.b(a2.toString(), new Object[0]);
                a.f2455d.c("storeIfRead " + this.f1493c + ", " + this.a, new Object[0]);
                String str2 = this.a;
                if (str2 != null) {
                    a(str2, Integer.valueOf(this.f1493c));
                }
                bluetoothGatt.disconnect();
            }
        } else {
            g.a("characteristic");
            throw null;
        }
    }

    public void onConnectionStateChange(BluetoothGatt bluetoothGatt, int i2, int i3) {
        if (bluetoothGatt != null) {
            a.f2455d.c("status: " + i2 + ", state: " + i3, new Object[0]);
            if (i2 != 0) {
                bluetoothGatt.close();
            } else if (i3 == 2) {
                bluetoothGatt.discoverServices();
            } else if (i3 == 0) {
                bluetoothGatt.close();
            }
        } else {
            g.a("gatt");
            throw null;
        }
    }

    public void onServicesDiscovered(BluetoothGatt bluetoothGatt, int i2) {
        if (bluetoothGatt != null) {
            a.f2455d.c(e.a.a.a.a.a("onServicesDiscovered status: ", i2), new Object[0]);
            if (i2 == 0) {
                try {
                    bluetoothGatt.readCharacteristic(bluetoothGatt.getService(a0.a).getCharacteristic(a0.b));
                } catch (NullPointerException unused) {
                    a.f2455d.a("onServicesDiscovered device does not display service UUID", new Object[0]);
                    a((String) null, (Integer) null);
                }
            } else {
                bluetoothGatt.disconnect();
            }
        } else {
            g.a("gatt");
            throw null;
        }
    }
}
