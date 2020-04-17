package no.nordicsemi.android.support.v18.scanner;

import android.content.BroadcastReceiver;

public class PendingIntentReceiver extends BroadcastReceiver {
    /* JADX WARNING: Can't wrap try/catch for region: R(3:71|72|73) */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x0168, code lost:
        r3.o.b = r21;
        r2 = r22;
        r1 = r2.getParcelableArrayListExtra("android.bluetooth.le.extra.LIST_SCAN_RESULT");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x0176, code lost:
        if (r1 == null) goto L_0x019d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x0178, code lost:
        r1 = r9.a((java.util.List<android.bluetooth.le.ScanResult>) r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x0180, code lost:
        if (r0.B <= 0) goto L_0x0186;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x0182, code lost:
        r3.a((java.util.List<j.a.a.a.a.a.j>) r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x018a, code lost:
        if (r1.isEmpty() != false) goto L_0x01aa;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x018c, code lost:
        r3.a(r2.getIntExtra("android.bluetooth.le.extra.CALLBACK_TYPE", 1), r1.get(r11));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x019d, code lost:
        r0 = r2.getIntExtra("android.bluetooth.le.extra.ERROR_CODE", r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x01a3, code lost:
        if (r0 == 0) goto L_0x01aa;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x01a5, code lost:
        r3.f1451h.a(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:0x01aa, code lost:
        r3.o.b = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x01af, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:73:0x01b3, code lost:
        return;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:71:0x01b2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onReceive(android.content.Context r21, android.content.Intent r22) {
        /*
            r20 = this;
            r0 = r21
            r1 = r22
            if (r0 == 0) goto L_0x01ec
            if (r1 != 0) goto L_0x000a
            goto L_0x01ec
        L_0x000a:
            java.lang.String r2 = "no.nordicsemi.android.support.v18.EXTRA_PENDING_INTENT"
            android.os.Parcelable r2 = r1.getParcelableExtra(r2)
            android.app.PendingIntent r2 = (android.app.PendingIntent) r2
            if (r2 != 0) goto L_0x0015
            return
        L_0x0015:
            java.lang.String r3 = "no.nordicsemi.android.support.v18.EXTRA_FILTERS"
            java.util.ArrayList r3 = r1.getParcelableArrayListExtra(r3)
            java.lang.String r4 = "no.nordicsemi.android.support.v18.EXTRA_SETTINGS"
            android.os.Parcelable r4 = r1.getParcelableExtra(r4)
            android.bluetooth.le.ScanSettings r4 = (android.bluetooth.le.ScanSettings) r4
            if (r3 == 0) goto L_0x01ec
            if (r4 != 0) goto L_0x0029
            goto L_0x01ec
        L_0x0029:
            r5 = 1
            java.lang.String r6 = "no.nordicsemi.android.support.v18.EXTRA_USE_HARDWARE_BATCHING"
            boolean r6 = r1.getBooleanExtra(r6, r5)
            java.lang.String r7 = "no.nordicsemi.android.support.v18.EXTRA_USE_HARDWARE_FILTERING"
            boolean r7 = r1.getBooleanExtra(r7, r5)
            java.lang.String r8 = "no.nordicsemi.android.support.v18.EXTRA_USE_HARDWARE_CALLBACK_TYPES"
            boolean r8 = r1.getBooleanExtra(r8, r5)
            r9 = 10000(0x2710, double:4.9407E-320)
            java.lang.String r11 = "no.nordicsemi.android.support.v18.EXTRA_MATCH_LOST_TIMEOUT"
            long r11 = r1.getLongExtra(r11, r9)
            java.lang.String r13 = "no.nordicsemi.android.support.v18.EXTRA_MATCH_LOST_INTERVAL"
            long r9 = r1.getLongExtra(r13, r9)
            java.lang.String r13 = "no.nordicsemi.android.support.v18.EXTRA_MATCH_MODE"
            int r5 = r1.getIntExtra(r13, r5)
            r13 = 3
            java.lang.String r14 = "no.nordicsemi.android.support.v18.EXTRA_NUM_OF_MATCHES"
            int r13 = r1.getIntExtra(r14, r13)
            j.a.a.a.a.a.a r14 = j.a.a.a.a.a.a.a()
            r15 = r14
            j.a.a.a.a.a.d r15 = (j.a.a.a.a.a.d) r15
            if (r15 == 0) goto L_0x01ea
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.Iterator r3 = r3.iterator()
        L_0x0069:
            boolean r16 = r3.hasNext()
            if (r16 == 0) goto L_0x00da
            java.lang.Object r16 = r3.next()
            android.bluetooth.le.ScanFilter r16 = (android.bluetooth.le.ScanFilter) r16
            r17 = r3
            j.a.a.a.a.a.h$b r3 = new j.a.a.a.a.a.h$b
            r3.<init>()
            java.lang.String r0 = r16.getDeviceAddress()
            r3.a((java.lang.String) r0)
            java.lang.String r0 = r16.getDeviceName()
            r3.a = r0
            android.os.ParcelUuid r0 = r16.getServiceUuid()
            r18 = r2
            android.os.ParcelUuid r2 = r16.getServiceUuidMask()
            if (r2 == 0) goto L_0x00a0
            if (r0 == 0) goto L_0x0098
            goto L_0x00a0
        L_0x0098:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "uuid is null while uuidMask is not null!"
            r0.<init>(r1)
            throw r0
        L_0x00a0:
            r3.f1460c = r0
            r3.f1461d = r2
            int r0 = r16.getManufacturerId()
            byte[] r2 = r16.getManufacturerData()
            r19 = r15
            byte[] r15 = r16.getManufacturerDataMask()
            r3.a((int) r0, (byte[]) r2, (byte[]) r15)
            android.os.ParcelUuid r0 = r16.getServiceDataUuid()
            if (r0 == 0) goto L_0x00ca
            android.os.ParcelUuid r0 = r16.getServiceDataUuid()
            byte[] r2 = r16.getServiceData()
            byte[] r15 = r16.getServiceDataMask()
            r3.a((android.os.ParcelUuid) r0, (byte[]) r2, (byte[]) r15)
        L_0x00ca:
            j.a.a.a.a.a.h r0 = r3.a()
            r1.add(r0)
            r0 = r21
            r3 = r17
            r2 = r18
            r15 = r19
            goto L_0x0069
        L_0x00da:
            r18 = r2
            r19 = r15
            j.a.a.a.a.a.k$b r0 = new j.a.a.a.a.a.k$b
            r0.<init>()
            boolean r2 = r4.getLegacy()
            r0.f1476f = r2
            int r2 = r4.getPhy()
            r0.f1477g = r2
            int r2 = r4.getCallbackType()
            r3 = 2
            r15 = 1
            if (r2 == r15) goto L_0x0103
            if (r2 == r3) goto L_0x0103
            r15 = 4
            if (r2 != r15) goto L_0x00fd
            goto L_0x0103
        L_0x00fd:
            r15 = 6
            if (r2 != r15) goto L_0x0101
            goto L_0x0103
        L_0x0101:
            r15 = 0
            goto L_0x0104
        L_0x0103:
            r15 = 1
        L_0x0104:
            if (r15 == 0) goto L_0x01de
            r0.b = r2
            int r2 = r4.getScanMode()
            r0.a(r2)
            long r3 = r4.getReportDelayMillis()
            r16 = 0
            int r2 = (r3 > r16 ? 1 : (r3 == r16 ? 0 : -1))
            if (r2 < 0) goto L_0x01d6
            r0.f1473c = r3
            r0.f1479i = r6
            r0.f1478h = r7
            r0.f1480j = r8
            int r2 = (r11 > r16 ? 1 : (r11 == r16 ? 0 : -1))
            if (r2 <= 0) goto L_0x01ce
            int r2 = (r9 > r16 ? 1 : (r9 == r16 ? 0 : -1))
            if (r2 <= 0) goto L_0x01ce
            r0.f1481k = r11
            r0.f1482l = r9
            r2 = 1
            if (r5 < r2) goto L_0x01c2
            r3 = 2
            if (r5 > r3) goto L_0x01c2
            r0.f1474d = r5
            if (r13 < r2) goto L_0x01b6
            r2 = 3
            if (r13 > r2) goto L_0x01b6
            r0.f1475e = r13
            j.a.a.a.a.a.k r0 = r0.a()
            android.bluetooth.BluetoothAdapter r2 = android.bluetooth.BluetoothAdapter.getDefaultAdapter()
            boolean r4 = r2.isOffloadedScanBatchingSupported()
            boolean r5 = r2.isOffloadedFilteringSupported()
            monitor-enter(r14)
            r2 = r18
            r9 = r19
            j.a.a.a.a.a.d$a r3 = r9.a((android.app.PendingIntent) r2)     // Catch:{ IllegalStateException -> 0x01b2 }
            if (r3 != 0) goto L_0x0166
            j.a.a.a.a.a.d$a r10 = new j.a.a.a.a.a.d$a     // Catch:{ all -> 0x01b0 }
            r11 = 0
            r3 = r10
            r6 = r1
            r7 = r0
            r8 = r2
            r3.<init>(r4, r5, r6, r7, r8)     // Catch:{ all -> 0x01b0 }
            r9.a(r2, r10)     // Catch:{ all -> 0x01b0 }
            r3 = r10
            goto L_0x0167
        L_0x0166:
            r11 = 0
        L_0x0167:
            monitor-exit(r14)     // Catch:{ all -> 0x01b0 }
            j.a.a.a.a.a.f r1 = r3.o
            r2 = r21
            r1.b = r2
            java.lang.String r1 = "android.bluetooth.le.extra.LIST_SCAN_RESULT"
            r2 = r22
            java.util.ArrayList r1 = r2.getParcelableArrayListExtra(r1)
            if (r1 == 0) goto L_0x019d
            java.util.ArrayList r1 = r9.a((java.util.List<android.bluetooth.le.ScanResult>) r1)
            long r4 = r0.B
            int r0 = (r4 > r16 ? 1 : (r4 == r16 ? 0 : -1))
            if (r0 <= 0) goto L_0x0186
            r3.a((java.util.List<j.a.a.a.a.a.j>) r1)
            goto L_0x01aa
        L_0x0186:
            boolean r0 = r1.isEmpty()
            if (r0 != 0) goto L_0x01aa
            java.lang.String r0 = "android.bluetooth.le.extra.CALLBACK_TYPE"
            r4 = 1
            int r0 = r2.getIntExtra(r0, r4)
            java.lang.Object r1 = r1.get(r11)
            j.a.a.a.a.a.j r1 = (j.a.a.a.a.a.j) r1
            r3.a(r0, r1)
            goto L_0x01aa
        L_0x019d:
            java.lang.String r0 = "android.bluetooth.le.extra.ERROR_CODE"
            int r0 = r2.getIntExtra(r0, r11)
            if (r0 == 0) goto L_0x01aa
            j.a.a.a.a.a.g r1 = r3.f1451h
            r1.a((int) r0)
        L_0x01aa:
            j.a.a.a.a.a.f r0 = r3.o
            r1 = 0
            r0.b = r1
            return
        L_0x01b0:
            r0 = move-exception
            goto L_0x01b4
        L_0x01b2:
            monitor-exit(r14)     // Catch:{ all -> 0x01b0 }
            return
        L_0x01b4:
            monitor-exit(r14)     // Catch:{ all -> 0x01b0 }
            throw r0
        L_0x01b6:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "invalid numOfMatches "
            java.lang.String r1 = e.a.a.a.a.a((java.lang.String) r1, (int) r13)
            r0.<init>(r1)
            throw r0
        L_0x01c2:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "invalid matchMode "
            java.lang.String r1 = e.a.a.a.a.a((java.lang.String) r1, (int) r5)
            r0.<init>(r1)
            throw r0
        L_0x01ce:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "maxDeviceAgeMillis and taskIntervalMillis must be > 0"
            r0.<init>(r1)
            throw r0
        L_0x01d6:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "reportDelay must be > 0"
            r0.<init>(r1)
            throw r0
        L_0x01de:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "invalid callback type - "
            java.lang.String r1 = e.a.a.a.a.a((java.lang.String) r1, (int) r2)
            r0.<init>(r1)
            throw r0
        L_0x01ea:
            r0 = 0
            throw r0
        L_0x01ec:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: no.nordicsemi.android.support.v18.scanner.PendingIntentReceiver.onReceive(android.content.Context, android.content.Intent):void");
    }
}
