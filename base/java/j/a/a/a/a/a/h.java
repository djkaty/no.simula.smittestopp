package j.a.a.a.a.a;

import android.bluetooth.BluetoothAdapter;
import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.Parcelable;
import e.c.a.a.b.l.c;
import java.util.Arrays;

public final class h implements Parcelable {
    public static final Parcelable.Creator<h> CREATOR = new a();
    public final ParcelUuid A;
    public final ParcelUuid B;
    public final byte[] C;
    public final byte[] D;
    public final int E;
    public final byte[] F;
    public final byte[] G;
    public final String x;
    public final String y;
    public final ParcelUuid z;

    public static class a implements Parcelable.Creator<h> {
        public Object createFromParcel(Parcel parcel) {
            b bVar = new b();
            if (parcel.readInt() == 1) {
                bVar.a = parcel.readString();
            }
            if (parcel.readInt() == 1) {
                bVar.a(parcel.readString());
            }
            if (parcel.readInt() == 1) {
                ParcelUuid parcelUuid = (ParcelUuid) parcel.readParcelable(ParcelUuid.class.getClassLoader());
                bVar.a(parcelUuid);
                if (parcel.readInt() == 1) {
                    ParcelUuid parcelUuid2 = (ParcelUuid) parcel.readParcelable(ParcelUuid.class.getClassLoader());
                    if (parcelUuid2 == null || parcelUuid != null) {
                        bVar.f1460c = parcelUuid;
                        bVar.f1461d = parcelUuid2;
                    } else {
                        throw new IllegalArgumentException("uuid is null while uuidMask is not null!");
                    }
                }
            }
            if (parcel.readInt() == 1) {
                ParcelUuid parcelUuid3 = (ParcelUuid) parcel.readParcelable(ParcelUuid.class.getClassLoader());
                if (parcel.readInt() == 1) {
                    byte[] bArr = new byte[parcel.readInt()];
                    parcel.readByteArray(bArr);
                    if (parcel.readInt() != 0) {
                        byte[] bArr2 = new byte[parcel.readInt()];
                        parcel.readByteArray(bArr2);
                        bVar.a(parcelUuid3, bArr, bArr2);
                    } else if (parcelUuid3 != null) {
                        bVar.f1462e = parcelUuid3;
                        bVar.f1463f = bArr;
                        bVar.f1464g = null;
                    } else {
                        throw new IllegalArgumentException("serviceDataUuid is null!");
                    }
                }
            }
            int readInt = parcel.readInt();
            if (parcel.readInt() == 1) {
                byte[] bArr3 = new byte[parcel.readInt()];
                parcel.readByteArray(bArr3);
                if (parcel.readInt() != 0) {
                    byte[] bArr4 = new byte[parcel.readInt()];
                    parcel.readByteArray(bArr4);
                    bVar.a(readInt, bArr3, bArr4);
                } else if (readInt >= 0) {
                    bVar.f1465h = readInt;
                    bVar.f1466i = bArr3;
                    bVar.f1467j = null;
                } else {
                    throw new IllegalArgumentException("invalid manufacture id");
                }
            }
            return bVar.a();
        }

        public Object[] newArray(int i2) {
            return new h[i2];
        }
    }

    static {
        new h((String) null, (String) null, (ParcelUuid) null, (ParcelUuid) null, (ParcelUuid) null, (byte[]) null, (byte[]) null, -1, (byte[]) null, (byte[]) null, (a) null);
    }

    public /* synthetic */ h(String str, String str2, ParcelUuid parcelUuid, ParcelUuid parcelUuid2, ParcelUuid parcelUuid3, byte[] bArr, byte[] bArr2, int i2, byte[] bArr3, byte[] bArr4, a aVar) {
        this.x = str;
        this.z = parcelUuid;
        this.A = parcelUuid2;
        this.y = str2;
        this.B = parcelUuid3;
        this.C = bArr;
        this.D = bArr2;
        this.E = i2;
        this.F = bArr3;
        this.G = bArr4;
    }

