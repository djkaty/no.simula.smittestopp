package d.s;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.UUID;

@SuppressLint({"BanParcelableUsage"})
public final class f implements Parcelable {
    public static final Parcelable.Creator<f> CREATOR = new a();
    public final Bundle A;
    public final UUID x;
    public final int y;
    public final Bundle z;

    public static class a implements Parcelable.Creator<f> {
        public Object createFromParcel(Parcel parcel) {
            return new f(parcel);
        }

        public Object[] newArray(int i2) {
            return new f[i2];
        }
    }

    public f(e eVar) {
        this.x = eVar.B;
        this.y = eVar.x.z;
        this.z = eVar.y;
        Bundle bundle = new Bundle();
        this.A = bundle;
        eVar.A.b(bundle);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.x.toString());
        parcel.writeInt(this.y);
        parcel.writeBundle(this.z);
        parcel.writeBundle(this.A);
    }

    public f(Parcel parcel) {
        this.x = UUID.fromString(parcel.readString());
        this.y = parcel.readInt();
        this.z = parcel.readBundle(f.class.getClassLoader());
        this.A = parcel.readBundle(f.class.getClassLoader());
    }
}
