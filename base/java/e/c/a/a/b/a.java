package e.c.a.a.b;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.microsoft.azure.sdk.iot.deps.serializer.FileUploadStatusParser;
import d.b.a.r;
import e.c.a.a.b.j.o;
import java.util.Arrays;

public final class a extends e.c.a.a.b.j.s.a {
    public static final a B = new a(0);
    public static final Parcelable.Creator<a> CREATOR = new n();
    public final String A;
    public final int x;
    public final int y;
    public final PendingIntent z;

    public a(int i2) {
        this.x = 1;
        this.y = i2;
        this.z = null;
        this.A = null;
    }

    public static String a(int i2) {
        if (i2 == 99) {
            return "UNFINISHED";
        }
        if (i2 == 1500) {
            return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
        }
        switch (i2) {
            case -1:
                return "UNKNOWN";
            case 0:
                return "SUCCESS";
            case 1:
                return "SERVICE_MISSING";
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case 8:
                return "INTERNAL_ERROR";
            case 9:
                return "SERVICE_INVALID";
            case 10:
                return "DEVELOPER_ERROR";
            case 11:
                return "LICENSE_CHECK_FAILED";
            default:
                switch (i2) {
                    case 13:
                        return "CANCELED";
                    case 14:
                        return "TIMEOUT";
                    case 15:
                        return "INTERRUPTED";
                    case 16:
                        return "API_UNAVAILABLE";
                    case 17:
                        return "SIGN_IN_FAILED";
                    case 18:
                        return "SERVICE_UPDATING";
                    case 19:
                        return "SERVICE_MISSING_PERMISSION";
                    case 20:
                        return "RESTRICTED_PROFILE";
                    case 21:
                        return "API_VERSION_UPDATE_REQUIRED";
                    default:
                        StringBuilder sb = new StringBuilder(31);
                        sb.append("UNKNOWN_ERROR_CODE(");
                        sb.append(i2);
                        sb.append(")");
                        return sb.toString();
                }
        }
    }

    public final boolean b() {
        return this.y == 0;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.y == aVar.y && r.c((Object) this.z, (Object) aVar.z) && r.c((Object) this.A, (Object) aVar.A);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.y), this.z, this.A});
    }

    public final String toString() {
        o c2 = r.c((Object) this);
        c2.a(FileUploadStatusParser.STATUS_CODE_TAG, a(this.y));
        c2.a("resolution", this.z);
        c2.a("message", this.A);
        return c2.toString();
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a = r.a(parcel);
        r.a(parcel, 1, this.x);
        r.a(parcel, 2, this.y);
        r.a(parcel, 3, (Parcelable) this.z, i2, false);
        r.a(parcel, 4, this.A, false);
        r.k(parcel, a);
    }

    public a(int i2, int i3, PendingIntent pendingIntent, String str) {
        this.x = i2;
        this.y = i3;
        this.z = pendingIntent;
        this.A = str;
    }

    public a(int i2, PendingIntent pendingIntent) {
        this.x = 1;
        this.y = i2;
        this.z = pendingIntent;
        this.A = null;
    }
}
