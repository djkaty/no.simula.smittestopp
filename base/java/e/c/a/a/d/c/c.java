package e.c.a.a.d.c;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import d.b.a.r;

public final class c implements Parcelable.Creator<b> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b = r.b(parcel);
        Status status = null;
        while (parcel.dataPosition() < b) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 1) {
                r.i(parcel, readInt);
            } else {
                status = (Status) r.a(parcel, readInt, Status.CREATOR);
            }
        }
        r.c(parcel, b);
        return new b(status);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new b[i2];
    }
}
