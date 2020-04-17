package e.c.a.a.e;

import android.os.Parcel;
import android.os.Parcelable;
import d.b.a.r;
import e.c.a.a.b.j.s.a;
import java.util.Arrays;

public final class h extends a {
    public static final Parcelable.Creator<h> CREATOR = new i();
    public final long A;
    public final int x;
    public final int y;
    public final long z;

    public h(int i2, int i3, long j2, long j3) {
        this.x = i2;
        this.y = i3;
        this.z = j2;
        this.A = j3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && h.class == obj.getClass()) {
            h hVar = (h) obj;
            return this.x == hVar.x && this.y == hVar.y && this.z == hVar.z && this.A == hVar.A;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.y), Integer.valueOf(this.x), Long.valueOf(this.A), Long.valueOf(this.z)});
    }

    public final String toString() {
        return "NetworkLocationStatus:" + " Wifi status: " + this.x + " Cell status: " + this.y + " elapsed time NS: " + this.A + " system time ms: " + this.z;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a = r.a(parcel);
        r.a(parcel, 1, this.x);
        r.a(parcel, 2, this.y);
        r.a(parcel, 3, this.z);
        r.a(parcel, 4, this.A);
        r.k(parcel, a);
    }
}
