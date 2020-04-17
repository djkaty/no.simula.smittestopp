package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import d.b.a.r;
import e.c.a.a.b.j.s.a;
import e.c.a.a.e.d;
import e.c.a.a.e.h;
import java.util.Arrays;

public final class LocationAvailability extends a implements ReflectedParcelable {
    public static final Parcelable.Creator<LocationAvailability> CREATOR = new d();
    public int A;
    public h[] B;
    @Deprecated
    public int x;
    @Deprecated
    public int y;
    public long z;

    public LocationAvailability(int i2, int i3, int i4, long j2, h[] hVarArr) {
        this.A = i2;
        this.x = i3;
        this.y = i4;
        this.z = j2;
        this.B = hVarArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && LocationAvailability.class == obj.getClass()) {
            LocationAvailability locationAvailability = (LocationAvailability) obj;
            return this.x == locationAvailability.x && this.y == locationAvailability.y && this.z == locationAvailability.z && this.A == locationAvailability.A && Arrays.equals(this.B, locationAvailability.B);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.A), Integer.valueOf(this.x), Integer.valueOf(this.y), Long.valueOf(this.z), this.B});
    }

    public final String toString() {
        boolean z2 = this.A < 1000;
        StringBuilder sb = new StringBuilder(48);
        sb.append("LocationAvailability[isLocationAvailable: ");
        sb.append(z2);
        sb.append("]");
        return sb.toString();
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a = r.a(parcel);
        r.a(parcel, 1, this.x);
        r.a(parcel, 2, this.y);
        r.a(parcel, 3, this.z);
        r.a(parcel, 4, this.A);
        r.a(parcel, 5, (T[]) this.B, i2, false);
        r.k(parcel, a);
    }
}
