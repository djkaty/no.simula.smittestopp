package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import d.b.a.r;
import e.c.a.a.b.i.l;
import e.c.a.a.b.j.s.a;

public final class Scope extends a implements ReflectedParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new l();
    public final int x;
    public final String y;

    public Scope(int i2, String str) {
        if (!TextUtils.isEmpty(str)) {
            this.x = i2;
            this.y = str;
            return;
        }
        throw new IllegalArgumentException("scopeUri must not be null or empty");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scope)) {
            return false;
        }
        return this.y.equals(((Scope) obj).y);
    }

    public final int hashCode() {
        return this.y.hashCode();
    }

    public final String toString() {
        return this.y;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a = r.a(parcel);
        r.a(parcel, 1, this.x);
        r.a(parcel, 2, this.y, false);
        r.k(parcel, a);
    }
}
