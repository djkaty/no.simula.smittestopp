.class public final enum Lg/a/d/d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lg/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/a/d/d;",
        ">;",
        "Lg/a/a;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lg/a/d/d;

.field public static final enum O_ACCMODE:Lg/a/d/d;

.field public static final enum O_APPEND:Lg/a/d/d;

.field public static final enum O_ASYNC:Lg/a/d/d;

.field public static final enum O_BINARY:Lg/a/d/d;

.field public static final enum O_CLOEXEC:Lg/a/d/d;

.field public static final enum O_CREAT:Lg/a/d/d;

.field public static final enum O_DIRECTORY:Lg/a/d/d;

.field public static final enum O_EVTONLY:Lg/a/d/d;

.field public static final enum O_EXCL:Lg/a/d/d;

.field public static final enum O_EXLOCK:Lg/a/d/d;

.field public static final enum O_FSYNC:Lg/a/d/d;

.field public static final enum O_NOCTTY:Lg/a/d/d;

.field public static final enum O_NOFOLLOW:Lg/a/d/d;

.field public static final enum O_NONBLOCK:Lg/a/d/d;

.field public static final enum O_RDONLY:Lg/a/d/d;

.field public static final enum O_RDWR:Lg/a/d/d;

.field public static final enum O_SHLOCK:Lg/a/d/d;

.field public static final enum O_SYMLINK:Lg/a/d/d;

.field public static final enum O_SYNC:Lg/a/d/d;

.field public static final enum O_TMPFILE:Lg/a/d/d;

.field public static final enum O_TRUNC:Lg/a/d/d;

.field public static final enum O_WRONLY:Lg/a/d/d;

.field public static final enum __UNKNOWN_CONSTANT__:Lg/a/d/d;

