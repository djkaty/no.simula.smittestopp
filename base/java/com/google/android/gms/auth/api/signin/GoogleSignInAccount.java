package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import d.b.a.r;
import e.c.a.a.a.a.a.b;
import e.c.a.a.b.j.s.a;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public class GoogleSignInAccount extends a implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new b();
    public static e.c.a.a.b.l.a K = e.c.a.a.b.l.b.a;
    public String A;
    public String B;
    public Uri C;
    public String D;
    public long E;
    public String F;
    public List<Scope> G;
    public String H;
    public String I;
    public Set<Scope> J = new HashSet();
    public final int x;
    public String y;
    public String z;

    public GoogleSignInAccount(int i2, String str, String str2, String str3, String str4, Uri uri, String str5, long j2, String str6, List<Scope> list, String str7, String str8) {
        this.x = i2;
        this.y = str;
        this.z = str2;
        this.A = str3;
        this.B = str4;
        this.C = uri;
        this.D = str5;
        this.E = j2;
        this.F = str6;
        this.G = list;
        this.H = str7;
        this.I = str8;
    }

    public static GoogleSignInAccount a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String optString = jSONObject.optString("photoUrl", (String) null);
        Uri parse = !TextUtils.isEmpty(optString) ? Uri.parse(optString) : null;
        long parseLong = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            hashSet.add(new Scope(1, jSONArray.getString(i2)));
        }
        String optString2 = jSONObject.optString("id");
        String optString3 = jSONObject.optString("tokenId", (String) null);
        String optString4 = jSONObject.optString("email", (String) null);
        String optString5 = jSONObject.optString("displayName", (String) null);
        String optString6 = jSONObject.optString("givenName", (String) null);
        String optString7 = jSONObject.optString("familyName", (String) null);
        Long valueOf = Long.valueOf(parseLong);
        String string = jSONObject.getString("obfuscatedIdentifier");
        if (valueOf == null) {
            if (((e.c.a.a.b.l.b) K) != null) {
                valueOf = Long.valueOf(System.currentTimeMillis() / 1000);
            } else {
                throw null;
            }
        }
        long longValue = valueOf.longValue();
        r.a(string);
        r.a(hashSet);
        GoogleSignInAccount googleSignInAccount = r3;
        GoogleSignInAccount googleSignInAccount2 = new GoogleSignInAccount(3, optString2, optString3, optString4, optString5, parse, (String) null, longValue, string, new ArrayList(hashSet), optString6, optString7);
        GoogleSignInAccount googleSignInAccount3 = googleSignInAccount;
        googleSignInAccount3.D = jSONObject.optString("serverAuthCode", (String) null);
        return googleSignInAccount3;
    }

    public Set<Scope> b() {
        HashSet hashSet = new HashSet(this.G);
        hashSet.addAll(this.J);
        return hashSet;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        if (googleSignInAccount.F.equals(this.F)) {
            if (((AbstractSet) googleSignInAccount.b()).equals(b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((AbstractSet) b()).hashCode() + ((this.F.hashCode() + 527) * 31);
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int a = r.a(parcel);
        r.a(parcel, 1, this.x);
        r.a(parcel, 2, this.y, false);
        r.a(parcel, 3, this.z, false);
        r.a(parcel, 4, this.A, false);
        r.a(parcel, 5, this.B, false);
        r.a(parcel, 6, (Parcelable) this.C, i2, false);
        r.a(parcel, 7, this.D, false);
        r.a(parcel, 8, this.E);
        r.a(parcel, 9, this.F, false);
        r.a(parcel, 10, this.G, false);
        r.a(parcel, 11, this.H, false);
        r.a(parcel, 12, this.I, false);
        r.k(parcel, a);
    }
}