    public final boolean a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (bArr == null) {
            return bArr3 != null;
        }
        if (bArr3 == null || bArr3.length < bArr.length) {
            return false;
        }
        if (bArr2 == null) {
            for (int i2 = 0; i2 < bArr.length; i2++) {
                if (bArr3[i2] != bArr[i2]) {
                    return false;
                }
            }
            return true;
        }
        for (int i3 = 0; i3 < bArr.length; i3++) {
            if ((bArr2[i3] & bArr3[i3]) != (bArr2[i3] & bArr[i3])) {
                return false;
            }
        }
        return true;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || h.class != obj.getClass()) {
            return false;
        }
        h hVar = (h) obj;
        if (!c.b((Object) this.x, (Object) hVar.x) || !c.b((Object) this.y, (Object) hVar.y) || this.E != hVar.E || !c.a((Object) this.F, (Object) hVar.F) || !c.a((Object) this.G, (Object) hVar.G) || !c.b((Object) this.B, (Object) hVar.B) || !c.a((Object) this.C, (Object) hVar.C) || !c.a((Object) this.D, (Object) hVar.D) || !c.b((Object) this.z, (Object) hVar.z) || !c.b((Object) this.A, (Object) hVar.A)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.x, this.y, Integer.valueOf(this.E), Integer.valueOf(Arrays.hashCode(this.F)), Integer.valueOf(Arrays.hashCode(this.G)), this.B, Integer.valueOf(Arrays.hashCode(this.C)), Integer.valueOf(Arrays.hashCode(this.D)), this.z, this.A});
    }

    public String toString() {
        String str;
        StringBuilder a2 = e.a.a.a.a.a("BluetoothLeScanFilter [deviceName=");
        a2.append(this.x);
        a2.append(", deviceAddress=");
        a2.append(this.y);
        a2.append(", mUuid=");
        a2.append(this.z);
        a2.append(", uuidMask=");
        a2.append(this.A);
        a2.append(", serviceDataUuid=");
        ParcelUuid parcelUuid = this.B;
        if (parcelUuid == null) {
            str = "null";
        } else {
            str = parcelUuid.toString();
        }
        a2.append(str);
        a2.append(", serviceData=");
        a2.append(Arrays.toString(this.C));
        a2.append(", serviceDataMask=");
        a2.append(Arrays.toString(this.D));
        a2.append(", manufacturerId=");
        a2.append(this.E);
        a2.append(", manufacturerData=");
        a2.append(Arrays.toString(this.F));
        a2.append(", manufacturerDataMask=");
        a2.append(Arrays.toString(this.G));
        a2.append("]");
        return a2.toString();
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int i3 = 0;
        parcel.writeInt(this.x == null ? 0 : 1);
        String str = this.x;
        if (str != null) {
            parcel.writeString(str);
        }
        parcel.writeInt(this.y == null ? 0 : 1);
        String str2 = this.y;
        if (str2 != null) {
            parcel.writeString(str2);
        }
        parcel.writeInt(this.z == null ? 0 : 1);
        ParcelUuid parcelUuid = this.z;
        if (parcelUuid != null) {
            parcel.writeParcelable(parcelUuid, i2);
            parcel.writeInt(this.A == null ? 0 : 1);
            ParcelUuid parcelUuid2 = this.A;
            if (parcelUuid2 != null) {
                parcel.writeParcelable(parcelUuid2, i2);
            }
        }
        parcel.writeInt(this.B == null ? 0 : 1);
        ParcelUuid parcelUuid3 = this.B;
        if (parcelUuid3 != null) {
            parcel.writeParcelable(parcelUuid3, i2);
            parcel.writeInt(this.C == null ? 0 : 1);
            byte[] bArr = this.C;
            if (bArr != null) {
                parcel.writeInt(bArr.length);
                parcel.writeByteArray(this.C);
                parcel.writeInt(this.D == null ? 0 : 1);
                byte[] bArr2 = this.D;
                if (bArr2 != null) {
                    parcel.writeInt(bArr2.length);
                    parcel.writeByteArray(this.D);
                }
            }
        }
        parcel.writeInt(this.E);
        parcel.writeInt(this.F == null ? 0 : 1);
        byte[] bArr3 = this.F;
        if (bArr3 != null) {
            parcel.writeInt(bArr3.length);
            parcel.writeByteArray(this.F);
            if (this.G != null) {
                i3 = 1;
            }
            parcel.writeInt(i3);
            byte[] bArr4 = this.G;
            if (bArr4 != null) {
                parcel.writeInt(bArr4.length);
                parcel.writeByteArray(this.G);
            }
        }
    }

    public static final class b {
        public String a;
        public String b;

        /* renamed from: c  reason: collision with root package name */
        public ParcelUuid f1460c;

        /* renamed from: d  reason: collision with root package name */
        public ParcelUuid f1461d;

        /* renamed from: e  reason: collision with root package name */
        public ParcelUuid f1462e;

        /* renamed from: f  reason: collision with root package name */
        public byte[] f1463f;

        /* renamed from: g  reason: collision with root package name */
        public byte[] f1464g;

        /* renamed from: h  reason: collision with root package name */
        public int f1465h = -1;

        /* renamed from: i  reason: collision with root package name */
        public byte[] f1466i;

        /* renamed from: j  reason: collision with root package name */
        public byte[] f1467j;

        public b a(String str) {
            if (str == null || BluetoothAdapter.checkBluetoothAddress(str)) {
                this.b = str;
                return this;
            }
            throw new IllegalArgumentException(e.a.a.a.a.b("invalid device address ", str));
        }

        public b a(ParcelUuid parcelUuid) {
            this.f1460c = parcelUuid;
            this.f1461d = null;
            return this;
        }

        public b a(ParcelUuid parcelUuid, byte[] bArr, byte[] bArr2) {
            if (parcelUuid != null || bArr == null) {
                if (bArr2 != null) {
                    if (bArr == null) {
                        throw new IllegalArgumentException("serviceData is null while serviceDataMask is not null");
                    } else if (bArr.length != bArr2.length) {
                        throw new IllegalArgumentException("size mismatch for service data and service data mask");
                    }
                }
                this.f1462e = parcelUuid;
                this.f1463f = bArr;
                this.f1464g = bArr2;
                return this;
            }
            throw new IllegalArgumentException("serviceDataUuid is null");
        }

        public b a(int i2, byte[] bArr, byte[] bArr2) {
            if (bArr == null || i2 >= 0) {
                if (bArr2 != null) {
                    if (bArr == null) {
                        throw new IllegalArgumentException("manufacturerData is null while manufacturerDataMask is not null");
                    } else if (bArr.length != bArr2.length) {
                        throw new IllegalArgumentException("size mismatch for manufacturerData and manufacturerDataMask");
                    }
                }
                this.f1465h = i2;
                this.f1466i = bArr;
                this.f1467j = bArr2;
                return this;
            }
            throw new IllegalArgumentException("invalid manufacture id");
        }

        public h a() {
            return new h(this.a, this.b, this.f1460c, this.f1461d, this.f1462e, this.f1463f, this.f1464g, this.f1465h, this.f1466i, this.f1467j, (a) null);
        }
    }
}
