package k.a.b.a.b.n;

import com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpConnectionForcedException;
import com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpConnectionFramingErrorException;
import com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpConnectionRedirectException;
import k.a.b.a.b.f;

public interface d {
    public static final f a = f.a(AmqpConnectionFramingErrorException.errorCode);

    static {
        f.a(AmqpConnectionForcedException.errorCode);
        f.a(AmqpConnectionRedirectException.errorCode);
    }
}
