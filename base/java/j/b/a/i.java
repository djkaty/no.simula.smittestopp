package j.b.a;

import com.microsoft.appcenter.analytics.Analytics;
import com.microsoft.appcenter.crashes.Crashes;
import com.microsoft.appcenter.crashes.ingestion.models.ErrorAttachmentLog;
import com.microsoft.azure.sdk.iot.device.IotHubConnectionStatusChangeCallback;
import com.microsoft.azure.sdk.iot.device.IotHubConnectionStatusChangeReason;
import com.microsoft.azure.sdk.iot.device.transport.IotHubConnectionStatus;
import e.a.a.a.a;
import java.util.LinkedHashMap;

public final class i implements IotHubConnectionStatusChangeCallback {
    public final /* synthetic */ h a;

    public i(h hVar) {
        this.a = hVar;
    }

    public final void execute(IotHubConnectionStatus iotHubConnectionStatus, IotHubConnectionStatusChangeReason iotHubConnectionStatusChangeReason, Throwable th, Object obj) {
        String str;
        String str2;
        if (th != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("where", "IoTHubDevice::registerConnectionStatus");
            Crashes.trackError(th, linkedHashMap, (Iterable<ErrorAttachmentLog>) null);
        }
        h hVar = this.a;
        hVar.f1511e = false;
        hVar.f1509c = iotHubConnectionStatus != null && iotHubConnectionStatus.ordinal() == 0;
        if (iotHubConnectionStatusChangeReason == null || (str = iotHubConnectionStatusChangeReason.name()) == null) {
            str = "null";
        }
        if (iotHubConnectionStatus == null || (str2 = iotHubConnectionStatus.name()) == null) {
            str2 = "null-status";
        }
        String a2 = a.a(str2, " because ", str);
        l.a.a.f2455d.b(a2, new Object[0]);
        Analytics.trackEvent(a2);
    }
}
