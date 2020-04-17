package e.c.a.b.n;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import d.f.h;

public class a extends d.k.a.a {
    public static final Parcelable.Creator<a> CREATOR = new C0072a();
    public final h<String, Bundle> z;

    /* renamed from: e.c.a.b.n.a$a  reason: collision with other inner class name */
    public static class C0072a implements Parcelable.ClassLoaderCreator<a> {
        public Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new a(parcel, classLoader, (C0072a) null);
        }

        public Object[] newArray(int i2) {
            return new a[i2];
        }

        public Object createFromParcel(Parcel parcel) {
            return new a(parcel, (ClassLoader) null, (C0072a) null);
        }
    }

    public a(Parcelable parcelable) {
        super(parcelable);
        this.z = new h<>();
    }

    public String toString() {
        StringBuilder a = e.a.a.a.a.a("ExtendableSavedState{");
        a.append(Integer.toHexString(System.identityHashCode(this)));
        a.append(" states=");
        a.append(this.z);
        a.append("}");
        return a.toString();
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.x, i2);
        int i3 = this.z.z;
        parcel.writeInt(i3);
        String[] strArr = new String[i3];
        Bundle[] bundleArr = new Bundle[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            strArr[i4] = this.z.c(i4);
            bundleArr[i4] = this.z.e(i4);
        }
        parcel.writeStringArray(strArr);
        parcel.writeTypedArray(bundleArr, 0);
    }

    public /* synthetic */ a(Parcel parcel, ClassLoader classLoader, C0072a aVar) {
        super(parcel, classLoader);
        int readInt = parcel.readInt();
        String[] strArr = new String[readInt];
        parcel.readStringArray(strArr);
        Bundle[] bundleArr = new Bundle[readInt];
        parcel.readTypedArray(bundleArr, Bundle.CREATOR);
        this.z = new h<>(readInt);
        for (int i2 = 0; i2 < readInt; i2++) {
            this.z.put(strArr[i2], bundleArr[i2]);
        }
    }
}
