package e.c.a.a.b.j;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import d.b.a.r;

public final class x implements Parcelable.Creator<p> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b = r.b(parcel);
        int i2 = 0;
        Account account = null;
        GoogleSignInAccount googleSignInAccount = null;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int readInt = parcel.readInt();
            int i4 = 65535 & readInt;
            if (i4 == 1) {
                i2 = r.f(parcel, readInt);
            } else if (i4 == 2) {
                account = (Account) r.a(parcel, readInt, Account.CREATOR);
            } else if (i4 == 3) {
                i3 = r.f(parcel, readInt);
            } else if (i4 != 4) {
                r.i(parcel, readInt);
            } else {
                googleSignInAccount = (GoogleSignInAccount) r.a(parcel, readInt, GoogleSignInAccount.CREATOR);
            }
        }
        r.c(parcel, b);
        return new p(i2, account, i3, googleSignInAccount);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new p[i2];
    }
}
