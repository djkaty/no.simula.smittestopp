package d.m.a;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import d.m.a.y;
import java.util.ArrayList;

@SuppressLint({"BanParcelableUsage"})
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();
    public final int[] A;
    public final int B;
    public final String C;
    public final int D;
    public final int E;
    public final CharSequence F;
    public final int G;
    public final CharSequence H;
    public final ArrayList<String> I;
    public final ArrayList<String> J;
    public final boolean K;
    public final int[] x;
    public final ArrayList<String> y;
    public final int[] z;

    public static class a implements Parcelable.Creator<b> {
        public Object createFromParcel(Parcel parcel) {
            return new b(parcel);
        }

        public Object[] newArray(int i2) {
            return new b[i2];
        }
    }

    public b(a aVar) {
        int size = aVar.a.size();
        this.x = new int[(size * 5)];
        if (aVar.f692g) {
            this.y = new ArrayList<>(size);
            this.z = new int[size];
            this.A = new int[size];
            int i2 = 0;
            int i3 = 0;
            while (i2 < size) {
                y.a aVar2 = aVar.a.get(i2);
                int i4 = i3 + 1;
                this.x[i3] = aVar2.a;
                ArrayList<String> arrayList = this.y;
                Fragment fragment = aVar2.b;
                arrayList.add(fragment != null ? fragment.mWho : null);
                int[] iArr = this.x;
                int i5 = i4 + 1;
                iArr[i4] = aVar2.f698c;
                int i6 = i5 + 1;
                iArr[i5] = aVar2.f699d;
                int i7 = i6 + 1;
                iArr[i6] = aVar2.f700e;
                iArr[i7] = aVar2.f701f;
                this.z[i2] = aVar2.f702g.ordinal();
                this.A[i2] = aVar2.f703h.ordinal();
                i2++;
                i3 = i7 + 1;
            }
            this.B = aVar.f691f;
            this.C = aVar.f694i;
            this.D = aVar.t;
            this.E = aVar.f695j;
            this.F = aVar.f696k;
            this.G = aVar.f697l;
            this.H = aVar.m;
            this.I = aVar.n;
            this.J = aVar.o;
            this.K = aVar.p;
            return;
        }
        throw new IllegalStateException("Not on back stack");
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeIntArray(this.x);
        parcel.writeStringList(this.y);
        parcel.writeIntArray(this.z);
        parcel.writeIntArray(this.A);
        parcel.writeInt(this.B);
        parcel.writeString(this.C);
        parcel.writeInt(this.D);
        parcel.writeInt(this.E);
        TextUtils.writeToParcel(this.F, parcel, 0);
        parcel.writeInt(this.G);
        TextUtils.writeToParcel(this.H, parcel, 0);
        parcel.writeStringList(this.I);
        parcel.writeStringList(this.J);
        parcel.writeInt(this.K ? 1 : 0);
    }

    public b(Parcel parcel) {
        this.x = parcel.createIntArray();
        this.y = parcel.createStringArrayList();
        this.z = parcel.createIntArray();
        this.A = parcel.createIntArray();
        this.B = parcel.readInt();
        this.C = parcel.readString();
        this.D = parcel.readInt();
        this.E = parcel.readInt();
        this.F = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.G = parcel.readInt();
        this.H = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.I = parcel.createStringArrayList();
        this.J = parcel.createStringArrayList();
        this.K = parcel.readInt() != 0;
    }
}
