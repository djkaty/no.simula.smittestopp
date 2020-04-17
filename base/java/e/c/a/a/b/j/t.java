package e.c.a.a.b.j;

import android.os.Parcel;
import android.os.Parcelable;
import d.b.a.r;

public final class t implements Parcelable.Creator<c> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b = r.b(parcel);
        int i2 = 0;
        String str = null;
        while (parcel.dataPosition() < b) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i2 = r.f(parcel, readInt);
            } else if (i3 != 2) {
                r.i(parcel, readInt);
            } else {
                str = r.b(parcel, readInt);
            }
        }
        r.c(parcel, b);
        return new c(i2, str);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new c[i2];
    }
}
