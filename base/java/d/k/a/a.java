package d.k.a;

import android.os.Parcel;
import android.os.Parcelable;

public abstract class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new b();
    public static final a y = new C0031a();
    public final Parcelable x;

    /* renamed from: d.k.a.a$a  reason: collision with other inner class name */
    public static class C0031a extends a {
        public C0031a() {
            super((C0031a) null);
        }
    }

    public /* synthetic */ a(C0031a aVar) {
        this.x = null;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.x, i2);
    }

    public static class b implements Parcelable.ClassLoaderCreator<a> {
        public Object createFromParcel(Parcel parcel) {
            if (parcel.readParcelable((ClassLoader) null) == null) {
                return a.y;
            }
            throw new IllegalStateException("superState must be null");
        }

        public Object[] newArray(int i2) {
            return new a[i2];
        }

        public Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
            if (parcel.readParcelable(classLoader) == null) {
                return a.y;
            }
            throw new IllegalStateException("superState must be null");
        }
    }

    public a(Parcelable parcelable) {
        if (parcelable != null) {
            this.x = parcelable == y ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    public a(Parcel parcel, ClassLoader classLoader) {
        Parcelable readParcelable = parcel.readParcelable(classLoader);
        this.x = readParcelable == null ? y : readParcelable;
    }
}
