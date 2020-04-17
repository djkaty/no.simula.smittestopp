package e.c.a.a.f.b;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import d.b.a.r;
import e.c.a.a.b.i.h;
import e.c.a.a.b.j.s.a;

public final class b extends a implements h {
    public static final Parcelable.Creator<b> CREATOR = new c();
    public final int x;
    public int y;
    public Intent z;

    public b() {
        this.x = 2;
        this.y = 0;
        this.z = null;
    }

    public final Status a() {
        if (this.y == 0) {
            return Status.B;
        }
        return Status.D;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a = r.a(parcel);
        r.a(parcel, 1, this.x);
        r.a(parcel, 2, this.y);
        r.a(parcel, 3, (Parcelable) this.z, i2, false);
        r.k(parcel, a);
    }

    public b(int i2, int i3, Intent intent) {
        this.x = i2;
        this.y = i3;
        this.z = intent;
    }
}
