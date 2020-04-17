package e.c.a.a.b;

import android.os.Parcel;
import android.os.Parcelable;
import d.b.a.r;

public final class o implements Parcelable.Creator<c> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b = r.b(parcel);
        String str = null;
        int i2 = 0;
        long j2 = -1;
        while (parcel.dataPosition() < b) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                str = r.b(parcel, readInt);
            } else if (i3 == 2) {
                i2 = r.f(parcel, readInt);
            } else if (i3 != 3) {
                r.i(parcel, readInt);
            } else {
                j2 = r.g(parcel, readInt);
            }
        }
        r.c(parcel, b);
        return new c(str, i2, j2);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new c[i2];
    }
}
