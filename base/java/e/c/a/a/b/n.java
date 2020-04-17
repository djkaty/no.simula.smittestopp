package e.c.a.a.b;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import d.b.a.r;

public final class n implements Parcelable.Creator<a> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b = r.b(parcel);
        int i2 = 0;
        PendingIntent pendingIntent = null;
        String str = null;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int readInt = parcel.readInt();
            int i4 = 65535 & readInt;
            if (i4 == 1) {
                i2 = r.f(parcel, readInt);
            } else if (i4 == 2) {
                i3 = r.f(parcel, readInt);
            } else if (i4 == 3) {
                pendingIntent = (PendingIntent) r.a(parcel, readInt, PendingIntent.CREATOR);
            } else if (i4 != 4) {
                r.i(parcel, readInt);
            } else {
                str = r.b(parcel, readInt);
            }
        }
        r.c(parcel, b);
        return new a(i2, i3, pendingIntent, str);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new a[i2];
    }
}
