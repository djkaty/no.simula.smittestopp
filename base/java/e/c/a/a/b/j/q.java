package e.c.a.a.b.j;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import d.b.a.r;
import e.c.a.a.b.j.k;
import e.c.a.a.b.j.s.a;

public class q extends a {
    public static final Parcelable.Creator<q> CREATOR = new y();
    public boolean A;
    public boolean B;
    public final int x;
    public IBinder y;
    public e.c.a.a.b.a z;

    public q(int i2, IBinder iBinder, e.c.a.a.b.a aVar, boolean z2, boolean z3) {
        this.x = i2;
        this.y = iBinder;
        this.z = aVar;
        this.A = z2;
        this.B = z3;
    }

    public k b() {
        return k.a.a(this.y);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        return this.z.equals(qVar.z) && b().equals(qVar.b());
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int a = r.a(parcel);
        r.a(parcel, 1, this.x);
        r.a(parcel, 2, this.y, false);
        r.a(parcel, 3, (Parcelable) this.z, i2, false);
        r.a(parcel, 4, this.A);
        r.a(parcel, 5, this.B);
        r.k(parcel, a);
    }
}
