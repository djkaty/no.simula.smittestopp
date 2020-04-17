package g.a.d;

import com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsIotHubConnection;
import g.a.a;

public enum h implements a {
    SOL_SOCKET,
    SOL_IP,
    SOL_TCP,
    SOL_UDP,
    __UNKNOWN_CONSTANT__;
    
    public static final a<h> resolver = null;

    /* access modifiers changed from: public */
    static {
        resolver = a.a(h.class, AmqpsIotHubConnection.MAX_WAIT_TO_OPEN_CBS_LINKS, 29999);
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

    public static h valueOf(long j2) {
        return resolver.a(j2);
    }
}
