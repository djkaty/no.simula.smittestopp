package e.c.a.a.d.c;

import android.os.Parcel;
import android.os.Parcelable;
import d.b.a.r;
import e.c.a.a.b.j.c;
import e.c.a.a.e.j;
import java.util.List;

public final class y implements Parcelable.Creator<x> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b = r.b(parcel);
        j jVar = x.B;
        List<c> list = x.A;
        String str = null;
        while (parcel.dataPosition() < b) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                jVar = (j) r.a(parcel, readInt, j.CREATOR);
            } else if (i2 == 2) {
                list = r.c(parcel, readInt, c.CREATOR);
            } else if (i2 != 3) {
                r.i(parcel, readInt);
            } else {
                str = r.b(parcel, readInt);
            }
        }
        r.c(parcel, b);
        return new x(jVar, list, str);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new x[i2];
    }
}
