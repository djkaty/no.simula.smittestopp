package e.c.a.a.b.j;

import android.os.Parcel;
import android.os.Parcelable;
import d.b.a.r;
import e.c.a.a.b.j.s.a;

public class c extends a {
    public static final Parcelable.Creator<c> CREATOR = new t();
    public final int x;
    public final String y;

    public c(int i2, String str) {
        this.x = i2;
        this.y = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof c)) {
            c cVar = (c) obj;
            return cVar.x == this.x && r.c((Object) cVar.y, (Object) this.y);
        }
    }

    public int hashCode() {
        return this.x;
    }

    public String toString() {
        int i2 = this.x;
        String str = this.y;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
        sb.append(i2);
        sb.append(":");
        sb.append(str);
        return sb.toString();
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int a = r.a(parcel);
        r.a(parcel, 1, this.x);
        r.a(parcel, 2, this.y, false);
        r.k(parcel, a);
    }
}
