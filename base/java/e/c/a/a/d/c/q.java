package e.c.a.a.d.c;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.LocationRequest;
import d.b.a.r;
import e.c.a.a.b.j.c;
import e.c.a.a.b.j.s.a;
import java.util.Collections;
import java.util.List;

public final class q extends a {
    public static final Parcelable.Creator<q> CREATOR = new r();
    public static final List<c> E = Collections.emptyList();
    public boolean A;
    public boolean B;
    public boolean C;
    public String D;
    public LocationRequest x;
    public List<c> y;
    public String z;

    public q(LocationRequest locationRequest, List<c> list, String str, boolean z2, boolean z3, boolean z4, String str2) {
        this.x = locationRequest;
        this.y = list;
        this.z = str;
        this.A = z2;
        this.B = z3;
        this.C = z4;
        this.D = str2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        return r.c((Object) this.x, (Object) qVar.x) && r.c((Object) this.y, (Object) qVar.y) && r.c((Object) this.z, (Object) qVar.z) && this.A == qVar.A && this.B == qVar.B && this.C == qVar.C && r.c((Object) this.D, (Object) qVar.D);
    }

    public final int hashCode() {
        return this.x.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.x);
        if (this.z != null) {
            sb.append(" tag=");
            sb.append(this.z);
        }
        if (this.D != null) {
            sb.append(" moduleId=");
            sb.append(this.D);
        }
        sb.append(" hideAppOps=");
        sb.append(this.A);
        sb.append(" clients=");
        sb.append(this.y);
        sb.append(" forceCoarseLocation=");
        sb.append(this.B);
        if (this.C) {
            sb.append(" exemptFromBackgroundThrottle");
        }
        return sb.toString();
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a = r.a(parcel);
        r.a(parcel, 1, (Parcelable) this.x, i2, false);
        r.a(parcel, 5, this.y, false);
        r.a(parcel, 6, this.z, false);
        r.a(parcel, 7, this.A);
        r.a(parcel, 8, this.B);
        r.a(parcel, 9, this.C);
        r.a(parcel, 10, this.D, false);
        r.k(parcel, a);
    }
}