.field public static final resolver:Lg/a/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/d/a<",
            "Lg/a/d/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lg/a/d/d;

    const/4 v1, 0x0

    const-string v2, "O_RDONLY"

    invoke-direct {v0, v2, v1}, Lg/a/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/d;->O_RDONLY:Lg/a/d/d;

    .line 2
    new-instance v0, Lg/a/d/d;

    const/4 v2, 0x1

    const-string v3, "O_WRONLY"

    invoke-direct {v0, v3, v2}, Lg/a/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/d;->O_WRONLY:Lg/a/d/d;

    .line 3
    new-instance v0, Lg/a/d/d;

    const/4 v3, 0x2

    const-string v4, "O_RDWR"

    invoke-direct {v0, v4, v3}, Lg/a/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/d;->O_RDWR:Lg/a/d/d;

    .line 4
    new-instance v0, Lg/a/d/d;

    const/4 v4, 0x3

    const-string v5, "O_ACCMODE"

    invoke-direct {v0, v5, v4}, Lg/a/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/d;->O_ACCMODE:Lg/a/d/d;

    .line 5
    new-instance v0, Lg/a/d/d;

    const/4 v5, 0x4

    const-string v6, "O_NONBLOCK"

    invoke-direct {v0, v6, v5}, Lg/a/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/d;->O_NONBLOCK:Lg/a/d/d;

    .line 6
    new-instance v0, Lg/a/d/d;

    const/4 v6, 0x5

    const-string v7, "O_APPEND"

    invoke-direct {v0, v7, v6}, Lg/a/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/d;->O_APPEND:Lg/a/d/d;

    .line 7
    new-instance v0, Lg/a/d/d;

    const/4 v7, 0x6

    const-string v8, "O_SYNC"

    invoke-direct {v0, v8, v7}, Lg/a/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/d;->O_SYNC:Lg/a/d/d;

    .line 8
    new-instance v0, Lg/a/d/d;

    const/4 v8, 0x7

    const-string v9, "O_SHLOCK"

    invoke-direct {v0, v9, v8}, Lg/a/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/d;->O_SHLOCK:Lg/a/d/d;

    .line 9
    new-instance v0, Lg/a/d/d;

    const/16 v9, 0x8

    const-string v10, "O_EXLOCK"

    invoke-direct {v0, v10, v9}, Lg/a/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/d;->O_EXLOCK:Lg/a/d/d;

    .line 10
    new-instance v0, Lg/a/d/d;

    const/16 v10, 0x9

    const-string v11, "O_ASYNC"

    invoke-direct {v0, v11, v10}, Lg/a/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/d;->O_ASYNC:Lg/a/d/d;

    .line 11
    new-instance v0, Lg/a/d/d;

    const/16 v11, 0xa

    const-string v12, "O_FSYNC"

    invoke-direct {v0, v12, v11}, Lg/a/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/d;->O_FSYNC:Lg/a/d/d;

    .line 12
    new-instance v0, Lg/a/d/d;

    const/16 v12, 0xb

    const-string v13, "O_NOFOLLOW"

    invoke-direct {v0, v13, v12}, Lg/a/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/d;->O_NOFOLLOW:Lg/a/d/d;

    .line 13
    new-instance v0, Lg/a/d/d;

    const/16 v13, 0xc

    const-string v14, "O_CREAT"

    invoke-direct {v0, v14, v13}, Lg/a/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/d;->O_CREAT:Lg/a/d/d;

    .line 14
    new-instance v0, Lg/a/d/d;

    const/16 v14, 0xd

    const-string v15, "O_TRUNC"

    invoke-direct {v0, v15, v14}, Lg/a/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/d;->O_TRUNC:Lg/a/d/d;

    .line 15
    new-instance v0, Lg/a/d/d;

    const/16 v15, 0xe

    const-string v14, "O_EXCL"

    invoke-direct {v0, v14, v15}, Lg/a/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/d;->O_EXCL:Lg/a/d/d;

    .line 16
    new-instance v0, Lg/a/d/d;

    const/16 v14, 0xf

    const-string v15, "O_EVTONLY"

    invoke-direct {v0, v15, v14}, Lg/a/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/d;->O_EVTONLY:Lg/a/d/d;

    .line 17
    new-instance v0, Lg/a/d/d;

    const/16 v15, 0x10

    const-string v14, "O_DIRECTORY"

    invoke-direct {v0, v14, v15}, Lg/a/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/d;->O_DIRECTORY:Lg/a/d/d;

    .line 18
    new-instance v0, Lg/a/d/d;

    const/16 v14, 0x11

    const-string v15, "O_SYMLINK"

    invoke-direct {v0, v15, v14}, Lg/a/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/d;->O_SYMLINK:Lg/a/d/d;

    .line 19
    new-instance v0, Lg/a/d/d;

    const/16 v15, 0x12

    const-string v14, "O_BINARY"

    invoke-direct {v0, v14, v15}, Lg/a/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/d;->O_BINARY:Lg/a/d/d;

    .line 20
    new-instance v0, Lg/a/d/d;

    const/16 v14, 0x13

    const-string v15, "O_NOCTTY"

    invoke-direct {v0, v15, v14}, Lg/a/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/d;->O_NOCTTY:Lg/a/d/d;

    .line 21
    new-instance v0, Lg/a/d/d;

    const/16 v15, 0x14

    const-string v14, "O_TMPFILE"

    invoke-direct {v0, v14, v15}, Lg/a/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/d;->O_TMPFILE:Lg/a/d/d;

    .line 22
    new-instance v0, Lg/a/d/d;

    const/16 v14, 0x15

    const-string v15, "O_CLOEXEC"

    invoke-direct {v0, v15, v14}, Lg/a/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/d;->O_CLOEXEC:Lg/a/d/d;

    .line 23
    new-instance v0, Lg/a/d/d;

    const-string v15, "__UNKNOWN_CONSTANT__"

    const/16 v14, 0x16

    invoke-direct {v0, v15, v14}, Lg/a/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/d;->__UNKNOWN_CONSTANT__:Lg/a/d/d;

    const/16 v14, 0x17

    new-array v14, v14, [Lg/a/d/d;

    .line 24
    sget-object v15, Lg/a/d/d;->O_RDONLY:Lg/a/d/d;

    aput-object v15, v14, v1

    sget-object v15, Lg/a/d/d;->O_WRONLY:Lg/a/d/d;

    aput-object v15, v14, v2

    sget-object v15, Lg/a/d/d;->O_RDWR:Lg/a/d/d;

    aput-object v15, v14, v3

    sget-object v3, Lg/a/d/d;->O_ACCMODE:Lg/a/d/d;

    aput-object v3, v14, v4

    sget-object v3, Lg/a/d/d;->O_NONBLOCK:Lg/a/d/d;

    aput-object v3, v14, v5

    sget-object v3, Lg/a/d/d;->O_APPEND:Lg/a/d/d;

    aput-object v3, v14, v6

    sget-object v3, Lg/a/d/d;->O_SYNC:Lg/a/d/d;

    aput-object v3, v14, v7

    sget-object v3, Lg/a/d/d;->O_SHLOCK:Lg/a/d/d;

    aput-object v3, v14, v8

    sget-object v3, Lg/a/d/d;->O_EXLOCK:Lg/a/d/d;

    aput-object v3, v14, v9

    sget-object v3, Lg/a/d/d;->O_ASYNC:Lg/a/d/d;

    aput-object v3, v14, v10

    sget-object v3, Lg/a/d/d;->O_FSYNC:Lg/a/d/d;

    aput-object v3, v14, v11

    sget-object v3, Lg/a/d/d;->O_NOFOLLOW:Lg/a/d/d;

    aput-object v3, v14, v12

    sget-object v3, Lg/a/d/d;->O_CREAT:Lg/a/d/d;

    aput-object v3, v14, v13

    sget-object v3, Lg/a/d/d;->O_TRUNC:Lg/a/d/d;

    const/16 v4, 0xd

    aput-object v3, v14, v4

    sget-object v3, Lg/a/d/d;->O_EXCL:Lg/a/d/d;

    const/16 v4, 0xe

    aput-object v3, v14, v4

    sget-object v3, Lg/a/d/d;->O_EVTONLY:Lg/a/d/d;

    const/16 v4, 0xf

    aput-object v3, v14, v4

    sget-object v3, Lg/a/d/d;->O_DIRECTORY:Lg/a/d/d;

    const/16 v4, 0x10

    aput-object v3, v14, v4

    sget-object v3, Lg/a/d/d;->O_SYMLINK:Lg/a/d/d;

    const/16 v4, 0x11

    aput-object v3, v14, v4

    sget-object v3, Lg/a/d/d;->O_BINARY:Lg/a/d/d;

    const/16 v4, 0x12

    aput-object v3, v14, v4

    sget-object v3, Lg/a/d/d;->O_NOCTTY:Lg/a/d/d;

    const/16 v4, 0x13

    aput-object v3, v14, v4

    sget-object v3, Lg/a/d/d;->O_TMPFILE:Lg/a/d/d;

    const/16 v4, 0x14

    aput-object v3, v14, v4

    sget-object v3, Lg/a/d/d;->O_CLOEXEC:Lg/a/d/d;

    const/16 v4, 0x15

    aput-object v3, v14, v4

    const/16 v3, 0x16

    aput-object v0, v14, v3

    sput-object v14, Lg/a/d/d;->$VALUES:[Lg/a/d/d;

    .line 25
    const-class v0, Lg/a/d/d;

    .line 26
    new-instance v3, Lg/a/d/a;

    invoke-direct {v3, v0, v1, v2}, Lg/a/d/a;-><init>(Ljava/lang/Class;IZ)V

    .line 27
    sput-object v3, Lg/a/d/d;->resolver:Lg/a/d/a;

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

.method public static valueOf(J)Lg/a/d/d;
    .locals 1

    .line 2
    sget-object v0, Lg/a/d/d;->resolver:Lg/a/d/a;

    invoke-virtual {v0, p0, p1}, Lg/a/d/a;->a(J)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/a/d/d;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lg/a/d/d;
    .locals 1

    .line 1
    const-class v0, Lg/a/d/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/a/d/d;

    return-object p0
.end method

.method public static values()[Lg/a/d/d;
    .locals 1

    .line 1
    sget-object v0, Lg/a/d/d;->$VALUES:[Lg/a/d/d;

    invoke-virtual {v0}, [Lg/a/d/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/a/d/d;

    return-object v0
.end method


# virtual methods
.method public final defined()Z
    .locals 1

    .line 1
    sget-object v0, Lg/a/d/d;->resolver:Lg/a/d/a;

    invoke-virtual {v0, p0}, Lg/a/d/a;->a(Ljava/lang/Enum;)Z

    move-result v0

    return v0
.end method

.method public final description()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lg/a/d/d;->resolver:Lg/a/d/a;

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
    sget-object v0, Lg/a/d/d;->resolver:Lg/a/d/a;

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
    sget-object v0, Lg/a/d/d;->resolver:Lg/a/d/a;

    invoke-virtual {v0, p0}, Lg/a/d/a;->c(Ljava/lang/Enum;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/a/d/d;->description()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final value()I
    .locals 2

    .line 1
    sget-object v0, Lg/a/d/d;->resolver:Lg/a/d/a;

    .line 2
    invoke-virtual {v0, p0}, Lg/a/d/a;->b(Ljava/lang/Enum;)Lg/a/a;

    move-result-object v0

    invoke-interface {v0}, Lg/a/a;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method
