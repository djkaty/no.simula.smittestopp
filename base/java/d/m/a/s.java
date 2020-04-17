package d.m.a;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

@SuppressLint({"BanParcelableUsage"})
public final class s implements Parcelable {
    public static final Parcelable.Creator<s> CREATOR = new a();
    public int A;
    public String B = null;
    public ArrayList<u> x;
    public ArrayList<String> y;
    public b[] z;

    public static class a implements Parcelable.Creator<s> {
        public Object createFromParcel(Parcel parcel) {
            return new s(parcel);
        }

        public Object[] newArray(int i2) {
            return new s[i2];
        }
    }

    public s() {
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeTypedList(this.x);
        parcel.writeStringList(this.y);
        parcel.writeTypedArray(this.z, i2);
        parcel.writeInt(this.A);
        parcel.writeString(this.B);
    }

    public s(Parcel parcel) {
        this.x = parcel.createTypedArrayList(u.CREATOR);
        this.y = parcel.createStringArrayList();
        this.z = (b[]) parcel.createTypedArray(b.CREATOR);
        this.A = parcel.readInt();
        this.B = parcel.readString();
    }
}
