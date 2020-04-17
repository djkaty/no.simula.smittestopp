package e.c.a.a.d.c;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import d.b.a.r;
import e.c.a.a.b.i.h;
import e.c.a.a.b.j.s.a;

public final class b extends a implements h {
    public static final Parcelable.Creator<b> CREATOR = new c();
    public final Status x;

    static {
        new b(Status.B);
    }

    public b(Status status) {
        this.x = status;
    }

    public final Status a() {
        return this.x;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a = r.a(parcel);
        r.a(parcel, 1, (Parcelable) this.x, i2, false);
        r.k(parcel, a);
    }
}
