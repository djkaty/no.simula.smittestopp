package e.c.a.a.e;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;
import e.c.a.a.d.c.a;
import e.c.a.a.d.c.u;

public final class t extends a implements r {
    public t(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.ILocationCallback");
    }

    public final void a(LocationAvailability locationAvailability) {
        Parcel c2 = c();
        u.a(c2, (Parcelable) locationAvailability);
        b(2, c2);
    }

    public final void a(LocationResult locationResult) {
        Parcel c2 = c();
        u.a(c2, (Parcelable) locationResult);
        b(1, c2);
    }
}
