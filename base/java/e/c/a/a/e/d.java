package e.c.a.a.e;

import android.os.Parcelable;
import com.google.android.gms.location.LocationAvailability;

public final class d implements Parcelable.Creator<LocationAvailability> {
    /* JADX WARNING: type inference failed for: r2v3, types: [java.lang.Object[]] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final /* synthetic */ java.lang.Object createFromParcel(android.os.Parcel r14) {
        /*
            r13 = this;
            int r0 = d.b.a.r.b((android.os.Parcel) r14)
            r1 = 1
            r2 = 1000(0x3e8, float:1.401E-42)
            r3 = 0
            r5 = 0
            r10 = r3
            r12 = r5
            r7 = 1000(0x3e8, float:1.401E-42)
            r8 = 1
            r9 = 1
        L_0x0010:
            int r2 = r14.dataPosition()
            if (r2 >= r0) goto L_0x004e
            int r2 = r14.readInt()
            r3 = 65535(0xffff, float:9.1834E-41)
            r3 = r3 & r2
            if (r3 == r1) goto L_0x0049
            r4 = 2
            if (r3 == r4) goto L_0x0044
            r4 = 3
            if (r3 == r4) goto L_0x003f
            r4 = 4
            if (r3 == r4) goto L_0x003a
            r4 = 5
            if (r3 == r4) goto L_0x0030
            d.b.a.r.i(r14, r2)
            goto L_0x0010
        L_0x0030:
            android.os.Parcelable$Creator<e.c.a.a.e.h> r3 = e.c.a.a.e.h.CREATOR
            java.lang.Object[] r2 = d.b.a.r.b((android.os.Parcel) r14, (int) r2, r3)
            r12 = r2
            e.c.a.a.e.h[] r12 = (e.c.a.a.e.h[]) r12
            goto L_0x0010
        L_0x003a:
            int r7 = d.b.a.r.f(r14, r2)
            goto L_0x0010
        L_0x003f:
            long r10 = d.b.a.r.g(r14, r2)
            goto L_0x0010
        L_0x0044:
            int r9 = d.b.a.r.f(r14, r2)
            goto L_0x0010
        L_0x0049:
            int r8 = d.b.a.r.f(r14, r2)
            goto L_0x0010
        L_0x004e:
            d.b.a.r.c((android.os.Parcel) r14, (int) r0)
            com.google.android.gms.location.LocationAvailability r14 = new com.google.android.gms.location.LocationAvailability
            r6 = r14
            r6.<init>(r7, r8, r9, r10, r12)
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: e.c.a.a.e.d.createFromParcel(android.os.Parcel):java.lang.Object");
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new LocationAvailability[i2];
    }
}
