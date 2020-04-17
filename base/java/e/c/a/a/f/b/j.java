package e.c.a.a.f.b;

import android.os.Parcel;
import android.os.Parcelable;
import d.b.a.r;
import e.c.a.a.b.j.p;

public final class j implements Parcelable.Creator<i> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b = r.b(parcel);
        int i2 = 0;
        p pVar = null;
        while (parcel.dataPosition() < b) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i2 = r.f(parcel, readInt);
            } else if (i3 != 2) {
                r.i(parcel, readInt);
            } else {
                pVar = (p) r.a(parcel, readInt, p.CREATOR);
            }
        }
        r.c(parcel, b);
        return new i(i2, pVar);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new i[i2];
    }
}
