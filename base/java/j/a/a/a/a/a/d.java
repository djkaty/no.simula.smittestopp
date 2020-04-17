package j.a.a.a.a.a;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.le.ScanResult;
import android.bluetooth.le.ScanSettings;
import android.os.Handler;
import j.a.a.a.a.a.a;
import java.util.HashMap;
import java.util.List;

@TargetApi(26)
public class d extends c {

    /* renamed from: c  reason: collision with root package name */
    public final HashMap<PendingIntent, a> f1456c = new HashMap<>();

    public static class a extends a.C0087a {
        public final f o = ((f) this.f1451h);

        public a(boolean z, boolean z2, List<h> list, k kVar, PendingIntent pendingIntent) {
            super(z, z2, list, kVar, new f(pendingIntent, kVar), new Handler());
        }
    }

    public a a(PendingIntent pendingIntent) {
        synchronized (this.f1456c) {
            if (!this.f1456c.containsKey(pendingIntent)) {
                return null;
            }
            a aVar = this.f1456c.get(pendingIntent);
            if (aVar != null) {
                return aVar;
            }
            throw new IllegalStateException("Scanning has been stopped");
        }
    }

    public void a(PendingIntent pendingIntent, a aVar) {
        synchronized (this.f1456c) {
            this.f1456c.put(pendingIntent, aVar);
        }
    }

    public ScanSettings a(BluetoothAdapter bluetoothAdapter, k kVar, boolean z) {
        ScanSettings.Builder builder = new ScanSettings.Builder();
        if (z || (bluetoothAdapter.isOffloadedScanBatchingSupported() && kVar.F)) {
            builder.setReportDelay(kVar.B);
        }
        if (z || kVar.G) {
            builder.setCallbackType(kVar.A).setMatchMode(kVar.C).setNumOfMatches(kVar.D);
        }
        builder.setScanMode(kVar.z).setLegacy(kVar.J).setPhy(kVar.K);
        return builder.build();
    }

    public j a(ScanResult scanResult) {
        return new j(scanResult.getDevice(), ((scanResult.getDataStatus() << 5) | (scanResult.isLegacy() ? 16 : 0)) | scanResult.isConnectable() ? 1 : 0, scanResult.getPrimaryPhy(), scanResult.getSecondaryPhy(), scanResult.getAdvertisingSid(), scanResult.getTxPower(), scanResult.getRssi(), scanResult.getPeriodicAdvertisingInterval(), i.a(scanResult.getScanRecord() != null ? scanResult.getScanRecord().getBytes() : null), scanResult.getTimestampNanos());
    }
}
