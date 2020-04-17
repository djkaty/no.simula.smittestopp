package e.c.a.a.f.b;

import android.os.Parcel;
import android.os.Parcelable;
import d.b.a.r;
import e.c.a.a.b.j.p;
import e.c.a.a.b.j.s.a;

public final class i extends a {
    public static final Parcelable.Creator<i> CREATOR = new j();
    public final int x;
    public final p y;

    public i(int i2, p pVar) {
        this.x = i2;
        this.y = pVar;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a = r.a(parcel);
        r.a(parcel, 1, this.x);
        r.a(parcel, 2, (Parcelable) this.y, i2, false);
        r.k(parcel, a);
    }

    public i(p pVar) {
        this.x = 1;
        this.y = pVar;
    }
}
