package e.c.a.a.d.c;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import d.b.a.r;
import e.c.a.a.b.j.s.a;
import e.c.a.a.e.o;
import e.c.a.a.e.p;

public final class z extends a {
    public static final Parcelable.Creator<z> CREATOR = new a0();
    public d A;
    public int x;
    public x y;
    public o z;

    public z(int i2, x xVar, IBinder iBinder, IBinder iBinder2) {
        this.x = i2;
        this.y = xVar;
        d dVar = null;
        this.z = iBinder == null ? null : p.a(iBinder);
        if (iBinder2 != null) {
            IInterface queryLocalInterface = iBinder2.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            dVar = queryLocalInterface instanceof d ? (d) queryLocalInterface : new f(iBinder2);
        }
        this.A = dVar;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a = r.a(parcel);
        r.a(parcel, 1, this.x);
        r.a(parcel, 2, (Parcelable) this.y, i2, false);
        o oVar = this.z;
        IBinder iBinder = null;
        r.a(parcel, 3, oVar == null ? null : oVar.asBinder(), false);
        d dVar = this.A;
        if (dVar != null) {
            iBinder = dVar.asBinder();
        }
        r.a(parcel, 4, iBinder, false);
        r.k(parcel, a);
    }
}
