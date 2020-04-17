package e.c.a.a.d.c;

import android.os.Parcelable;

public final class r implements Parcelable.Creator<q> {
    /* JADX WARNING: type inference failed for: r1v3, types: [android.os.Parcelable] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final /* synthetic */ java.lang.Object createFromParcel(android.os.Parcel r13) {
        /*
            r12 = this;
            int r0 = d.b.a.r.b((android.os.Parcel) r13)
            java.util.List<e.c.a.a.b.j.c> r1 = e.c.a.a.d.c.q.E
            r2 = 0
            r3 = 0
            r6 = r1
            r5 = r3
            r7 = r5
            r11 = r7
            r8 = 0
            r9 = 0
            r10 = 0
        L_0x000f:
            int r1 = r13.dataPosition()
            if (r1 >= r0) goto L_0x0051
            int r1 = r13.readInt()
            r2 = 65535(0xffff, float:9.1834E-41)
            r2 = r2 & r1
            r3 = 1
            if (r2 == r3) goto L_0x0047
            switch(r2) {
                case 5: goto L_0x0040;
                case 6: goto L_0x003b;
                case 7: goto L_0x0036;
                case 8: goto L_0x0031;
                case 9: goto L_0x002c;
                case 10: goto L_0x0027;
                default: goto L_0x0023;
            }
        L_0x0023:
            d.b.a.r.i(r13, r1)
            goto L_0x000f
        L_0x0027:
            java.lang.String r11 = d.b.a.r.b((android.os.Parcel) r13, (int) r1)
            goto L_0x000f
        L_0x002c:
            boolean r10 = d.b.a.r.d((android.os.Parcel) r13, (int) r1)
            goto L_0x000f
        L_0x0031:
            boolean r9 = d.b.a.r.d((android.os.Parcel) r13, (int) r1)
            goto L_0x000f
        L_0x0036:
            boolean r8 = d.b.a.r.d((android.os.Parcel) r13, (int) r1)
            goto L_0x000f
        L_0x003b:
            java.lang.String r7 = d.b.a.r.b((android.os.Parcel) r13, (int) r1)
            goto L_0x000f
        L_0x0040:
            android.os.Parcelable$Creator<e.c.a.a.b.j.c> r2 = e.c.a.a.b.j.c.CREATOR
            java.util.ArrayList r6 = d.b.a.r.c((android.os.Parcel) r13, (int) r1, r2)
            goto L_0x000f
        L_0x0047:
            android.os.Parcelable$Creator<com.google.android.gms.location.LocationRequest> r2 = com.google.android.gms.location.LocationRequest.CREATOR
            android.os.Parcelable r1 = d.b.a.r.a((android.os.Parcel) r13, (int) r1, r2)
            r5 = r1
            com.google.android.gms.location.LocationRequest r5 = (com.google.android.gms.location.LocationRequest) r5
            goto L_0x000f
        L_0x0051:
            d.b.a.r.c((android.os.Parcel) r13, (int) r0)
            e.c.a.a.d.c.q r13 = new e.c.a.a.d.c.q
            r4 = r13
            r4.<init>(r5, r6, r7, r8, r9, r10, r11)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: e.c.a.a.d.c.r.createFromParcel(android.os.Parcel):java.lang.Object");
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new q[i2];
    }
}
