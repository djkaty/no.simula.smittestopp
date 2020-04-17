package d.m.a;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.Fragment;

@SuppressLint({"BanParcelableUsage"})
public final class u implements Parcelable {
    public static final Parcelable.Creator<u> CREATOR = new a();
    public final int A;
    public final int B;
    public final String C;
    public final boolean D;
    public final boolean E;
    public final boolean F;
    public final Bundle G;
    public final boolean H;
    public final int I;
    public Bundle J;
    public final String x;
    public final String y;
    public final boolean z;

    public static class a implements Parcelable.Creator<u> {
        public Object createFromParcel(Parcel parcel) {
            return new u(parcel);
        }

        public Object[] newArray(int i2) {
            return new u[i2];
        }
    }

    public u(Fragment fragment) {
        this.x = fragment.getClass().getName();
        this.y = fragment.mWho;
        this.z = fragment.mFromLayout;
        this.A = fragment.mFragmentId;
        this.B = fragment.mContainerId;
        this.C = fragment.mTag;
        this.D = fragment.mRetainInstance;
        this.E = fragment.mRemoving;
        this.F = fragment.mDetached;
        this.G = fragment.mArguments;
        this.H = fragment.mHidden;
        this.I = fragment.mMaxState.ordinal();
    }

    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.x);
        sb.append(" (");
        sb.append(this.y);
        sb.append(")}:");
        if (this.z) {
            sb.append(" fromLayout");
        }
        if (this.B != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.B));
        }
        String str = this.C;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(this.C);
        }
        if (this.D) {
            sb.append(" retainInstance");
        }
        if (this.E) {
            sb.append(" removing");
        }
        if (this.F) {
            sb.append(" detached");
        }
        if (this.H) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.x);
        parcel.writeString(this.y);
        parcel.writeInt(this.z ? 1 : 0);
        parcel.writeInt(this.A);
        parcel.writeInt(this.B);
        parcel.writeString(this.C);
        parcel.writeInt(this.D ? 1 : 0);
        parcel.writeInt(this.E ? 1 : 0);
        parcel.writeInt(this.F ? 1 : 0);
        parcel.writeBundle(this.G);
        parcel.writeInt(this.H ? 1 : 0);
        parcel.writeBundle(this.J);
        parcel.writeInt(this.I);
    }

    public u(Parcel parcel) {
        this.x = parcel.readString();
        this.y = parcel.readString();
        boolean z2 = true;
        this.z = parcel.readInt() != 0;
        this.A = parcel.readInt();
        this.B = parcel.readInt();
        this.C = parcel.readString();
        this.D = parcel.readInt() != 0;
        this.E = parcel.readInt() != 0;
        this.F = parcel.readInt() != 0;
        this.G = parcel.readBundle();
        this.H = parcel.readInt() == 0 ? false : z2;
        this.J = parcel.readBundle();
        this.I = parcel.readInt();
    }
}
