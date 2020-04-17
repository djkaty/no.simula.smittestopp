package g.a.d;

import com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsIotHubConnection;
import g.a.a;

public enum e implements a {
    PF_UNSPEC,
    PF_LOCAL,
    PF_UNIX,
    PF_INET,
    PF_IMPLINK,
    PF_PUP,
    PF_CHAOS,
    PF_NS,
    PF_ISO,
    PF_OSI,
    PF_ECMA,
    PF_DATAKIT,
    PF_CCITT,
    PF_SNA,
    PF_DECnet,
    PF_DLI,
    PF_LAT,
    PF_HYLINK,
    PF_APPLETALK,
    PF_ROUTE,
    PF_LINK,
    PF_XTP,
    PF_COIP,
    PF_CNT,
    PF_SIP,
    PF_IPX,
    PF_RTIP,
    PF_PIP,
    PF_NDRV,
    PF_ISDN,
    PF_KEY,
    PF_INET6,
    PF_NATM,
    PF_SYSTEM,
    PF_NETBIOS,
    PF_PPP,
    PF_ATM,
    PF_NETGRAPH,
    PF_MAX,
    __UNKNOWN_CONSTANT__;
    
    public static final a<e> resolver = null;

    /* access modifiers changed from: public */
    static {
        resolver = a.a(e.class, AmqpsIotHubConnection.MAX_WAIT_TO_OPEN_CBS_LINKS, 29999);
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

    public static e valueOf(long j2) {
        return resolver.a(j2);
    }
}
