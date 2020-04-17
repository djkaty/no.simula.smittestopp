package e.c.a.a.f.b;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import e.c.a.a.d.a.b;

public final class h implements g, IInterface {
    public final IBinder a;
    public final String b = "com.google.android.gms.signin.internal.ISignInService";

    public h(IBinder iBinder) {
        this.a = iBinder;
    }

    public final void a(i iVar, e eVar) {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.b);
        b.a(obtain, (Parcelable) iVar);
        if (eVar == null) {
            obtain.writeStrongBinder((IBinder) null);
        } else {
            obtain.writeStrongBinder(eVar.asBinder());
        }
        Parcel obtain2 = Parcel.obtain();
        try {
            this.a.transact(12, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    public IBinder asBinder() {
        return this.a;
    }
}
