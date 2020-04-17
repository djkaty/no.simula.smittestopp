package g.a.d;

import g.a.a;

public enum d implements a {
    O_RDONLY,
    O_WRONLY,
    O_RDWR,
    O_ACCMODE,
    O_NONBLOCK,
    O_APPEND,
    O_SYNC,
    O_SHLOCK,
    O_EXLOCK,
    O_ASYNC,
    O_FSYNC,
    O_NOFOLLOW,
    O_CREAT,
    O_TRUNC,
    O_EXCL,
    O_EVTONLY,
    O_DIRECTORY,
    O_SYMLINK,
    O_BINARY,
    O_NOCTTY,
    O_TMPFILE,
    O_CLOEXEC,
    __UNKNOWN_CONSTANT__;
    
    public static final a<d> resolver = null;

    /* access modifiers changed from: public */
    static {
        resolver = new a<>(d.class, 0, true);
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

    public static d valueOf(long j2) {
        return resolver.a(j2);
    }
}
