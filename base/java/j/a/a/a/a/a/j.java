package j.a.a.a.a.a;

import android.bluetooth.BluetoothDevice;
import android.os.Parcel;
import android.os.Parcelable;
import e.c.a.a.b.l.c;
import java.util.Arrays;

public final class j implements Parcelable {
    public static final Parcelable.Creator<j> CREATOR = new a();
    public long A;
    public int B;
    public int C;
    public int D;
    public int E;
    public int F;
    public int G;
    public BluetoothDevice x;
    public i y;
    public int z;

    public static class a implements Parcelable.Creator<j> {
        public Object createFromParcel(Parcel parcel) {
            return new j(parcel, (a) null);
        }

        public Object[] newArray(int i2) {
            return new j[i2];
        }
    }

    public j(BluetoothDevice bluetoothDevice, i iVar, int i2, long j2) {
        this.x = bluetoothDevice;
        this.y = iVar;
        this.z = i2;
        this.A = j2;
        this.B = 17;
        this.C = 1;
        this.D = 0;
        this.E = 255;
        this.F = 127;
        this.G = 0;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || j.class != obj.getClass()) {
            return false;
        }
        j jVar = (j) obj;
        if (c.b((Object) this.x, (Object) jVar.x) && this.z == jVar.z && c.b((Object) this.y, (Object) jVar.y) && this.A == jVar.A && this.B == jVar.B && this.C == jVar.C && this.D == jVar.D && this.E == jVar.E && this.F == jVar.F && this.G == jVar.G) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.x, Integer.valueOf(this.z), this.y, Long.valueOf(this.A), Integer.valueOf(this.B), Integer.valueOf(this.C), Integer.valueOf(this.D), Integer.valueOf(this.E), Integer.valueOf(this.F), Integer.valueOf(this.G)});
    }

    public String toString() {
        String str;
        StringBuilder a2 = e.a.a.a.a.a("ScanResult{device=");
        a2.append(this.x);
        a2.append(", scanRecord=");
        i iVar = this.y;
        if (iVar == null) {
            str = "null";
        } else {
            str = iVar.toString();
        }
        a2.append(str);
        a2.append(", rssi=");
        a2.append(this.z);
        a2.append(", timestampNanos=");
        a2.append(this.A);
        a2.append(", eventType=");
        a2.append(this.B);
        a2.append(", primaryPhy=");
        a2.append(this.C);
        a2.append(", secondaryPhy=");
        a2.append(this.D);
        a2.append(", advertisingSid=");
        a2.append(this.E);
        a2.append(", txPower=");
        a2.append(this.F);
        a2.append(", periodicAdvertisingInterval=");
        a2.append(this.G);
        a2.append('}');
        return a2.toString();
    }

    public void writeToParcel(Parcel parcel, int i2) {
        this.x.writeToParcel(parcel, i2);
        if (this.y != null) {
            parcel.writeInt(1);
            parcel.writeByteArray(this.y.f1472g);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.z);
        parcel.writeLong(this.A);
        parcel.writeInt(this.B);
        parcel.writeInt(this.C);
        parcel.writeInt(this.D);
        parcel.writeInt(this.E);
        parcel.writeInt(this.F);
        parcel.writeInt(this.G);
    }

    public j(BluetoothDevice bluetoothDevice, int i2, int i3, int i4, int i5, int i6, int i7, int i8, i iVar, long j2) {
        this.x = bluetoothDevice;
        this.B = i2;
        this.C = i3;
        this.D = i4;
        this.E = i5;
        this.F = i6;
        this.z = i7;
        this.G = i8;
        this.y = iVar;
        this.A = j2;
    }

    public /* synthetic */ j(Parcel parcel, a aVar) {
        this.x = (BluetoothDevice) BluetoothDevice.CREATOR.createFromParcel(parcel);
        if (parcel.readInt() == 1) {
            this.y = i.a(parcel.createByteArray());
        }
        this.z = parcel.readInt();
        this.A = parcel.readLong();
        this.B = parcel.readInt();
        this.C = parcel.readInt();
        this.D = parcel.readInt();
        this.E = parcel.readInt();
        this.F = parcel.readInt();
        this.G = parcel.readInt();
    }
}
