package j.b.a;

import com.microsoft.appcenter.crashes.Crashes;
import com.microsoft.azure.sdk.iot.device.exceptions.TransportException;
import com.microsoft.azure.sdk.iot.device.transport.RetryDecision;
import com.microsoft.azure.sdk.iot.device.transport.RetryPolicy;

public final class j implements RetryPolicy {
    public static final j a = new j();

    public final RetryDecision getRetryDecision(int i2, TransportException transportException) {
        Crashes.trackError(transportException);
        return new RetryDecision(false, 10000);
    }
}
