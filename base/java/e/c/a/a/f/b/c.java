package e.c.a.a.f.b;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import d.b.a.r;

public final class c implements Parcelable.Creator<b> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b = r.b(parcel);
        int i2 = 0;
        Intent intent = null;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int readInt = parcel.readInt();
            int i4 = 65535 & readInt;
            if (i4 == 1) {
                i2 = r.f(parcel, readInt);
            } else if (i4 == 2) {
                i3 = r.f(parcel, readInt);
            } else if (i4 != 3) {
                r.i(parcel, readInt);
            } else {
                intent = (Intent) r.a(parcel, readInt, Intent.CREATOR);
            }
        }
        r.c(parcel, b);
        return new b(i2, i3, intent);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new b[i2];
    }
}
