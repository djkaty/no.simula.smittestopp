package e.c.a.a.b.j;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import d.b.a.r;
import e.c.a.a.b.c;
import e.c.a.a.b.e;
import e.c.a.a.b.j.k;
import e.c.a.a.b.j.s.a;

public class g extends a {
    public static final Parcelable.Creator<g> CREATOR = new b0();
    public String A;
    public IBinder B;
    public Scope[] C;
    public Bundle D;
    public Account E;
    public c[] F;
    public c[] G;
    public boolean H;
    public final int x;
    public final int y;
    public int z;

    public g(int i2) {
        this.x = 4;
        this.z = e.a;
        this.y = i2;
        this.H = true;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int a = r.a(parcel);
        r.a(parcel, 1, this.x);
        r.a(parcel, 2, this.y);
        r.a(parcel, 3, this.z);
        r.a(parcel, 4, this.A, false);
        r.a(parcel, 5, this.B, false);
        r.a(parcel, 6, (T[]) this.C, i2, false);
        Bundle bundle = this.D;
        if (bundle != null) {
            int j2 = r.j(parcel, 7);
            parcel.writeBundle(bundle);
            r.k(parcel, j2);
        }
        r.a(parcel, 8, (Parcelable) this.E, i2, false);
        r.a(parcel, 10, (T[]) this.F, i2, false);
        r.a(parcel, 11, (T[]) this.G, i2, false);
        r.a(parcel, 12, this.H);
        r.k(parcel, a);
    }

    public g(int i2, int i3, int i4, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, c[] cVarArr, c[] cVarArr2, boolean z2) {
        this.x = i2;
        this.y = i3;
        this.z = i4;
        if ("com.google.android.gms".equals(str)) {
            this.A = "com.google.android.gms";
        } else {
            this.A = str;
        }
        if (i2 < 2) {
            this.E = iBinder != null ? a.a(k.a.a(iBinder)) : null;
        } else {
            this.B = iBinder;
            this.E = account;
        }
        this.C = scopeArr;
        this.D = bundle;
        this.F = cVarArr;
        this.G = cVarArr2;
        this.H = z2;
    }
}
