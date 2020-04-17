.class public final enum Lg/a/d/i;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lg/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/a/d/i;",
        ">;",
        "Lg/a/a;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lg/a/d/i;

.field public static final enum SO_ACCEPTCONN:Lg/a/d/i;

.field public static final enum SO_ACCEPTFILTER:Lg/a/d/i;

.field public static final enum SO_ATTACH_FILTER:Lg/a/d/i;

.field public static final enum SO_BINDTODEVICE:Lg/a/d/i;

.field public static final enum SO_BROADCAST:Lg/a/d/i;

.field public static final enum SO_DEBUG:Lg/a/d/i;

.field public static final enum SO_DETACH_FILTER:Lg/a/d/i;

.field public static final enum SO_DONTROUTE:Lg/a/d/i;

.field public static final enum SO_DONTTRUNC:Lg/a/d/i;

.field public static final enum SO_ERROR:Lg/a/d/i;

.field public static final enum SO_KEEPALIVE:Lg/a/d/i;

.field public static final enum SO_LABEL:Lg/a/d/i;

.field public static final enum SO_LINGER:Lg/a/d/i;

.field public static final enum SO_NKE:Lg/a/d/i;

.field public static final enum SO_NOADDRERR:Lg/a/d/i;

.field public static final enum SO_NOSIGPIPE:Lg/a/d/i;

.field public static final enum SO_NO_CHECK:Lg/a/d/i;

.field public static final enum SO_NREAD:Lg/a/d/i;

.field public static final enum SO_NWRITE:Lg/a/d/i;

.field public static final enum SO_OOBINLINE:Lg/a/d/i;

.field public static final enum SO_PASSCRED:Lg/a/d/i;

.field public static final enum SO_PEERCRED:Lg/a/d/i;

.field public static final enum SO_PEERLABEL:Lg/a/d/i;

.field public static final enum SO_PEERNAME:Lg/a/d/i;

.field public static final enum SO_PRIORITY:Lg/a/d/i;

.field public static final enum SO_RCVBUF:Lg/a/d/i;

.field public static final enum SO_RCVLOWAT:Lg/a/d/i;

.field public static final enum SO_RCVTIMEO:Lg/a/d/i;

.field public static final enum SO_REUSEADDR:Lg/a/d/i;

.field public static final enum SO_REUSEPORT:Lg/a/d/i;

.field public static final enum SO_REUSESHAREUID:Lg/a/d/i;

.field public static final enum SO_SECURITY_AUTHENTICATION:Lg/a/d/i;

.field public static final enum SO_SECURITY_ENCRYPTION_NETWORK:Lg/a/d/i;

.field public static final enum SO_SECURITY_ENCRYPTION_TRANSPORT:Lg/a/d/i;

.field public static final enum SO_SNDBUF:Lg/a/d/i;

.field public static final enum SO_SNDLOWAT:Lg/a/d/i;

.field public static final enum SO_SNDTIMEO:Lg/a/d/i;

.field public static final enum SO_TIMESTAMP:Lg/a/d/i;

.field public static final enum SO_TYPE:Lg/a/d/i;

.field public static final enum SO_USELOOPBACK:Lg/a/d/i;

.field public static final enum SO_WANTMORE:Lg/a/d/i;

.field public static final enum SO_WANTOOBFLAG:Lg/a/d/i;

.field public static final enum __UNKNOWN_CONSTANT__:Lg/a/d/i;

