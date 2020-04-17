package e.c.a.a.f.b;

import android.os.Parcel;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
import e.c.a.a.d.a.a;
import e.c.a.a.d.a.b;

public abstract class f extends a implements e {
    public f() {
        super("com.google.android.gms.signin.internal.ISignInCallbacks");
    }

    public boolean a(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 3) {
            e.c.a.a.b.a aVar = (e.c.a.a.b.a) b.a(parcel, e.c.a.a.b.a.CREATOR);
            b bVar = (b) b.a(parcel, b.CREATOR);
        } else if (i2 == 4) {
            Status status = (Status) b.a(parcel, Status.CREATOR);
        } else if (i2 == 6) {
            Status status2 = (Status) b.a(parcel, Status.CREATOR);
        } else if (i2 == 7) {
            Status status3 = (Status) b.a(parcel, Status.CREATOR);
            GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) b.a(parcel, GoogleSignInAccount.CREATOR);
        } else if (i2 != 8) {
            return false;
        } else {
            a((k) b.a(parcel, k.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
