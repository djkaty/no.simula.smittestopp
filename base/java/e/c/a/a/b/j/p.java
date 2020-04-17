package e.c.a.a.b.j;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import d.b.a.r;
import e.c.a.a.b.j.s.a;

public class p extends a {
    public static final Parcelable.Creator<p> CREATOR = new x();
    public final GoogleSignInAccount A;
    public final int x;
    public final Account y;
    public final int z;

    public p(int i2, Account account, int i3, GoogleSignInAccount googleSignInAccount) {
        this.x = i2;
        this.y = account;
        this.z = i3;
        this.A = googleSignInAccount;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int a = r.a(parcel);
        r.a(parcel, 1, this.x);
        r.a(parcel, 2, (Parcelable) this.y, i2, false);
        r.a(parcel, 3, this.z);
        r.a(parcel, 4, (Parcelable) this.A, i2, false);
        r.k(parcel, a);
    }

    public p(Account account, int i2, GoogleSignInAccount googleSignInAccount) {
        this.x = 2;
        this.y = account;
        this.z = i2;
        this.A = googleSignInAccount;
    }
}