.field public static final resolver:Lg/a/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/d/a<",
            "Lg/a/d/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lg/a/d/i;

    const/4 v1, 0x0

    const-string v2, "SO_DEBUG"

    invoke-direct {v0, v2, v1}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_DEBUG:Lg/a/d/i;

    .line 2
    new-instance v0, Lg/a/d/i;

    const/4 v2, 0x1

    const-string v3, "SO_ACCEPTCONN"

    invoke-direct {v0, v3, v2}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_ACCEPTCONN:Lg/a/d/i;

    .line 3
    new-instance v0, Lg/a/d/i;

    const/4 v3, 0x2

    const-string v4, "SO_REUSEADDR"

    invoke-direct {v0, v4, v3}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_REUSEADDR:Lg/a/d/i;

    .line 4
    new-instance v0, Lg/a/d/i;

    const/4 v4, 0x3

    const-string v5, "SO_KEEPALIVE"

    invoke-direct {v0, v5, v4}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_KEEPALIVE:Lg/a/d/i;

    .line 5
    new-instance v0, Lg/a/d/i;

    const/4 v5, 0x4

    const-string v6, "SO_DONTROUTE"

    invoke-direct {v0, v6, v5}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_DONTROUTE:Lg/a/d/i;

    .line 6
    new-instance v0, Lg/a/d/i;

    const/4 v6, 0x5

    const-string v7, "SO_BROADCAST"

    invoke-direct {v0, v7, v6}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_BROADCAST:Lg/a/d/i;

    .line 7
    new-instance v0, Lg/a/d/i;

    const/4 v7, 0x6

    const-string v8, "SO_USELOOPBACK"

    invoke-direct {v0, v8, v7}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_USELOOPBACK:Lg/a/d/i;

    .line 8
    new-instance v0, Lg/a/d/i;

    const/4 v8, 0x7

    const-string v9, "SO_LINGER"

    invoke-direct {v0, v9, v8}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_LINGER:Lg/a/d/i;

    .line 9
    new-instance v0, Lg/a/d/i;

    const/16 v9, 0x8

    const-string v10, "SO_OOBINLINE"

    invoke-direct {v0, v10, v9}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_OOBINLINE:Lg/a/d/i;

    .line 10
    new-instance v0, Lg/a/d/i;

    const/16 v10, 0x9

    const-string v11, "SO_REUSEPORT"

    invoke-direct {v0, v11, v10}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_REUSEPORT:Lg/a/d/i;

    .line 11
    new-instance v0, Lg/a/d/i;

    const/16 v11, 0xa

    const-string v12, "SO_TIMESTAMP"

    invoke-direct {v0, v12, v11}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_TIMESTAMP:Lg/a/d/i;

    .line 12
    new-instance v0, Lg/a/d/i;

    const/16 v12, 0xb

    const-string v13, "SO_ACCEPTFILTER"

    invoke-direct {v0, v13, v12}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_ACCEPTFILTER:Lg/a/d/i;

    .line 13
    new-instance v0, Lg/a/d/i;

    const/16 v13, 0xc

    const-string v14, "SO_DONTTRUNC"

    invoke-direct {v0, v14, v13}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_DONTTRUNC:Lg/a/d/i;

    .line 14
    new-instance v0, Lg/a/d/i;

    const/16 v14, 0xd

    const-string v15, "SO_WANTMORE"

    invoke-direct {v0, v15, v14}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_WANTMORE:Lg/a/d/i;

    .line 15
    new-instance v0, Lg/a/d/i;

    const/16 v15, 0xe

    const-string v14, "SO_WANTOOBFLAG"

    invoke-direct {v0, v14, v15}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_WANTOOBFLAG:Lg/a/d/i;

    .line 16
    new-instance v0, Lg/a/d/i;

    const/16 v14, 0xf

    const-string v15, "SO_SNDBUF"

    invoke-direct {v0, v15, v14}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_SNDBUF:Lg/a/d/i;

    .line 17
    new-instance v0, Lg/a/d/i;

    const/16 v15, 0x10

    const-string v14, "SO_RCVBUF"

    invoke-direct {v0, v14, v15}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_RCVBUF:Lg/a/d/i;

    .line 18
    new-instance v0, Lg/a/d/i;

    const/16 v14, 0x11

    const-string v15, "SO_SNDLOWAT"

    invoke-direct {v0, v15, v14}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_SNDLOWAT:Lg/a/d/i;

    .line 19
    new-instance v0, Lg/a/d/i;

    const/16 v15, 0x12

    const-string v14, "SO_RCVLOWAT"

    invoke-direct {v0, v14, v15}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_RCVLOWAT:Lg/a/d/i;

    .line 20
    new-instance v0, Lg/a/d/i;

    const/16 v14, 0x13

    const-string v15, "SO_SNDTIMEO"

    invoke-direct {v0, v15, v14}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_SNDTIMEO:Lg/a/d/i;

    .line 21
    new-instance v0, Lg/a/d/i;

    const/16 v15, 0x14

    const-string v14, "SO_RCVTIMEO"

    invoke-direct {v0, v14, v15}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_RCVTIMEO:Lg/a/d/i;

    .line 22
    new-instance v0, Lg/a/d/i;

    const/16 v14, 0x15

    const-string v15, "SO_ERROR"

    invoke-direct {v0, v15, v14}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_ERROR:Lg/a/d/i;

    .line 23
    new-instance v0, Lg/a/d/i;

    const-string v15, "SO_TYPE"

    const/16 v14, 0x16

    invoke-direct {v0, v15, v14}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_TYPE:Lg/a/d/i;

    .line 24
    new-instance v0, Lg/a/d/i;

    const-string v14, "SO_NREAD"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_NREAD:Lg/a/d/i;

    .line 25
    new-instance v0, Lg/a/d/i;

    const-string v14, "SO_NKE"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_NKE:Lg/a/d/i;

    .line 26
    new-instance v0, Lg/a/d/i;

    const-string v14, "SO_NOSIGPIPE"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_NOSIGPIPE:Lg/a/d/i;

    .line 27
    new-instance v0, Lg/a/d/i;

    const-string v14, "SO_NOADDRERR"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_NOADDRERR:Lg/a/d/i;

    .line 28
    new-instance v0, Lg/a/d/i;

    const-string v14, "SO_NWRITE"

    const/16 v15, 0x1b

    invoke-direct {v0, v14, v15}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_NWRITE:Lg/a/d/i;

    .line 29
    new-instance v0, Lg/a/d/i;

    const-string v14, "SO_REUSESHAREUID"

    const/16 v15, 0x1c

    invoke-direct {v0, v14, v15}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_REUSESHAREUID:Lg/a/d/i;

    .line 30
    new-instance v0, Lg/a/d/i;

    const-string v14, "SO_LABEL"

    const/16 v15, 0x1d

    invoke-direct {v0, v14, v15}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_LABEL:Lg/a/d/i;

    .line 31
    new-instance v0, Lg/a/d/i;

    const-string v14, "SO_PEERLABEL"

    const/16 v15, 0x1e

    invoke-direct {v0, v14, v15}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_PEERLABEL:Lg/a/d/i;

    .line 32
    new-instance v0, Lg/a/d/i;

    const-string v14, "SO_ATTACH_FILTER"

    const/16 v15, 0x1f

    invoke-direct {v0, v14, v15}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_ATTACH_FILTER:Lg/a/d/i;

    .line 33
    new-instance v0, Lg/a/d/i;

    const-string v14, "SO_BINDTODEVICE"

    const/16 v15, 0x20

    invoke-direct {v0, v14, v15}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_BINDTODEVICE:Lg/a/d/i;

    .line 34
    new-instance v0, Lg/a/d/i;

    const-string v14, "SO_DETACH_FILTER"

    const/16 v15, 0x21

    invoke-direct {v0, v14, v15}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_DETACH_FILTER:Lg/a/d/i;

    .line 35
    new-instance v0, Lg/a/d/i;

    const-string v14, "SO_NO_CHECK"

    const/16 v15, 0x22

    invoke-direct {v0, v14, v15}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_NO_CHECK:Lg/a/d/i;

    .line 36
    new-instance v0, Lg/a/d/i;

    const-string v14, "SO_PASSCRED"

    const/16 v15, 0x23

    invoke-direct {v0, v14, v15}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_PASSCRED:Lg/a/d/i;

    .line 37
    new-instance v0, Lg/a/d/i;

    const-string v14, "SO_PEERCRED"

    const/16 v15, 0x24

    invoke-direct {v0, v14, v15}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_PEERCRED:Lg/a/d/i;

    .line 38
    new-instance v0, Lg/a/d/i;

    const-string v14, "SO_PEERNAME"

    const/16 v15, 0x25

    invoke-direct {v0, v14, v15}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_PEERNAME:Lg/a/d/i;

    .line 39
    new-instance v0, Lg/a/d/i;

    const-string v14, "SO_PRIORITY"

    const/16 v15, 0x26

    invoke-direct {v0, v14, v15}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_PRIORITY:Lg/a/d/i;

    .line 40
    new-instance v0, Lg/a/d/i;

    const-string v14, "SO_SECURITY_AUTHENTICATION"

    const/16 v15, 0x27

    invoke-direct {v0, v14, v15}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_SECURITY_AUTHENTICATION:Lg/a/d/i;

    .line 41
    new-instance v0, Lg/a/d/i;

    const-string v14, "SO_SECURITY_ENCRYPTION_NETWORK"

    const/16 v15, 0x28

    invoke-direct {v0, v14, v15}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_SECURITY_ENCRYPTION_NETWORK:Lg/a/d/i;

    .line 42
    new-instance v0, Lg/a/d/i;

    const-string v14, "SO_SECURITY_ENCRYPTION_TRANSPORT"

    const/16 v15, 0x29

    invoke-direct {v0, v14, v15}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->SO_SECURITY_ENCRYPTION_TRANSPORT:Lg/a/d/i;

    .line 43
    new-instance v0, Lg/a/d/i;

    const-string v14, "__UNKNOWN_CONSTANT__"

    const/16 v15, 0x2a

    invoke-direct {v0, v14, v15}, Lg/a/d/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/i;->__UNKNOWN_CONSTANT__:Lg/a/d/i;

    const/16 v14, 0x2b

    new-array v14, v14, [Lg/a/d/i;

    .line 44
    sget-object v15, Lg/a/d/i;->SO_DEBUG:Lg/a/d/i;

    aput-object v15, v14, v1

    sget-object v1, Lg/a/d/i;->SO_ACCEPTCONN:Lg/a/d/i;

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_REUSEADDR:Lg/a/d/i;

    aput-object v1, v14, v3

    sget-object v1, Lg/a/d/i;->SO_KEEPALIVE:Lg/a/d/i;

    aput-object v1, v14, v4

    sget-object v1, Lg/a/d/i;->SO_DONTROUTE:Lg/a/d/i;

    aput-object v1, v14, v5

    sget-object v1, Lg/a/d/i;->SO_BROADCAST:Lg/a/d/i;

    aput-object v1, v14, v6

    sget-object v1, Lg/a/d/i;->SO_USELOOPBACK:Lg/a/d/i;

    aput-object v1, v14, v7

    sget-object v1, Lg/a/d/i;->SO_LINGER:Lg/a/d/i;

    aput-object v1, v14, v8

    sget-object v1, Lg/a/d/i;->SO_OOBINLINE:Lg/a/d/i;

    aput-object v1, v14, v9

    sget-object v1, Lg/a/d/i;->SO_REUSEPORT:Lg/a/d/i;

    aput-object v1, v14, v10

    sget-object v1, Lg/a/d/i;->SO_TIMESTAMP:Lg/a/d/i;

    aput-object v1, v14, v11

    sget-object v1, Lg/a/d/i;->SO_ACCEPTFILTER:Lg/a/d/i;

    aput-object v1, v14, v12

    sget-object v1, Lg/a/d/i;->SO_DONTTRUNC:Lg/a/d/i;

    aput-object v1, v14, v13

    sget-object v1, Lg/a/d/i;->SO_WANTMORE:Lg/a/d/i;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_WANTOOBFLAG:Lg/a/d/i;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_SNDBUF:Lg/a/d/i;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_RCVBUF:Lg/a/d/i;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_SNDLOWAT:Lg/a/d/i;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_RCVLOWAT:Lg/a/d/i;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_SNDTIMEO:Lg/a/d/i;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_RCVTIMEO:Lg/a/d/i;

    const/16 v2, 0x14

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_ERROR:Lg/a/d/i;

    const/16 v2, 0x15

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_TYPE:Lg/a/d/i;

    const/16 v2, 0x16

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_NREAD:Lg/a/d/i;

    const/16 v2, 0x17

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_NKE:Lg/a/d/i;

    const/16 v2, 0x18

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_NOSIGPIPE:Lg/a/d/i;

    const/16 v2, 0x19

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_NOADDRERR:Lg/a/d/i;

    const/16 v2, 0x1a

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_NWRITE:Lg/a/d/i;

    const/16 v2, 0x1b

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_REUSESHAREUID:Lg/a/d/i;

    const/16 v2, 0x1c

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_LABEL:Lg/a/d/i;

    const/16 v2, 0x1d

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_PEERLABEL:Lg/a/d/i;

    const/16 v2, 0x1e

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_ATTACH_FILTER:Lg/a/d/i;

    const/16 v2, 0x1f

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_BINDTODEVICE:Lg/a/d/i;

    const/16 v2, 0x20

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_DETACH_FILTER:Lg/a/d/i;

    const/16 v2, 0x21

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_NO_CHECK:Lg/a/d/i;

    const/16 v2, 0x22

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_PASSCRED:Lg/a/d/i;

    const/16 v2, 0x23

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_PEERCRED:Lg/a/d/i;

    const/16 v2, 0x24

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_PEERNAME:Lg/a/d/i;

    const/16 v2, 0x25

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_PRIORITY:Lg/a/d/i;

    const/16 v2, 0x26

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_SECURITY_AUTHENTICATION:Lg/a/d/i;

    const/16 v2, 0x27

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_SECURITY_ENCRYPTION_NETWORK:Lg/a/d/i;

    const/16 v2, 0x28

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/i;->SO_SECURITY_ENCRYPTION_TRANSPORT:Lg/a/d/i;

    const/16 v2, 0x29

    aput-object v1, v14, v2

    const/16 v1, 0x2a

    aput-object v0, v14, v1

    sput-object v14, Lg/a/d/i;->$VALUES:[Lg/a/d/i;

    .line 45
    const-class v0, Lg/a/d/i;

    const/16 v1, 0x4e20

    const/16 v2, 0x752f

    .line 46
    invoke-static {v0, v1, v2}, Lg/a/d/a;->a(Ljava/lang/Class;II)Lg/a/d/a;

    move-result-object v0

    sput-object v0, Lg/a/d/i;->resolver:Lg/a/d/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(J)Lg/a/d/i;
    .locals 1

    .line 2
    sget-object v0, Lg/a/d/i;->resolver:Lg/a/d/a;

    invoke-virtual {v0, p0, p1}, Lg/a/d/a;->a(J)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/a/d/i;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lg/a/d/i;
    .locals 1

    .line 1
    const-class v0, Lg/a/d/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/a/d/i;

    return-object p0
.end method

.method public static values()[Lg/a/d/i;
    .locals 1

    .line 1
    sget-object v0, Lg/a/d/i;->$VALUES:[Lg/a/d/i;

    invoke-virtual {v0}, [Lg/a/d/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/a/d/i;

    return-object v0
.end method


# virtual methods
.method public final defined()Z
    .locals 1

    .line 1
    sget-object v0, Lg/a/d/i;->resolver:Lg/a/d/a;

    invoke-virtual {v0, p0}, Lg/a/d/a;->a(Ljava/lang/Enum;)Z

    move-result v0

    return v0
.end method

.method public final description()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lg/a/d/i;->resolver:Lg/a/d/a;

    .line 2
    invoke-virtual {v0, p0}, Lg/a/d/a;->b(Ljava/lang/Enum;)Lg/a/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final intValue()I
    .locals 2

    .line 1
    sget-object v0, Lg/a/d/i;->resolver:Lg/a/d/a;

    .line 2
    invoke-virtual {v0, p0}, Lg/a/d/a;->b(Ljava/lang/Enum;)Lg/a/a;

    move-result-object v0

    invoke-interface {v0}, Lg/a/a;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public final longValue()J
    .locals 2

    .line 1
    sget-object v0, Lg/a/d/i;->resolver:Lg/a/d/a;

    invoke-virtual {v0, p0}, Lg/a/d/a;->c(Ljava/lang/Enum;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/a/d/i;->description()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final value()I
    .locals 2

    .line 1
    sget-object v0, Lg/a/d/i;->resolver:Lg/a/d/a;

    .line 2
    invoke-virtual {v0, p0}, Lg/a/d/a;->b(Ljava/lang/Enum;)Lg/a/a;

    move-result-object v0

    invoke-interface {v0}, Lg/a/a;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method
