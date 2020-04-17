package e.c.a.a.e;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.LocationResult;
import d.b.a.r;
import java.util.List;

public final class f implements Parcelable.Creator<LocationResult> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b = r.b(parcel);
        List<Location> list = LocationResult.y;
        while (parcel.dataPosition() < b) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 1) {
                r.i(parcel, readInt);
            } else {
                list = r.c(parcel, readInt, Location.CREATOR);
            }
        }
        r.c(parcel, b);
        return new LocationResult(list);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new LocationResult[i2];
    }
}
