package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.microsoft.appcenter.analytics.AuthenticationProvider;
import com.microsoft.identity.common.internal.platform.DevicePopManager;
import d.b.a.r;
import e.c.a.a.b.j.s.a;
import e.c.a.a.e.e;
import java.util.Arrays;

public final class LocationRequest extends a implements ReflectedParcelable {
    public static final Parcelable.Creator<LocationRequest> CREATOR = new e();
    public boolean A;
    public long B;
    public int C;
    public float D;
    public long E;
    public int x;
    public long y;
    public long z;

    public LocationRequest() {
        this.x = 102;
        this.y = 3600000;
        this.z = AuthenticationProvider.REFRESH_THRESHOLD;
        this.A = false;
        this.B = Long.MAX_VALUE;
        this.C = Integer.MAX_VALUE;
        this.D = 0.0f;
        this.E = 0;
    }

    public LocationRequest(int i2, long j2, long j3, boolean z2, long j4, int i3, float f2, long j5) {
        this.x = i2;
        this.y = j2;
        this.z = j3;
        this.A = z2;
        this.B = j4;
        this.C = i3;
        this.D = f2;
        this.E = j5;
    }

    public static void a(long j2) {
        if (j2 < 0) {
            StringBuilder sb = new StringBuilder(38);
            sb.append("invalid interval: ");
            sb.append(j2);
            throw new IllegalArgumentException(sb.toString());
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LocationRequest)) {
            return false;
        }
        LocationRequest locationRequest = (LocationRequest) obj;
        if (this.x == locationRequest.x) {
            long j2 = this.y;
            if (j2 == locationRequest.y && this.z == locationRequest.z && this.A == locationRequest.A && this.B == locationRequest.B && this.C == locationRequest.C && this.D == locationRequest.D) {
                long j3 = this.E;
                if (j3 >= j2) {
                    j2 = j3;
                }
                long j4 = locationRequest.E;
                long j5 = locationRequest.y;
                if (j4 < j5) {
                    j4 = j5;
                }
                if (j2 == j4) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.x), Long.valueOf(this.y), Float.valueOf(this.D), Long.valueOf(this.E)});
    }

    public final String toString() {
        StringBuilder a = e.a.a.a.a.a("Request[");
        int i2 = this.x;
        a.append(i2 != 100 ? i2 != 102 ? i2 != 104 ? i2 != 105 ? "???" : "PRIORITY_NO_POWER" : "PRIORITY_LOW_POWER" : "PRIORITY_BALANCED_POWER_ACCURACY" : "PRIORITY_HIGH_ACCURACY");
        if (this.x != 105) {
            a.append(" requested=");
            a.append(this.y);
            a.append("ms");
        }
        a.append(" fastest=");
        a.append(this.z);
        a.append("ms");
        if (this.E > this.y) {
            a.append(" maxWait=");
            a.append(this.E);
            a.append("ms");
        }
        if (this.D > 0.0f) {
            a.append(" smallestDisplacement=");
            a.append(this.D);
            a.append(DevicePopManager.SignedHttpRequestJwtClaims.HTTP_METHOD);
        }
        long j2 = this.B;
        if (j2 != Long.MAX_VALUE) {
            a.append(" expireIn=");
            a.append(j2 - SystemClock.elapsedRealtime());
            a.append("ms");
        }
        if (this.C != Integer.MAX_VALUE) {
            a.append(" num=");
            a.append(this.C);
        }
        a.append(']');
        return a.toString();
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a = r.a(parcel);
        r.a(parcel, 1, this.x);
        r.a(parcel, 2, this.y);
        r.a(parcel, 3, this.z);
        r.a(parcel, 4, this.A);
        r.a(parcel, 5, this.B);
        r.a(parcel, 6, this.C);
        float f2 = this.D;
        r.c(parcel, 7, 4);
        parcel.writeFloat(f2);
        r.a(parcel, 8, this.E);
        r.k(parcel, a);
    }
}
