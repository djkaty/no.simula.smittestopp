package androidx.core.graphics.drawable;

public class IconCompatParcelizer {
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x007c, code lost:
        if (r8 != 5) goto L_0x00ae;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static androidx.core.graphics.drawable.IconCompat read(d.z.a r8) {
        /*
            androidx.core.graphics.drawable.IconCompat r0 = new androidx.core.graphics.drawable.IconCompat
            r0.<init>()
            int r1 = r0.a
            r2 = 1
            int r1 = r8.a((int) r1, (int) r2)
            r0.a = r1
            byte[] r1 = r0.f56c
            r3 = 2
            boolean r4 = r8.a((int) r3)
            if (r4 != 0) goto L_0x0018
            goto L_0x002d
        L_0x0018:
            r1 = r8
            d.z.b r1 = (d.z.b) r1
            android.os.Parcel r4 = r1.f1041e
            int r4 = r4.readInt()
            if (r4 >= 0) goto L_0x0025
            r1 = 0
            goto L_0x002d
        L_0x0025:
            byte[] r4 = new byte[r4]
            android.os.Parcel r1 = r1.f1041e
            r1.readByteArray(r4)
            r1 = r4
        L_0x002d:
            r0.f56c = r1
            android.os.Parcelable r1 = r0.f57d
            r4 = 3
            android.os.Parcelable r1 = r8.a(r1, (int) r4)
            r0.f57d = r1
            int r1 = r0.f58e
            r5 = 4
            int r1 = r8.a((int) r1, (int) r5)
            r0.f58e = r1
            int r1 = r0.f59f
            r6 = 5
            int r1 = r8.a((int) r1, (int) r6)
            r0.f59f = r1
            android.content.res.ColorStateList r1 = r0.f60g
            r7 = 6
            android.os.Parcelable r1 = r8.a(r1, (int) r7)
            android.content.res.ColorStateList r1 = (android.content.res.ColorStateList) r1
            r0.f60g = r1
            java.lang.String r1 = r0.f62i
            r7 = 7
            boolean r7 = r8.a((int) r7)
            if (r7 != 0) goto L_0x005f
            goto L_0x0067
        L_0x005f:
            d.z.b r8 = (d.z.b) r8
            android.os.Parcel r8 = r8.f1041e
            java.lang.String r1 = r8.readString()
        L_0x0067:
            r0.f62i = r1
            android.graphics.PorterDuff$Mode r8 = android.graphics.PorterDuff.Mode.valueOf(r1)
            r0.f61h = r8
            int r8 = r0.a
            r1 = -1
            if (r8 == r1) goto L_0x00a8
            if (r8 == r2) goto L_0x0094
            if (r8 == r3) goto L_0x0084
            if (r8 == r4) goto L_0x007f
            if (r8 == r5) goto L_0x0084
            if (r8 == r6) goto L_0x0094
            goto L_0x00ae
        L_0x007f:
            byte[] r8 = r0.f56c
            r0.b = r8
            goto L_0x00ae
        L_0x0084:
            java.lang.String r8 = new java.lang.String
            byte[] r1 = r0.f56c
            java.lang.String r2 = "UTF-16"
            java.nio.charset.Charset r2 = java.nio.charset.Charset.forName(r2)
            r8.<init>(r1, r2)
            r0.b = r8
            goto L_0x00ae
        L_0x0094:
            android.os.Parcelable r8 = r0.f57d
            if (r8 == 0) goto L_0x009b
            r0.b = r8
            goto L_0x00ae
        L_0x009b:
            byte[] r8 = r0.f56c
            r0.b = r8
            r0.a = r4
            r1 = 0
            r0.f58e = r1
            int r8 = r8.length
            r0.f59f = r8
            goto L_0x00ae
        L_0x00a8:
            android.os.Parcelable r8 = r0.f57d
            if (r8 == 0) goto L_0x00af
            r0.b = r8
        L_0x00ae:
            return r0
        L_0x00af:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "Invalid icon"
            r8.<init>(r0)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.drawable.IconCompatParcelizer.read(d.z.a):androidx.core.graphics.drawable.IconCompat");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x001e, code lost:
        if (r0 != 5) goto L_0x0055;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void write(androidx.core.graphics.drawable.IconCompat r8, d.z.a r9) {
        /*
            if (r9 == 0) goto L_0x00af
            android.graphics.PorterDuff$Mode r0 = r8.f61h
            java.lang.String r0 = r0.name()
            r8.f62i = r0
            int r0 = r8.a
            r1 = 5
            r2 = 4
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = -1
            if (r0 == r6) goto L_0x004f
            if (r0 == r5) goto L_0x0048
            java.lang.String r7 = "UTF-16"
            if (r0 == r4) goto L_0x0039
            if (r0 == r3) goto L_0x0032
            if (r0 == r2) goto L_0x0021
            if (r0 == r1) goto L_0x0048
            goto L_0x0055
        L_0x0021:
            java.lang.Object r0 = r8.b
            java.lang.String r0 = r0.toString()
            java.nio.charset.Charset r7 = java.nio.charset.Charset.forName(r7)
            byte[] r0 = r0.getBytes(r7)
            r8.f56c = r0
            goto L_0x0055
        L_0x0032:
            java.lang.Object r0 = r8.b
            byte[] r0 = (byte[]) r0
            r8.f56c = r0
            goto L_0x0055
        L_0x0039:
            java.lang.Object r0 = r8.b
            java.lang.String r0 = (java.lang.String) r0
            java.nio.charset.Charset r7 = java.nio.charset.Charset.forName(r7)
            byte[] r0 = r0.getBytes(r7)
            r8.f56c = r0
            goto L_0x0055
        L_0x0048:
            java.lang.Object r0 = r8.b
            android.os.Parcelable r0 = (android.os.Parcelable) r0
            r8.f57d = r0
            goto L_0x0055
        L_0x004f:
            java.lang.Object r0 = r8.b
            android.os.Parcelable r0 = (android.os.Parcelable) r0
            r8.f57d = r0
        L_0x0055:
            int r0 = r8.a
            if (r6 == r0) goto L_0x005c
            r9.b((int) r0, (int) r5)
        L_0x005c:
            byte[] r0 = r8.f56c
            if (r0 == 0) goto L_0x0071
            r9.b((int) r4)
            r4 = r9
            d.z.b r4 = (d.z.b) r4
            android.os.Parcel r5 = r4.f1041e
            int r6 = r0.length
            r5.writeInt(r6)
            android.os.Parcel r4 = r4.f1041e
            r4.writeByteArray(r0)
        L_0x0071:
            android.os.Parcelable r0 = r8.f57d
            r4 = 0
            if (r0 == 0) goto L_0x0081
            r9.b((int) r3)
            r3 = r9
            d.z.b r3 = (d.z.b) r3
            android.os.Parcel r3 = r3.f1041e
            r3.writeParcelable(r0, r4)
        L_0x0081:
            int r0 = r8.f58e
            if (r0 == 0) goto L_0x0088
            r9.b((int) r0, (int) r2)
        L_0x0088:
            int r0 = r8.f59f
            if (r0 == 0) goto L_0x008f
            r9.b((int) r0, (int) r1)
        L_0x008f:
            android.content.res.ColorStateList r0 = r8.f60g
            if (r0 == 0) goto L_0x009f
            r1 = 6
            r9.b((int) r1)
            r1 = r9
            d.z.b r1 = (d.z.b) r1
            android.os.Parcel r1 = r1.f1041e
            r1.writeParcelable(r0, r4)
        L_0x009f:
            java.lang.String r8 = r8.f62i
            if (r8 == 0) goto L_0x00ae
            r0 = 7
            r9.b((int) r0)
            d.z.b r9 = (d.z.b) r9
            android.os.Parcel r9 = r9.f1041e
            r9.writeString(r8)
        L_0x00ae:
            return
        L_0x00af:
            r8 = 0
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.drawable.IconCompatParcelizer.write(androidx.core.graphics.drawable.IconCompat, d.z.a):void");
    }
}
