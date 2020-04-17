package g.a.d;

import com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsIotHubConnection;
import g.a.a;

public enum i implements a {
    SO_DEBUG,
    SO_ACCEPTCONN,
    SO_REUSEADDR,
    SO_KEEPALIVE,
    SO_DONTROUTE,
    SO_BROADCAST,
    SO_USELOOPBACK,
    SO_LINGER,
    SO_OOBINLINE,
    SO_REUSEPORT,
    SO_TIMESTAMP,
    SO_ACCEPTFILTER,
    SO_DONTTRUNC,
    SO_WANTMORE,
    SO_WANTOOBFLAG,
    SO_SNDBUF,
    SO_RCVBUF,
    SO_SNDLOWAT,
    SO_RCVLOWAT,
    SO_SNDTIMEO,
    SO_RCVTIMEO,
    SO_ERROR,
    SO_TYPE,
    SO_NREAD,
    SO_NKE,
    SO_NOSIGPIPE,
    SO_NOADDRERR,
    SO_NWRITE,
    SO_REUSESHAREUID,
    SO_LABEL,
    SO_PEERLABEL,
    SO_ATTACH_FILTER,
    SO_BINDTODEVICE,
    SO_DETACH_FILTER,
    SO_NO_CHECK,
    SO_PASSCRED,
    SO_PEERCRED,
    SO_PEERNAME,
    SO_PRIORITY,
    SO_SECURITY_AUTHENTICATION,
    SO_SECURITY_ENCRYPTION_NETWORK,
    SO_SECURITY_ENCRYPTION_TRANSPORT,
    __UNKNOWN_CONSTANT__;
    
    public static final a<i> resolver = null;

    /* access modifiers changed from: public */
    static {
        resolver = a.a(i.class, AmqpsIotHubConnection.MAX_WAIT_TO_OPEN_CBS_LINKS, 29999);
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

    public static i valueOf(long j2) {
        return resolver.a(j2);
    }
}
