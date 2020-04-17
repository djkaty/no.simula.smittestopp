package e.c.a.a.e;

import android.location.Location;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import e.c.a.a.d.c.a;
import e.c.a.a.d.c.u;

public final class w extends a implements u {
    public w(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.ILocationListener");
    }

    public final void a(Location location) {
        Parcel c2 = c();
        u.a(c2, (Parcelable) location);
        b(1, c2);
    }
}
