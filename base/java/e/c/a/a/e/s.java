package e.c.a.a.e;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;
import e.c.a.a.d.c.p;
import e.c.a.a.d.c.u;

public abstract class s extends p implements r {
    public s() {
        super("com.google.android.gms.location.ILocationCallback");
    }

    public static r a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationCallback");
        return queryLocalInterface instanceof r ? (r) queryLocalInterface : new t(iBinder);
    }

    public final boolean a(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            a((LocationResult) u.a(parcel, LocationResult.CREATOR));
        } else if (i2 != 2) {
            return false;
        } else {
            a((LocationAvailability) u.a(parcel, LocationAvailability.CREATOR));
        }
        return true;
    }
}
