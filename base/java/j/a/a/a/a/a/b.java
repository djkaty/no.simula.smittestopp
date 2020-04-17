package j.a.a.a.a.a;

import android.annotation.TargetApi;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.le.BluetoothLeScanner;
import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanFilter;
import android.bluetooth.le.ScanResult;
import android.bluetooth.le.ScanSettings;
import android.os.Handler;
import android.os.ParcelUuid;
import android.os.SystemClock;
import j.a.a.a.a.a.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@TargetApi(21)
public class b extends a {
    public final Map<g, C0090b> b = new HashMap();

    /* renamed from: j.a.a.a.a.a.b$b  reason: collision with other inner class name */
    public static class C0090b extends a.C0087a {
        public final ScanCallback o = new a();

        /* renamed from: j.a.a.a.a.a.b$b$a */
        public class a extends ScanCallback {
            public long a;

            /* renamed from: j.a.a.a.a.a.b$b$a$a  reason: collision with other inner class name */
            public class C0091a implements Runnable {
                public final /* synthetic */ ScanResult x;
                public final /* synthetic */ int y;

                public C0091a(ScanResult scanResult, int i2) {
                    this.x = scanResult;
                    this.y = i2;
                }

                public void run() {
                    C0090b.this.a(this.y, ((b) a.a()).a(this.x));
                }
            }

            /* renamed from: j.a.a.a.a.a.b$b$a$b  reason: collision with other inner class name */
            public class C0092b implements Runnable {
                public final /* synthetic */ List x;

                public C0092b(List list) {
                    this.x = list;
                }

                public void run() {
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    a aVar = a.this;
                    if (aVar.a <= (elapsedRealtime - C0090b.this.f1450g.B) + 5) {
                        aVar.a = elapsedRealtime;
                        C0090b.this.a((List<j>) ((b) a.a()).a((List<ScanResult>) this.x));
                    }
                }
            }

            /* renamed from: j.a.a.a.a.a.b$b$a$c */
            public class c implements Runnable {
                public final /* synthetic */ int x;

                public c(int i2) {
                    this.x = i2;
                }

                /* JADX WARNING: Failed to process nested try/catch */
                /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x001f */
                /* Code decompiled incorrectly, please refer to instructions dump. */
                public void run() {
                    /*
                        r5 = this;
                        j.a.a.a.a.a.b$b$a r0 = j.a.a.a.a.a.b.C0090b.a.this
                        j.a.a.a.a.a.b$b r0 = j.a.a.a.a.a.b.C0090b.this
                        j.a.a.a.a.a.k r0 = r0.f1450g
                        boolean r1 = r0.G
                        if (r1 == 0) goto L_0x003b
                        int r1 = r0.A
                        r2 = 1
                        if (r1 == r2) goto L_0x003b
                        r1 = 0
                        r0.G = r1
                        j.a.a.a.a.a.a r0 = j.a.a.a.a.a.a.a()
                        j.a.a.a.a.a.b$b$a r1 = j.a.a.a.a.a.b.C0090b.a.this     // Catch:{ Exception -> 0x001f }
                        j.a.a.a.a.a.b$b r1 = j.a.a.a.a.a.b.C0090b.this     // Catch:{ Exception -> 0x001f }
                        j.a.a.a.a.a.g r1 = r1.f1451h     // Catch:{ Exception -> 0x001f }
                        r0.b(r1)     // Catch:{ Exception -> 0x001f }
                    L_0x001f:
                        j.a.a.a.a.a.b$b$a r1 = j.a.a.a.a.a.b.C0090b.a.this     // Catch:{ Exception -> 0x003a }
                        j.a.a.a.a.a.b$b r1 = j.a.a.a.a.a.b.C0090b.this     // Catch:{ Exception -> 0x003a }
                        java.util.List<j.a.a.a.a.a.h> r1 = r1.f1449f     // Catch:{ Exception -> 0x003a }
                        j.a.a.a.a.a.b$b$a r2 = j.a.a.a.a.a.b.C0090b.a.this     // Catch:{ Exception -> 0x003a }
                        j.a.a.a.a.a.b$b r2 = j.a.a.a.a.a.b.C0090b.this     // Catch:{ Exception -> 0x003a }
                        j.a.a.a.a.a.k r2 = r2.f1450g     // Catch:{ Exception -> 0x003a }
                        j.a.a.a.a.a.b$b$a r3 = j.a.a.a.a.a.b.C0090b.a.this     // Catch:{ Exception -> 0x003a }
                        j.a.a.a.a.a.b$b r3 = j.a.a.a.a.a.b.C0090b.this     // Catch:{ Exception -> 0x003a }
                        j.a.a.a.a.a.g r3 = r3.f1451h     // Catch:{ Exception -> 0x003a }
                        j.a.a.a.a.a.b$b$a r4 = j.a.a.a.a.a.b.C0090b.a.this     // Catch:{ Exception -> 0x003a }
                        j.a.a.a.a.a.b$b r4 = j.a.a.a.a.a.b.C0090b.this     // Catch:{ Exception -> 0x003a }
                        android.os.Handler r4 = r4.f1452i     // Catch:{ Exception -> 0x003a }
                        r0.a(r1, r2, r3, r4)     // Catch:{ Exception -> 0x003a }
                    L_0x003a:
                        return
                    L_0x003b:
                        j.a.a.a.a.a.b$b$a r0 = j.a.a.a.a.a.b.C0090b.a.this
                        j.a.a.a.a.a.b$b r0 = j.a.a.a.a.a.b.C0090b.this
                        int r1 = r5.x
                        j.a.a.a.a.a.g r0 = r0.f1451h
                        r0.a((int) r1)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: j.a.a.a.a.a.b.C0090b.a.c.run():void");
                }
            }

            public a() {
            }

            public void onBatchScanResults(List<ScanResult> list) {
                C0090b.this.f1452i.post(new C0092b(list));
            }

            public void onScanFailed(int i2) {
                C0090b.this.f1452i.post(new c(i2));
            }

            public void onScanResult(int i2, ScanResult scanResult) {
                C0090b.this.f1452i.post(new C0091a(scanResult, i2));
            }
        }

        public /* synthetic */ C0090b(boolean z, boolean z2, List list, k kVar, g gVar, Handler handler, a aVar) {
            super(z, z2, list, kVar, gVar, handler);
        }
    }

