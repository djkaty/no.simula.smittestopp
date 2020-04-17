package e.c.a.a.b.i;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import d.b.a.r;

public final class m implements Parcelable.Creator<Status> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b = r.b(parcel);
        int i2 = 0;
        String str = null;
        PendingIntent pendingIntent = null;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int readInt = parcel.readInt();
            int i4 = 65535 & readInt;
            if (i4 == 1) {
                i3 = r.f(parcel, readInt);
            } else if (i4 == 2) {
                str = r.b(parcel, readInt);
            } else if (i4 == 3) {
                pendingIntent = (PendingIntent) r.a(parcel, readInt, PendingIntent.CREATOR);
            } else if (i4 != 1000) {
                r.i(parcel, readInt);
            } else {
                i2 = r.f(parcel, readInt);
            }
        }
        r.c(parcel, b);
        return new Status(i2, i3, str, pendingIntent);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new Status[i2];
    }
}
