package e.c.a.a.d.c;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import e.c.a.a.b.j.s.a;
import e.c.a.a.e.r;
import e.c.a.a.e.u;
import e.c.a.a.e.v;

public final class s extends a {
    public static final Parcelable.Creator<s> CREATOR = new t();
    public PendingIntent A;
    public r B;
    public d C;
    public int x;
    public q y;
    public u z;

    public s(int i2, q qVar, IBinder iBinder, PendingIntent pendingIntent, IBinder iBinder2, IBinder iBinder3) {
        this.x = i2;
        this.y = qVar;
        d dVar = null;
        this.z = iBinder == null ? null : v.a(iBinder);
        this.A = pendingIntent;
        this.B = iBinder2 == null ? null : e.c.a.a.e.s.a(iBinder2);
        if (iBinder3 != null) {
            IInterface queryLocalInterface = iBinder3.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            dVar = queryLocalInterface instanceof d ? (d) queryLocalInterface : new f(iBinder3);
        }
        this.C = dVar;
    }

    public static s a(r rVar, d dVar) {
        return new s(2, (q) null, (IBinder) null, (PendingIntent) null, rVar.asBinder(), dVar != null ? dVar.asBinder() : null);
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a = d.b.a.r.a(parcel);
        d.b.a.r.a(parcel, 1, this.x);
        d.b.a.r.a(parcel, 2, (Parcelable) this.y, i2, false);
        u uVar = this.z;
        IBinder iBinder = null;
        d.b.a.r.a(parcel, 3, uVar == null ? null : uVar.asBinder(), false);
        d.b.a.r.a(parcel, 4, (Parcelable) this.A, i2, false);
        r rVar = this.B;
        d.b.a.r.a(parcel, 5, rVar == null ? null : rVar.asBinder(), false);
        d dVar = this.C;
        if (dVar != null) {
            iBinder = dVar.asBinder();
        }
        d.b.a.r.a(parcel, 6, iBinder, false);
        d.b.a.r.k(parcel, a);
    }
}
