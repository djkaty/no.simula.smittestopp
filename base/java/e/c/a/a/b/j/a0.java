package e.c.a.a.b.j;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import d.b.a.r;
import e.c.a.a.b.c;

public final class a0 implements Parcelable.Creator<z> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b = r.b(parcel);
        Bundle bundle = null;
        c[] cVarArr = null;
        while (parcel.dataPosition() < b) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                bundle = r.a(parcel, readInt);
            } else if (i2 != 2) {
                r.i(parcel, readInt);
            } else {
                cVarArr = (c[]) r.b(parcel, readInt, c.CREATOR);
            }
        }
        r.c(parcel, b);
        return new z(bundle, cVarArr);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new z[i2];
    }
}
