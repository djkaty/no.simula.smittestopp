package e.c.a.a.b;

import android.os.Parcel;
import android.os.Parcelable;
import d.b.a.r;
import e.c.a.a.b.j.o;
import e.c.a.a.b.j.s.a;
import java.util.Arrays;

public class c extends a {
    public static final Parcelable.Creator<c> CREATOR = new o();
    public final String x;
    @Deprecated
    public final int y;
    public final long z;

    public c(String str, int i2, long j2) {
        this.x = str;
        this.y = i2;
        this.z = j2;
    }

    public long b() {
        long j2 = this.z;
        return j2 == -1 ? (long) this.y : j2;
    }

    public boolean equals(Object obj) {
        if (obj instanceof c) {
            c cVar = (c) obj;
            String str = this.x;
            if (((str == null || !str.equals(cVar.x)) && (this.x != null || cVar.x != null)) || b() != cVar.b()) {
                return false;
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.x, Long.valueOf(b())});
    }

    public String toString() {
        o c2 = r.c((Object) this);
        c2.a("name", this.x);
        c2.a("version", Long.valueOf(b()));
        return c2.toString();
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int a = r.a(parcel);
        r.a(parcel, 1, this.x, false);
        r.a(parcel, 2, this.y);
        r.a(parcel, 3, b());
        r.k(parcel, a);
    }
}
