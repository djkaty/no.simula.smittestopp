package e.c.a.a.e;

import android.os.Parcel;
import android.os.Parcelable;
import d.b.a.r;

public final class k implements Parcelable.Creator<j> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int b = r.b(parcel);
        long j2 = 50;
        long j3 = Long.MAX_VALUE;
        boolean z = true;
        float f2 = 0.0f;
        int i2 = Integer.MAX_VALUE;
        while (parcel.dataPosition() < b) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                z = r.d(parcel2, readInt);
            } else if (i3 == 2) {
                j2 = r.g(parcel2, readInt);
            } else if (i3 == 3) {
                r.b(parcel2, readInt, 4);
                f2 = parcel.readFloat();
            } else if (i3 == 4) {
                j3 = r.g(parcel2, readInt);
            } else if (i3 != 5) {
                r.i(parcel2, readInt);
            } else {
                i2 = r.f(parcel2, readInt);
            }
        }
        r.c(parcel2, b);
        return new j(z, j2, f2, j3, i2);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new j[i2];
    }
}
