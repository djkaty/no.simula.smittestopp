package j.a.a.a.a.a;

import android.os.Parcel;
import android.os.Parcelable;
import com.microsoft.appcenter.channel.DefaultChannel;

public final class k implements Parcelable {
    public static final Parcelable.Creator<k> CREATOR = new a();
    public int A;
    public long B;
    public int C;
    public int D;
    public boolean E;
    public boolean F;
    public boolean G;
    public long H;
    public long I;
    public boolean J;
    public int K;
    public final long x;
    public final long y;
    public int z;

    public static class a implements Parcelable.Creator<k> {
        public Object createFromParcel(Parcel parcel) {
            return new k(parcel, (a) null);
        }

        public Object[] newArray(int i2) {
            return new k[i2];
        }
    }

    public /* synthetic */ k(int i2, int i3, long j2, int i4, int i5, boolean z2, int i6, boolean z3, boolean z4, boolean z5, long j3, long j4, long j5, long j6, a aVar) {
        this.z = i2;
        this.A = i3;
        this.B = j2;
        this.D = i5;
        this.C = i4;
        this.J = z2;
        this.K = i6;
        this.E = z3;
        this.F = z4;
        this.G = z5;
        this.H = 1000000 * j3;
        this.I = j4;
        this.x = j5;
        this.y = j6;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.z);
        parcel.writeInt(this.A);
        parcel.writeLong(this.B);
        parcel.writeInt(this.C);
        parcel.writeInt(this.D);
        parcel.writeInt(this.J ? 1 : 0);
        parcel.writeInt(this.K);
        parcel.writeInt(this.E ? 1 : 0);
        parcel.writeInt(this.F ? 1 : 0);
        parcel.writeLong(this.x);
        parcel.writeLong(this.y);
    }

    public static final class b {
        public int a = 0;
        public int b = 1;

        /* renamed from: c  reason: collision with root package name */
        public long f1473c = 0;

        /* renamed from: d  reason: collision with root package name */
        public int f1474d = 1;

        /* renamed from: e  reason: collision with root package name */
        public int f1475e = 3;

        /* renamed from: f  reason: collision with root package name */
        public boolean f1476f = true;

        /* renamed from: g  reason: collision with root package name */
        public int f1477g = 255;

        /* renamed from: h  reason: collision with root package name */
        public boolean f1478h = true;

        /* renamed from: i  reason: collision with root package name */
        public boolean f1479i = true;

        /* renamed from: j  reason: collision with root package name */
        public boolean f1480j = true;

        /* renamed from: k  reason: collision with root package name */
        public long f1481k = 10000;

        /* renamed from: l  reason: collision with root package name */
        public long f1482l = 10000;
        public long m = 0;
        public long n = 0;

        public b a(int i2) {
            if (i2 < -1 || i2 > 2) {
                throw new IllegalArgumentException(e.a.a.a.a.a("invalid scan mode ", i2));
            }
            this.a = i2;
            return this;
        }

        public k a() {
            if (this.m == 0 && this.n == 0) {
                int i2 = this.a;
                if (i2 == 1) {
                    this.n = 2000;
                    this.m = DefaultChannel.MINIMUM_TRANSMISSION_INTERVAL;
                } else if (i2 != 2) {
                    this.n = 500;
                    this.m = 4500;
                } else {
                    this.n = 0;
                    this.m = 0;
                }
            }
            k kVar = r3;
            k kVar2 = new k(this.a, this.b, this.f1473c, this.f1474d, this.f1475e, this.f1476f, this.f1477g, this.f1478h, this.f1479i, this.f1480j, this.f1481k, this.f1482l, this.n, this.m, (a) null);
            return kVar;
        }
    }

    public /* synthetic */ k(Parcel parcel, a aVar) {
        this.z = parcel.readInt();
        this.A = parcel.readInt();
        this.B = parcel.readLong();
        this.C = parcel.readInt();
        this.D = parcel.readInt();
        boolean z2 = false;
        this.J = parcel.readInt() != 0;
        this.K = parcel.readInt();
        this.E = parcel.readInt() == 1;
        this.F = parcel.readInt() == 1 ? true : z2;
        this.x = parcel.readLong();
        this.y = parcel.readLong();
    }
}
