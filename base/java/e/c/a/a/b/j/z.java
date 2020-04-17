package e.c.a.a.b.j;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import d.b.a.r;
import e.c.a.a.b.c;
import e.c.a.a.b.j.s.a;

public final class z extends a {
    public static final Parcelable.Creator<z> CREATOR = new a0();
    public Bundle x;
    public c[] y;

    public z(Bundle bundle, c[] cVarArr) {
        this.x = bundle;
        this.y = cVarArr;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a = r.a(parcel);
        Bundle bundle = this.x;
        if (bundle != null) {
            int j2 = r.j(parcel, 1);
            parcel.writeBundle(bundle);
            r.k(parcel, j2);
        }
        r.a(parcel, 2, (T[]) this.y, i2, false);
        r.k(parcel, a);
    }

    public z() {
    }
}
