package e.c.a.a.e;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public class p extends e.c.a.a.d.c.p implements o {
    public static o a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.IDeviceOrientationListener");
        return queryLocalInterface instanceof o ? (o) queryLocalInterface : new q(iBinder);
    }

    public final boolean a(int i2, Parcel parcel, Parcel parcel2, int i3) {
        throw new NoSuchMethodError();
    }
}
