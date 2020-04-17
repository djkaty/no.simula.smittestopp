package e.c.a.a.e;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import d.b.a.r;
import e.c.a.a.b.j.s.a;
import java.util.Arrays;

public final class j extends a {
    public static final Parcelable.Creator<j> CREATOR = new k();
    public long A;
    public int B;
    public boolean x;
    public long y;
    public float z;

    public j() {
        this.x = true;
        this.y = 50;
        this.z = 0.0f;
        this.A = Long.MAX_VALUE;
        this.B = Integer.MAX_VALUE;
    }

    public j(boolean z2, long j2, float f2, long j3, int i2) {
        this.x = z2;
        this.y = j2;
        this.z = f2;
        this.A = j3;
        this.B = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return this.x == jVar.x && this.y == jVar.y && Float.compare(this.z, jVar.z) == 0 && this.A == jVar.A && this.B == jVar.B;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.x), Long.valueOf(this.y), Float.valueOf(this.z), Long.valueOf(this.A), Integer.valueOf(this.B)});
    }

    public final String toString() {
        StringBuilder a = e.a.a.a.a.a("DeviceOrientationRequest[mShouldUseMag=");
        a.append(this.x);
        a.append(" mMinimumSamplingPeriodMs=");
        a.append(this.y);
        a.append(" mSmallestAngleChangeRadians=");
        a.append(this.z);
        long j2 = this.A;
        if (j2 != Long.MAX_VALUE) {
            a.append(" expireIn=");
            a.append(j2 - SystemClock.elapsedRealtime());
            a.append("ms");
        }
        if (this.B != Integer.MAX_VALUE) {
            a.append(" num=");
            a.append(this.B);
        }
        a.append(']');
        return a.toString();
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a = r.a(parcel);
        r.a(parcel, 1, this.x);
        r.a(parcel, 2, this.y);
        float f2 = this.z;
        r.c(parcel, 3, 4);
        parcel.writeFloat(f2);
        r.a(parcel, 4, this.A);
        r.a(parcel, 5, this.B);
        r.k(parcel, a);
    }
}