    public void a(List<h> list, k kVar, g gVar, Handler handler) {
        C0090b bVar;
        k kVar2 = kVar;
        g gVar2 = gVar;
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        BluetoothLeScanner bluetoothLeScanner = defaultAdapter.getBluetoothLeScanner();
        if (bluetoothLeScanner != null) {
            boolean isOffloadedScanBatchingSupported = defaultAdapter.isOffloadedScanBatchingSupported();
            boolean isOffloadedFilteringSupported = defaultAdapter.isOffloadedFilteringSupported();
            synchronized (this.b) {
                if (!this.b.containsKey(gVar2)) {
                    bVar = new C0090b(isOffloadedScanBatchingSupported, isOffloadedFilteringSupported, list, kVar, gVar, handler, (a) null);
                    this.b.put(gVar2, bVar);
                } else {
                    throw new IllegalArgumentException("scanner already started with given callback");
                }
            }
            ScanSettings a2 = a(defaultAdapter, kVar2, false);
            ArrayList arrayList = null;
            if (!list.isEmpty() && isOffloadedFilteringSupported && kVar2.E) {
                arrayList = new ArrayList();
                for (h next : list) {
                    ScanFilter.Builder builder = new ScanFilter.Builder();
                    builder.setDeviceAddress(next.y).setDeviceName(next.x).setServiceUuid(next.z, next.A).setManufacturerData(next.E, next.F, next.G);
                    ParcelUuid parcelUuid = next.B;
                    if (parcelUuid != null) {
                        builder.setServiceData(parcelUuid, next.C, next.D);
                    }
                    arrayList.add(builder.build());
                }
            }
            bluetoothLeScanner.startScan(arrayList, a2, bVar.o);
            return;
        }
        throw new IllegalStateException("BT le scanner not available");
    }

    public void c(g gVar) {
        C0090b remove;
        BluetoothLeScanner bluetoothLeScanner;
        synchronized (this.b) {
            remove = this.b.remove(gVar);
        }
        if (remove != null) {
            remove.a();
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (defaultAdapter != null && (bluetoothLeScanner = defaultAdapter.getBluetoothLeScanner()) != null) {
                bluetoothLeScanner.stopScan(remove.o);
            }
        }
    }

    public void a(g gVar) {
        C0090b bVar;
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (gVar != null) {
            synchronized (this.b) {
                bVar = this.b.get(gVar);
            }
            if (bVar != null) {
                k kVar = bVar.f1450g;
                if (!defaultAdapter.isOffloadedScanBatchingSupported() || !kVar.F) {
                    bVar.b();
                    return;
                }
                BluetoothLeScanner bluetoothLeScanner = defaultAdapter.getBluetoothLeScanner();
                if (bluetoothLeScanner != null) {
                    bluetoothLeScanner.flushPendingScanResults(bVar.o);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("callback not registered!");
        }
        throw new IllegalArgumentException("callback cannot be null!");
    }

    public ScanSettings a(BluetoothAdapter bluetoothAdapter, k kVar, boolean z) {
        ScanSettings.Builder builder = new ScanSettings.Builder();
        if (z || (bluetoothAdapter.isOffloadedScanBatchingSupported() && kVar.F)) {
            builder.setReportDelay(kVar.B);
        }
        int i2 = kVar.z;
        if (i2 != -1) {
            builder.setScanMode(i2);
        } else {
            builder.setScanMode(0);
        }
        kVar.G = false;
        return builder.build();
    }

    public j a(ScanResult scanResult) {
        return new j(scanResult.getDevice(), i.a(scanResult.getScanRecord() != null ? scanResult.getScanRecord().getBytes() : null), scanResult.getRssi(), scanResult.getTimestampNanos());
    }

    public ArrayList<j> a(List<ScanResult> list) {
        ArrayList<j> arrayList = new ArrayList<>();
        for (ScanResult a2 : list) {
            arrayList.add(a(a2));
        }
        return arrayList;
    }
}
