package g.a.d;

import com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsIotHubConnection;
import g.a.a;

public enum f implements a {
    SHUT_RD,
    SHUT_WR,
    SHUT_RDWR,
    __UNKNOWN_CONSTANT__;
    
    public static final a<f> resolver = null;

    /* access modifiers changed from: public */
    static {
        resolver = a.a(f.class, AmqpsIotHubConnection.MAX_WAIT_TO_OPEN_CBS_LINKS, 29999);
    }

    public final boolean defined() {
        return resolver.a(this);
    }

    public final String description() {
        return resolver.b(this).toString();
    }

    public final int intValue() {
        return (int) resolver.b(this).longValue();
    }

    public final long longValue() {
        return resolver.c(this);
    }

    public final String toString() {
        return description();
    }

    public final int value() {
        return (int) resolver.b(this).longValue();
    }

    public static f valueOf(long j2) {
        return resolver.a(j2);
    }
}
