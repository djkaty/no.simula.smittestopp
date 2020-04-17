package e.c.a.a.e;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.LocationRequest;
import d.b.a.r;

public final class e implements Parcelable.Creator<LocationRequest> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int b = r.b(parcel);
        long j2 = 3600000;
        long j3 = 600000;
        long j4 = Long.MAX_VALUE;
        long j5 = 0;
        int i2 = 102;
        boolean z = false;
        int i3 = Integer.MAX_VALUE;
        float f2 = 0.0f;
        while (parcel.dataPosition() < b) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i2 = r.f(parcel2, readInt);
                    break;
                case 2:
                    j2 = r.g(parcel2, readInt);
                    break;
                case 3:
                    j3 = r.g(parcel2, readInt);
                    break;
                case 4:
                    z = r.d(parcel2, readInt);
                    break;
                case 5:
                    j4 = r.g(parcel2, readInt);
                    break;
                case 6:
                    i3 = r.f(parcel2, readInt);
                    break;
                case 7:
                    r.b(parcel2, readInt, 4);
                    f2 = parcel.readFloat();
                    break;
                case 8:
                    j5 = r.g(parcel2, readInt);
                    break;
                default:
                    r.i(parcel2, readInt);
                    break;
            }
        }
        r.c(parcel2, b);
        return new LocationRequest(i2, j2, j3, z, j4, i3, f2, j5);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new LocationRequest[i2];
    }
}
