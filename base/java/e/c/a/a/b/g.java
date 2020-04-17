package e.c.a.a.b;

import java.util.concurrent.atomic.AtomicBoolean;

public class g {
    @Deprecated
    public static final int a = 12451000;
    public static final AtomicBoolean b = new AtomicBoolean();

    /* renamed from: c  reason: collision with root package name */
    public static final AtomicBoolean f1124c = new AtomicBoolean();

    @Deprecated
    public static String a(int i2) {
        return a.a(i2);
    }

    @Deprecated
    public static boolean b(int i2) {
        return i2 == 1 || i2 == 2 || i2 == 3 || i2 == 9;
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x009b  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x009d  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00aa  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00cb  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x00d1  */
    @java.lang.Deprecated
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int a(android.content.Context r10, int r11) {
        /*
            java.lang.String r0 = "GooglePlayServicesUtil"
            android.content.res.Resources r1 = r10.getResources()     // Catch:{ all -> 0x000c }
            int r2 = com.google.android.gms.common.R$string.common_google_play_services_unknown_issue     // Catch:{ all -> 0x000c }
            r1.getString(r2)     // Catch:{ all -> 0x000c }
            goto L_0x0011
        L_0x000c:
            java.lang.String r1 = "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included."
            android.util.Log.e(r0, r1)
        L_0x0011:
            java.lang.String r1 = r10.getPackageName()
            java.lang.String r2 = "com.google.android.gms"
            boolean r1 = r2.equals(r1)
            java.lang.String r3 = " but found "
            if (r1 != 0) goto L_0x0060
            java.util.concurrent.atomic.AtomicBoolean r1 = f1124c
            boolean r1 = r1.get()
            if (r1 != 0) goto L_0x0060
            e.c.a.a.b.j.h0.a(r10)
            int r1 = e.c.a.a.b.j.h0.f1204c
            if (r1 == 0) goto L_0x0058
            r4 = 12451000(0xbdfcb8, float:1.7447567E-38)
            if (r1 != r4) goto L_0x0034
            goto L_0x0060
        L_0x0034:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            r11 = 320(0x140, float:4.48E-43)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>(r11)
            java.lang.String r11 = "The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected "
            r0.append(r11)
            r0.append(r4)
            r0.append(r3)
            r0.append(r1)
            java.lang.String r11 = ".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />"
            r0.append(r11)
            java.lang.String r11 = r0.toString()
            r10.<init>(r11)
            throw r10
        L_0x0058:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />"
            r10.<init>(r11)
            throw r10
        L_0x0060:
            boolean r1 = e.c.a.a.b.l.c.b((android.content.Context) r10)
            r4 = 1
            r5 = 0
            if (r1 != 0) goto L_0x0098
            java.lang.Boolean r1 = e.c.a.a.b.l.c.f1207c
            if (r1 != 0) goto L_0x008e
            android.content.pm.PackageManager r1 = r10.getPackageManager()
            java.lang.String r6 = "android.hardware.type.iot"
            boolean r1 = r1.hasSystemFeature(r6)
            if (r1 != 0) goto L_0x0087
            android.content.pm.PackageManager r1 = r10.getPackageManager()
            java.lang.String r6 = "android.hardware.type.embedded"
            boolean r1 = r1.hasSystemFeature(r6)
            if (r1 == 0) goto L_0x0085
            goto L_0x0087
        L_0x0085:
            r1 = 0
            goto L_0x0088
        L_0x0087:
            r1 = 1
        L_0x0088:
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            e.c.a.a.b.l.c.f1207c = r1
        L_0x008e:
            java.lang.Boolean r1 = e.c.a.a.b.l.c.f1207c
            boolean r1 = r1.booleanValue()
            if (r1 != 0) goto L_0x0098
            r1 = 1
            goto L_0x0099
        L_0x0098:
            r1 = 0
        L_0x0099:
            if (r11 < 0) goto L_0x009d
            r6 = 1
            goto L_0x009e
        L_0x009d:
            r6 = 0
        L_0x009e:
            d.b.a.r.a((boolean) r6)
            android.content.pm.PackageManager r6 = r10.getPackageManager()
            r7 = 0
            r8 = 9
            if (r1 == 0) goto L_0x00bc
            java.lang.String r7 = "com.android.vending"
            r9 = 8256(0x2040, float:1.1569E-41)
            android.content.pm.PackageInfo r7 = r6.getPackageInfo(r7, r9)     // Catch:{ NameNotFoundException -> 0x00b3 }
            goto L_0x00bc
        L_0x00b3:
            java.lang.String r10 = "Google Play Store is missing."
            android.util.Log.w(r0, r10)
        L_0x00b8:
            r4 = 9
            goto L_0x013a
        L_0x00bc:
            r9 = 64
            android.content.pm.PackageInfo r9 = r6.getPackageInfo(r2, r9)     // Catch:{ NameNotFoundException -> 0x0135 }
            e.c.a.a.b.h.a(r10)
            boolean r10 = e.c.a.a.b.h.a((android.content.pm.PackageInfo) r9, (boolean) r4)
            if (r10 != 0) goto L_0x00d1
            java.lang.String r10 = "Google Play services signature invalid."
            android.util.Log.w(r0, r10)
            goto L_0x00b8
        L_0x00d1:
            if (r1 == 0) goto L_0x00ed
            boolean r10 = e.c.a.a.b.h.a((android.content.pm.PackageInfo) r7, (boolean) r4)
            if (r10 == 0) goto L_0x00e7
            android.content.pm.Signature[] r10 = r7.signatures
            r10 = r10[r5]
            android.content.pm.Signature[] r1 = r9.signatures
            r1 = r1[r5]
            boolean r10 = r10.equals(r1)
            if (r10 != 0) goto L_0x00ed
        L_0x00e7:
            java.lang.String r10 = "Google Play Store signature invalid."
            android.util.Log.w(r0, r10)
            goto L_0x00b8
        L_0x00ed:
            int r10 = r9.versionCode
            r1 = -1
            if (r10 != r1) goto L_0x00f4
            r10 = -1
            goto L_0x00f6
        L_0x00f4:
            int r10 = r10 / 1000
        L_0x00f6:
            if (r11 != r1) goto L_0x00f9
            goto L_0x00fb
        L_0x00f9:
            int r1 = r11 / 1000
        L_0x00fb:
            if (r10 >= r1) goto L_0x011d
            int r10 = r9.versionCode
            r1 = 77
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>(r1)
            java.lang.String r1 = "Google Play services out of date.  Requires "
            r2.append(r1)
            r2.append(r11)
            r2.append(r3)
            r2.append(r10)
            java.lang.String r10 = r2.toString()
            android.util.Log.w(r0, r10)
            r4 = 2
            goto L_0x013a
        L_0x011d:
            android.content.pm.ApplicationInfo r10 = r9.applicationInfo
            if (r10 != 0) goto L_0x012d
            android.content.pm.ApplicationInfo r10 = r6.getApplicationInfo(r2, r5)     // Catch:{ NameNotFoundException -> 0x0126 }
            goto L_0x012d
        L_0x0126:
            r10 = move-exception
            java.lang.String r11 = "Google Play services missing when getting application info."
            android.util.Log.wtf(r0, r11, r10)
            goto L_0x013a
        L_0x012d:
            boolean r10 = r10.enabled
            if (r10 != 0) goto L_0x0133
            r4 = 3
            goto L_0x013a
        L_0x0133:
            r4 = 0
            goto L_0x013a
        L_0x0135:
            java.lang.String r10 = "Google Play services is missing."
            android.util.Log.w(r0, r10)
        L_0x013a:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: e.c.a.a.b.g.a(android.content.Context, int):int");
    }
}
