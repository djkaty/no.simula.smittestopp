package e.c.a.a.f.b;

import android.os.Parcel;
import android.os.Parcelable;
import d.b.a.r;
import e.c.a.a.b.a;
import e.c.a.a.b.j.q;

public final class l implements Parcelable.Creator<k> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b = r.b(parcel);
        a aVar = null;
        q qVar = null;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i2 = r.f(parcel, readInt);
            } else if (i3 == 2) {
                aVar = (a) r.a(parcel, readInt, a.CREATOR);
            } else if (i3 != 3) {
                r.i(parcel, readInt);
            } else {
                qVar = (q) r.a(parcel, readInt, q.CREATOR);
            }
        }
        r.c(parcel, b);
        return new k(i2, aVar, qVar);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new k[i2];
    }
}
