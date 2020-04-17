package e.c.a.a.d.c;

import android.os.Parcel;
import android.os.Parcelable;
import d.b.a.r;
import e.c.a.a.b.j.c;
import e.c.a.a.b.j.s.a;
import e.c.a.a.e.j;
import java.util.Collections;
import java.util.List;

public final class x extends a {
    public static final List<c> A = Collections.emptyList();
    public static final j B = new j();
    public static final Parcelable.Creator<x> CREATOR = new y();
    public j x;
    public List<c> y;
    public String z;

    public x(j jVar, List<c> list, String str) {
        this.x = jVar;
        this.y = list;
        this.z = str;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        return r.c((Object) this.x, (Object) xVar.x) && r.c((Object) this.y, (Object) xVar.y) && r.c((Object) this.z, (Object) xVar.z);
    }

    public final int hashCode() {
        return this.x.hashCode();
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a = r.a(parcel);
        r.a(parcel, 1, (Parcelable) this.x, i2, false);
        r.a(parcel, 2, this.y, false);
        r.a(parcel, 3, this.z, false);
        r.k(parcel, a);
    }
}
