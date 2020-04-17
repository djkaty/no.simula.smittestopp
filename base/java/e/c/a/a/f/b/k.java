package e.c.a.a.f.b;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import d.b.a.r;
import e.c.a.a.b.j.q;
import e.c.a.a.b.j.s.a;

public final class k extends a {
    public static final Parcelable.Creator<k> CREATOR = new l();
    public final int x;
    public final e.c.a.a.b.a y;
    public final q z;

    public k(int i2, e.c.a.a.b.a aVar, q qVar) {
        this.x = i2;
        this.y = aVar;
        this.z = qVar;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a = r.a(parcel);
        r.a(parcel, 1, this.x);
        r.a(parcel, 2, (Parcelable) this.y, i2, false);
        r.a(parcel, 3, (Parcelable) this.z, i2, false);
        r.k(parcel, a);
    }

    public k() {
        e.c.a.a.b.a aVar = new e.c.a.a.b.a(8, (PendingIntent) null);
        this.x = 1;
        this.y = aVar;
        this.z = null;
    }
}
