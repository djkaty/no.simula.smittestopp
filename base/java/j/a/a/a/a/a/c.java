package j.a.a.a.a.a;

import android.annotation.TargetApi;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.le.ScanSettings;

@TargetApi(23)
public class c extends b {
    public ScanSettings a(BluetoothAdapter bluetoothAdapter, k kVar, boolean z) {
        ScanSettings.Builder builder = new ScanSettings.Builder();
        if (z || (bluetoothAdapter.isOffloadedScanBatchingSupported() && kVar.F)) {
            builder.setReportDelay(kVar.B);
        }
        if (z || kVar.G) {
            builder.setCallbackType(kVar.A).setMatchMode(kVar.C).setNumOfMatches(kVar.D);
        }
        builder.setScanMode(kVar.z);
        return builder.build();
    }
}
