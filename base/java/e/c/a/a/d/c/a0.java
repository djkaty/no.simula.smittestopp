package e.c.a.a.d.c;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import d.b.a.r;

public final class a0 implements Parcelable.Creator<z> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b = r.b(parcel);
        x xVar = null;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        int i2 = 1;
        while (parcel.dataPosition() < b) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i2 = r.f(parcel, readInt);
            } else if (i3 == 2) {
                xVar = (x) r.a(parcel, readInt, x.CREATOR);
            } else if (i3 == 3) {
                iBinder = r.e(parcel, readInt);
            } else if (i3 != 4) {
                r.i(parcel, readInt);
            } else {
                iBinder2 = r.e(parcel, readInt);
            }
        }
        r.c(parcel, b);
        return new z(i2, xVar, iBinder, iBinder2);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new z[i2];
    }
}
