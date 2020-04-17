package e.c.a.a.d.c;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

public final class f extends a implements d {
    public f(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.internal.IFusedLocationProviderCallback");
    }

    public final void a(b bVar) {
        Parcel c2 = c();
        u.a(c2, (Parcelable) bVar);
        b(1, c2);
    }
}
