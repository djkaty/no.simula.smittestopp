package e.c.a.a.e;

import android.location.Location;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import e.c.a.a.d.c.p;
import e.c.a.a.d.c.u;

public abstract class v extends p implements u {
    public static u a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationListener");
        return queryLocalInterface instanceof u ? (u) queryLocalInterface : new w(iBinder);
    }

    public final boolean a(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 != 1) {
            return false;
        }
        a((Location) u.a(parcel, Location.CREATOR));
        return true;
    }
}
