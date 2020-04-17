package e.c.a.a.d.c;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

public final class h extends a implements g {
    public h(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.internal.IGoogleLocationManagerService");
    }

    public final void a(s sVar) {
        Parcel c2 = c();
        u.a(c2, (Parcelable) sVar);
        a(59, c2);
    }

    public final void a(z zVar) {
        Parcel c2 = c();
        u.a(c2, (Parcelable) zVar);
        a(75, c2);
    }

    public final void a(boolean z) {
        Parcel c2 = c();
        u.a(c2, z);
        a(12, c2);
    }
}
