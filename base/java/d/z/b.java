package d.z;

import android.os.Parcel;
import android.util.SparseIntArray;
import d.f.a;
import java.lang.reflect.Method;

public class b extends a {

    /* renamed from: d  reason: collision with root package name */
    public final SparseIntArray f1040d;

    /* renamed from: e  reason: collision with root package name */
    public final Parcel f1041e;

    /* renamed from: f  reason: collision with root package name */
    public final int f1042f;

    /* renamed from: g  reason: collision with root package name */
    public final int f1043g;

    /* renamed from: h  reason: collision with root package name */
    public final String f1044h;

    /* renamed from: i  reason: collision with root package name */
    public int f1045i;

    /* renamed from: j  reason: collision with root package name */
    public int f1046j;

    /* renamed from: k  reason: collision with root package name */
    public int f1047k;

    public b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new a(), new a(), new a());
    }

    public boolean a(int i2) {
        while (this.f1046j < this.f1043g) {
            int i3 = this.f1047k;
            if (i3 == i2) {
                return true;
            }
            if (String.valueOf(i3).compareTo(String.valueOf(i2)) > 0) {
                return false;
            }
            this.f1041e.setDataPosition(this.f1046j);
            int readInt = this.f1041e.readInt();
            this.f1047k = this.f1041e.readInt();
            this.f1046j += readInt;
        }
        if (this.f1047k == i2) {
            return true;
        }
        return false;
    }

    public void b(int i2) {
        a();
        this.f1045i = i2;
        this.f1040d.put(i2, this.f1041e.dataPosition());
        this.f1041e.writeInt(0);
        this.f1041e.writeInt(i2);
    }

    public b(Parcel parcel, int i2, int i3, String str, a<String, Method> aVar, a<String, Method> aVar2, a<String, Class> aVar3) {
        super(aVar, aVar2, aVar3);
        this.f1040d = new SparseIntArray();
        this.f1045i = -1;
        this.f1046j = 0;
        this.f1047k = -1;
        this.f1041e = parcel;
        this.f1042f = i2;
        this.f1043g = i3;
        this.f1046j = i2;
        this.f1044h = str;
    }

    public a b() {
        Parcel parcel = this.f1041e;
        int dataPosition = parcel.dataPosition();
        int i2 = this.f1046j;
        if (i2 == this.f1042f) {
            i2 = this.f1043g;
        }
        return new b(parcel, dataPosition, i2, e.a.a.a.a.a(new StringBuilder(), this.f1044h, "  "), this.a, this.b, this.f1039c);
    }

    public void a() {
        int i2 = this.f1045i;
        if (i2 >= 0) {
            int i3 = this.f1040d.get(i2);
            int dataPosition = this.f1041e.dataPosition();
            this.f1041e.setDataPosition(i3);
            this.f1041e.writeInt(dataPosition - i3);
            this.f1041e.setDataPosition(dataPosition);
        }
    }
}
