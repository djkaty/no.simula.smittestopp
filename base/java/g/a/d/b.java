package g.a.d;

import com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsIotHubConnection;
import g.a.a;

public enum b implements a {
    EPERM,
    ENOENT,
    ESRCH,
    EINTR,
    EIO,
    ENXIO,
    E2BIG,
    ENOEXEC,
    EBADF,
    ECHILD,
    EDEADLK,
    ENOMEM,
    EACCES,
    EFAULT,
    ENOTBLK,
    EBUSY,
    EEXIST,
    EXDEV,
    ENODEV,
    ENOTDIR,
    EISDIR,
    EINVAL,
    ENFILE,
    EMFILE,
    ENOTTY,
    ETXTBSY,
    EFBIG,
    ENOSPC,
    ESPIPE,
    EROFS,
    EMLINK,
    EPIPE,
    EDOM,
    ERANGE,
    EWOULDBLOCK,
    EAGAIN,
    EINPROGRESS,
    EALREADY,
    ENOTSOCK,
    EDESTADDRREQ,
    EMSGSIZE,
    EPROTOTYPE,
    ENOPROTOOPT,
    EPROTONOSUPPORT,
    ESOCKTNOSUPPORT,
    EOPNOTSUPP,
    EPFNOSUPPORT,
    EAFNOSUPPORT,
    EADDRINUSE,
    EADDRNOTAVAIL,
    ENETDOWN,
    ENETUNREACH,
    ENETRESET,
    ECONNABORTED,
    ECONNRESET,
    ENOBUFS,
    EISCONN,
    ENOTCONN,
    ESHUTDOWN,
    ETOOMANYREFS,
    ETIMEDOUT,
    ECONNREFUSED,
    ELOOP,
    ENAMETOOLONG,
    EHOSTDOWN,
    EHOSTUNREACH,
    ENOTEMPTY,
    EUSERS,
    EDQUOT,
    ESTALE,
    EREMOTE,
    ENOLCK,
    ENOSYS,
    EOVERFLOW,
    EIDRM,
    ENOMSG,
    EILSEQ,
    EBADMSG,
    EMULTIHOP,
    ENODATA,
    ENOLINK,
    ENOSR,
    ENOSTR,
    EPROTO,
    ETIME,
    ECHRNG,
    EL2NSYNC,
    EL3HLT,
    EL3RST,
    ELNRNG,
    EUNATCH,
    ENOCSI,
    EL2HLT,
    EBADE,
    EBADR,
    EXFULL,
    ENOANO,
    EBADRQC,
    EBADSLT,
    EDEADLOCK,
    EBFONT,
    ENONET,
    ENOPKG,
    EADV,
    ESRMNT,
    ECOMM,
    EDOTDOT,
    ENOTUNIQ,
    EBADFD,
    EREMCHG,
    ELIBACC,
    ELIBBAD,
    ELIBSCN,
    ELIBMAX,
    ELIBEXEC,
    ERESTART,
    ESTRPIPE,
    EUCLEAN,
    ENOTNAM,
    ENAVAIL,
    EISNAM,
    EREMOTEIO,
    ECANCELED,
    EKEYEXPIRED,
    EKEYREJECTED,
    EKEYREVOKED,
    EMEDIUMTYPE,
    ENOKEY,
    ENOMEDIUM,
    ENOTRECOVERABLE,
    EOWNERDEAD,
    ERFKILL,
    EAUTH,
    EBADRPC,
    EDOOFUS,
    EFTYPE,
    ENEEDAUTH,
    ENOATTR,
    ENOTSUP,
    EPROCLIM,
    EPROCUNAVAIL,
    EPROGMISMATCH,
    EPROGUNAVAIL,
    ERPCMISMATCH,
    EIPSEC,
    EHWPOISON,
    ECAPMODE,
    ENOTCAPABLE,
    __UNKNOWN_CONSTANT__;
    
    public static final a<b> resolver = null;

    /* access modifiers changed from: public */
    static {
        resolver = a.a(b.class, AmqpsIotHubConnection.MAX_WAIT_TO_OPEN_CBS_LINKS, 20999);
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
        return resolver.b(this).longValue();
    }

    public final String toString() {
        return description();
    }

    public final int value() {
        return (int) resolver.b(this).longValue();
    }

    public static b valueOf(long j2) {
        return resolver.a(j2);
    }
}
