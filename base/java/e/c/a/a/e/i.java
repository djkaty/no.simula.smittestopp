package e.c.a.a.e;

import android.os.Parcel;
import android.os.Parcelable;
import d.b.a.r;

public final class i implements Parcelable.Creator<h> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b = r.b(parcel);
        long j2 = -1;
        long j3 = -1;
        int i2 = 1;
        int i3 = 1;
        while (parcel.dataPosition() < b) {
            int readInt = parcel.readInt();
            int i4 = 65535 & readInt;
            if (i4 == 1) {
                i2 = r.f(parcel, readInt);
            } else if (i4 == 2) {
                i3 = r.f(parcel, readInt);
            } else if (i4 == 3) {
                j2 = r.g(parcel, readInt);
            } else if (i4 != 4) {
                r.i(parcel, readInt);
            } else {
                j3 = r.g(parcel, readInt);
            }
        }
        r.c(parcel, b);
        return new h(i2, i3, j2, j3);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new h[i2];
    }
}
