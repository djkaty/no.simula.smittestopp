package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.microsoft.azure.sdk.iot.deps.serializer.FileUploadStatusParser;
import d.b.a.r;
import e.c.a.a.b.i.h;
import e.c.a.a.b.i.m;
import e.c.a.a.b.j.o;
import e.c.a.a.b.j.s.a;
import java.util.Arrays;

public final class Status extends a implements h, ReflectedParcelable {
    public static final Status B = new Status(0, (String) null);
    public static final Status C = new Status(15, (String) null);
    public static final Parcelable.Creator<Status> CREATOR = new m();
    public static final Status D = new Status(16, (String) null);
    public final PendingIntent A;
    public final int x;
    public final int y;
    public final String z;

    static {
        new Status(14, (String) null);
        new Status(8, (String) null);
        new Status(17, (String) null);
        new Status(18, (String) null);
    }

    public Status(int i2, int i3, String str, PendingIntent pendingIntent) {
        this.x = i2;
        this.y = i3;
        this.z = str;
        this.A = pendingIntent;
    }

    public final Status a() {
        return this;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        if (this.x != status.x || this.y != status.y || !r.c((Object) this.z, (Object) status.z) || !r.c((Object) this.A, (Object) status.A)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.x), Integer.valueOf(this.y), this.z, this.A});
    }

    public final String toString() {
        o c2 = r.c((Object) this);
        String str = this.z;
        if (str == null) {
            int i2 = this.y;
            switch (i2) {
                case -1:
                    str = "SUCCESS_CACHE";
                    break;
                case 0:
                    str = "SUCCESS";
                    break;
                case 2:
                    str = "SERVICE_VERSION_UPDATE_REQUIRED";
                    break;
                case 3:
                    str = "SERVICE_DISABLED";
                    break;
                case 4:
                    str = "SIGN_IN_REQUIRED";
                    break;
                case 5:
                    str = "INVALID_ACCOUNT";
                    break;
                case 6:
                    str = "RESOLUTION_REQUIRED";
                    break;
                case 7:
                    str = "NETWORK_ERROR";
                    break;
                case 8:
                    str = "INTERNAL_ERROR";
                    break;
                case 10:
                    str = "DEVELOPER_ERROR";
                    break;
                case 13:
                    str = "ERROR";
                    break;
                case 14:
                    str = "INTERRUPTED";
                    break;
                case 15:
                    str = "TIMEOUT";
                    break;
                case 16:
                    str = "CANCELED";
                    break;
                case 17:
                    str = "API_NOT_CONNECTED";
                    break;
                case 18:
                    str = "DEAD_CLIENT";
                    break;
                default:
                    StringBuilder sb = new StringBuilder(32);
                    sb.append("unknown status code: ");
                    sb.append(i2);
                    str = sb.toString();
                    break;
            }
        }
        c2.a(FileUploadStatusParser.STATUS_CODE_TAG, str);
        c2.a("resolution", this.A);
        return c2.toString();
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a = r.a(parcel);
        r.a(parcel, 1, this.y);
        r.a(parcel, 2, this.z, false);
        r.a(parcel, 3, (Parcelable) this.A, i2, false);
        r.a(parcel, 1000, this.x);
        r.k(parcel, a);
    }

    public Status(int i2, String str) {
        this.x = 1;
        this.y = i2;
        this.z = str;
        this.A = null;
    }
}
