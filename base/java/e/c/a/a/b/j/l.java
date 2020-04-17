package e.c.a.a.b.j;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.util.Log;
import d.b.a.r;
import e.c.a.a.b.j.b;
import e.c.a.a.d.b.b;
import e.c.a.a.d.b.c;

public interface l extends IInterface {

    public static abstract class a extends b implements l {
        public a() {
            super("com.google.android.gms.common.internal.IGmsCallbacks");
        }

        public final boolean a(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                ((b.i) this).a(parcel.readInt(), parcel.readStrongBinder(), (Bundle) c.a(parcel, Bundle.CREATOR));
            } else if (i2 == 2) {
                parcel.readInt();
                Bundle bundle = (Bundle) c.a(parcel, Bundle.CREATOR);
                Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
            } else if (i2 != 3) {
                return false;
            } else {
                int readInt = parcel.readInt();
                IBinder readStrongBinder = parcel.readStrongBinder();
                z zVar = (z) c.a(parcel, z.CREATOR);
                b.i iVar = (b.i) this;
                r.b(iVar.a, (Object) "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
                r.a(zVar);
                iVar.a.s = zVar;
                iVar.a(readInt, readStrongBinder, zVar.x);
            }
            parcel2.writeNoException();
            return true;
        }
    }
}
