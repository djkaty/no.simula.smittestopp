package g.a.d;

import com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsIotHubConnection;
import g.a.a;

public enum c implements a {
    FAPPEND,
    FREAD,
    FWRITE,
    FASYNC,
    FFSYNC,
    FNONBLOCK,
    FNDELAY,
    F_DUPFD,
    F_GETFD,
    F_SETFD,
    F_GETFL,
    F_SETFL,
    F_GETOWN,
    F_SETOWN,
    F_GETLK,
    F_SETLK,
    F_SETLKW,
    F_CHKCLEAN,
    F_PREALLOCATE,
    F_SETSIZE,
    F_RDADVISE,
    F_RDAHEAD,
    F_READBOOTSTRAP,
    F_WRITEBOOTSTRAP,
    F_NOCACHE,
    F_LOG2PHYS,
    F_GETPATH,
    F_FULLFSYNC,
    F_PATHPKG_CHECK,
    F_FREEZE_FS,
    F_THAW_FS,
    F_GLOBAL_NOCACHE,
    F_ADDSIGS,
    F_MARKDEPENDENCY,
    F_RDLCK,
    F_UNLCK,
    F_WRLCK,
    F_ALLOCATECONTIG,
    F_ALLOCATEALL,
    __UNKNOWN_CONSTANT__;
    
    public static final a<c> resolver = null;

    /* access modifiers changed from: public */
    static {
        resolver = a.a(c.class, AmqpsIotHubConnection.MAX_WAIT_TO_OPEN_CBS_LINKS, 20999);
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

    public static c valueOf(long j2) {
        return resolver.a(j2);
    }
}
