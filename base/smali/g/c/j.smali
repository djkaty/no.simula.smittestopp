.class public final enum Lg/c/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/c/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lg/c/j;

.field public static final enum blkcnt_t:Lg/c/j;

.field public static final enum blksize_t:Lg/c/j;

.field public static final enum caddr_t:Lg/c/j;

.field public static final enum cc_t:Lg/c/j;

.field public static final enum clock_t:Lg/c/j;

.field public static final enum dev_t:Lg/c/j;

.field public static final enum fsblkcnt_t:Lg/c/j;

.field public static final enum fsfilcnt_t:Lg/c/j;

.field public static final enum gid_t:Lg/c/j;

.field public static final enum id_t:Lg/c/j;

.field public static final enum in_addr_t:Lg/c/j;

.field public static final enum in_port_t:Lg/c/j;

.field public static final enum ino64_t:Lg/c/j;

.field public static final enum ino_t:Lg/c/j;

.field public static final enum int16_t:Lg/c/j;

.field public static final enum int32_t:Lg/c/j;

.field public static final enum int64_t:Lg/c/j;

.field public static final enum int8_t:Lg/c/j;

.field public static final enum intptr_t:Lg/c/j;

.field public static final enum key_t:Lg/c/j;

.field public static final enum mode_t:Lg/c/j;

.field public static final enum nlink_t:Lg/c/j;

.field public static final enum off_t:Lg/c/j;

.field public static final enum pid_t:Lg/c/j;

.field public static final enum rlim_t:Lg/c/j;

.field public static final enum sa_family_t:Lg/c/j;

.field public static final enum size_t:Lg/c/j;

.field public static final enum socklen_t:Lg/c/j;

.field public static final enum speed_t:Lg/c/j;

.field public static final enum ssize_t:Lg/c/j;

.field public static final enum swblk_t:Lg/c/j;

.field public static final enum tcflag_t:Lg/c/j;

.field public static final enum time_t:Lg/c/j;

.field public static final enum u_int16_t:Lg/c/j;

.field public static final enum u_int32_t:Lg/c/j;

.field public static final enum u_int64_t:Lg/c/j;

.field public static final enum u_int8_t:Lg/c/j;

.field public static final enum uid_t:Lg/c/j;

.field public static final enum uintptr_t:Lg/c/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lg/c/j;

    const/4 v1, 0x0

    const-string v2, "int8_t"

    invoke-direct {v0, v2, v1}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->int8_t:Lg/c/j;

    .line 2
    new-instance v0, Lg/c/j;

    const/4 v2, 0x1

    const-string v3, "u_int8_t"

    invoke-direct {v0, v3, v2}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->u_int8_t:Lg/c/j;

    .line 3
    new-instance v0, Lg/c/j;

    const/4 v3, 0x2

    const-string v4, "int16_t"

    invoke-direct {v0, v4, v3}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->int16_t:Lg/c/j;

    .line 4
    new-instance v0, Lg/c/j;

    const/4 v4, 0x3

    const-string v5, "u_int16_t"

    invoke-direct {v0, v5, v4}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->u_int16_t:Lg/c/j;

    .line 5
    new-instance v0, Lg/c/j;

    const/4 v5, 0x4

    const-string v6, "int32_t"

    invoke-direct {v0, v6, v5}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->int32_t:Lg/c/j;

    .line 6
    new-instance v0, Lg/c/j;

    const/4 v6, 0x5

    const-string v7, "u_int32_t"

    invoke-direct {v0, v7, v6}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->u_int32_t:Lg/c/j;

    .line 7
    new-instance v0, Lg/c/j;

    const/4 v7, 0x6

    const-string v8, "int64_t"

    invoke-direct {v0, v8, v7}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->int64_t:Lg/c/j;

    .line 8
    new-instance v0, Lg/c/j;

    const/4 v8, 0x7

    const-string v9, "u_int64_t"

    invoke-direct {v0, v9, v8}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->u_int64_t:Lg/c/j;

    .line 9
    new-instance v0, Lg/c/j;

    const/16 v9, 0x8

    const-string v10, "intptr_t"

    invoke-direct {v0, v10, v9}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->intptr_t:Lg/c/j;

    .line 10
    new-instance v0, Lg/c/j;

    const/16 v10, 0x9

    const-string v11, "uintptr_t"

    invoke-direct {v0, v11, v10}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->uintptr_t:Lg/c/j;

    .line 11
    new-instance v0, Lg/c/j;

    const/16 v11, 0xa

    const-string v12, "caddr_t"

    invoke-direct {v0, v12, v11}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->caddr_t:Lg/c/j;

    .line 12
    new-instance v0, Lg/c/j;

    const/16 v12, 0xb

    const-string v13, "dev_t"

    invoke-direct {v0, v13, v12}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->dev_t:Lg/c/j;

    .line 13
    new-instance v0, Lg/c/j;

    const/16 v13, 0xc

    const-string v14, "blkcnt_t"

    invoke-direct {v0, v14, v13}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->blkcnt_t:Lg/c/j;

    .line 14
    new-instance v0, Lg/c/j;

    const/16 v14, 0xd

    const-string v15, "blksize_t"

    invoke-direct {v0, v15, v14}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->blksize_t:Lg/c/j;

    .line 15
    new-instance v0, Lg/c/j;

    const/16 v15, 0xe

    const-string v14, "gid_t"

    invoke-direct {v0, v14, v15}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->gid_t:Lg/c/j;

    .line 16
    new-instance v0, Lg/c/j;

    const/16 v14, 0xf

    const-string v15, "in_addr_t"

    invoke-direct {v0, v15, v14}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->in_addr_t:Lg/c/j;

    .line 17
    new-instance v0, Lg/c/j;

    const/16 v15, 0x10

    const-string v14, "in_port_t"

    invoke-direct {v0, v14, v15}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->in_port_t:Lg/c/j;

    .line 18
    new-instance v0, Lg/c/j;

    const/16 v14, 0x11

    const-string v15, "ino_t"

    invoke-direct {v0, v15, v14}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->ino_t:Lg/c/j;

    .line 19
    new-instance v0, Lg/c/j;

    const/16 v15, 0x12

    const-string v14, "ino64_t"

    invoke-direct {v0, v14, v15}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->ino64_t:Lg/c/j;

    .line 20
    new-instance v0, Lg/c/j;

    const/16 v14, 0x13

    const-string v15, "key_t"

    invoke-direct {v0, v15, v14}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->key_t:Lg/c/j;

    .line 21
    new-instance v0, Lg/c/j;

    const/16 v15, 0x14

    const-string v14, "mode_t"

    invoke-direct {v0, v14, v15}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->mode_t:Lg/c/j;

    .line 22
    new-instance v0, Lg/c/j;

    const/16 v14, 0x15

    const-string v15, "nlink_t"

    invoke-direct {v0, v15, v14}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->nlink_t:Lg/c/j;

    .line 23
    new-instance v0, Lg/c/j;

    const-string v15, "id_t"

    const/16 v14, 0x16

    invoke-direct {v0, v15, v14}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->id_t:Lg/c/j;

    .line 24
    new-instance v0, Lg/c/j;

    const-string v14, "pid_t"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->pid_t:Lg/c/j;

    .line 25
    new-instance v0, Lg/c/j;

    const-string v14, "off_t"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->off_t:Lg/c/j;

    .line 26
    new-instance v0, Lg/c/j;

    const-string v14, "swblk_t"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->swblk_t:Lg/c/j;

    .line 27
    new-instance v0, Lg/c/j;

    const-string v14, "uid_t"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->uid_t:Lg/c/j;

    .line 28
    new-instance v0, Lg/c/j;

    const-string v14, "clock_t"

    const/16 v15, 0x1b

    invoke-direct {v0, v14, v15}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->clock_t:Lg/c/j;

    .line 29
    new-instance v0, Lg/c/j;

    const-string v14, "size_t"

    const/16 v15, 0x1c

    invoke-direct {v0, v14, v15}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->size_t:Lg/c/j;

    .line 30
    new-instance v0, Lg/c/j;

    const-string v14, "ssize_t"

    const/16 v15, 0x1d

    invoke-direct {v0, v14, v15}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->ssize_t:Lg/c/j;

    .line 31
    new-instance v0, Lg/c/j;

    const-string v14, "time_t"

    const/16 v15, 0x1e

    invoke-direct {v0, v14, v15}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->time_t:Lg/c/j;

    .line 32
    new-instance v0, Lg/c/j;

    const-string v14, "fsblkcnt_t"

    const/16 v15, 0x1f

    invoke-direct {v0, v14, v15}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->fsblkcnt_t:Lg/c/j;

    .line 33
    new-instance v0, Lg/c/j;

    const-string v14, "fsfilcnt_t"

    const/16 v15, 0x20

    invoke-direct {v0, v14, v15}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->fsfilcnt_t:Lg/c/j;

    .line 34
    new-instance v0, Lg/c/j;

    const-string v14, "sa_family_t"

    const/16 v15, 0x21

    invoke-direct {v0, v14, v15}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->sa_family_t:Lg/c/j;

    .line 35
    new-instance v0, Lg/c/j;

    const-string v14, "socklen_t"

    const/16 v15, 0x22

    invoke-direct {v0, v14, v15}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->socklen_t:Lg/c/j;

    .line 36
    new-instance v0, Lg/c/j;

    const-string v14, "rlim_t"

    const/16 v15, 0x23

    invoke-direct {v0, v14, v15}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->rlim_t:Lg/c/j;

    .line 37
    new-instance v0, Lg/c/j;

    const-string v14, "cc_t"

    const/16 v15, 0x24

    invoke-direct {v0, v14, v15}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->cc_t:Lg/c/j;

    .line 38
    new-instance v0, Lg/c/j;

    const-string v14, "speed_t"

    const/16 v15, 0x25

    invoke-direct {v0, v14, v15}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->speed_t:Lg/c/j;

    .line 39
    new-instance v0, Lg/c/j;

    const-string v14, "tcflag_t"

    const/16 v15, 0x26

    invoke-direct {v0, v14, v15}, Lg/c/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/j;->tcflag_t:Lg/c/j;

    const/16 v14, 0x27

    new-array v14, v14, [Lg/c/j;

    .line 40
    sget-object v15, Lg/c/j;->int8_t:Lg/c/j;

    aput-object v15, v14, v1

    sget-object v1, Lg/c/j;->u_int8_t:Lg/c/j;

    aput-object v1, v14, v2

    sget-object v1, Lg/c/j;->int16_t:Lg/c/j;

    aput-object v1, v14, v3

    sget-object v1, Lg/c/j;->u_int16_t:Lg/c/j;

    aput-object v1, v14, v4

    sget-object v1, Lg/c/j;->int32_t:Lg/c/j;

    aput-object v1, v14, v5

    sget-object v1, Lg/c/j;->u_int32_t:Lg/c/j;

    aput-object v1, v14, v6

    sget-object v1, Lg/c/j;->int64_t:Lg/c/j;

    aput-object v1, v14, v7

    sget-object v1, Lg/c/j;->u_int64_t:Lg/c/j;

    aput-object v1, v14, v8

    sget-object v1, Lg/c/j;->intptr_t:Lg/c/j;

    aput-object v1, v14, v9

    sget-object v1, Lg/c/j;->uintptr_t:Lg/c/j;

    aput-object v1, v14, v10

    sget-object v1, Lg/c/j;->caddr_t:Lg/c/j;

    aput-object v1, v14, v11

    sget-object v1, Lg/c/j;->dev_t:Lg/c/j;

    aput-object v1, v14, v12

    sget-object v1, Lg/c/j;->blkcnt_t:Lg/c/j;

    aput-object v1, v14, v13

    sget-object v1, Lg/c/j;->blksize_t:Lg/c/j;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lg/c/j;->gid_t:Lg/c/j;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lg/c/j;->in_addr_t:Lg/c/j;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lg/c/j;->in_port_t:Lg/c/j;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lg/c/j;->ino_t:Lg/c/j;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lg/c/j;->ino64_t:Lg/c/j;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lg/c/j;->key_t:Lg/c/j;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    sget-object v1, Lg/c/j;->mode_t:Lg/c/j;

    const/16 v2, 0x14

    aput-object v1, v14, v2

    sget-object v1, Lg/c/j;->nlink_t:Lg/c/j;

    const/16 v2, 0x15

    aput-object v1, v14, v2

    sget-object v1, Lg/c/j;->id_t:Lg/c/j;

    const/16 v2, 0x16

    aput-object v1, v14, v2

    sget-object v1, Lg/c/j;->pid_t:Lg/c/j;

    const/16 v2, 0x17

    aput-object v1, v14, v2

    sget-object v1, Lg/c/j;->off_t:Lg/c/j;

    const/16 v2, 0x18

    aput-object v1, v14, v2

    sget-object v1, Lg/c/j;->swblk_t:Lg/c/j;

    const/16 v2, 0x19

    aput-object v1, v14, v2

    sget-object v1, Lg/c/j;->uid_t:Lg/c/j;

    const/16 v2, 0x1a

    aput-object v1, v14, v2

    sget-object v1, Lg/c/j;->clock_t:Lg/c/j;

    const/16 v2, 0x1b

    aput-object v1, v14, v2

    sget-object v1, Lg/c/j;->size_t:Lg/c/j;

    const/16 v2, 0x1c

    aput-object v1, v14, v2

    sget-object v1, Lg/c/j;->ssize_t:Lg/c/j;

    const/16 v2, 0x1d

    aput-object v1, v14, v2

    sget-object v1, Lg/c/j;->time_t:Lg/c/j;

    const/16 v2, 0x1e

    aput-object v1, v14, v2

    sget-object v1, Lg/c/j;->fsblkcnt_t:Lg/c/j;

    const/16 v2, 0x1f

    aput-object v1, v14, v2

    sget-object v1, Lg/c/j;->fsfilcnt_t:Lg/c/j;

    const/16 v2, 0x20

    aput-object v1, v14, v2

    sget-object v1, Lg/c/j;->sa_family_t:Lg/c/j;

    const/16 v2, 0x21

    aput-object v1, v14, v2

    sget-object v1, Lg/c/j;->socklen_t:Lg/c/j;

    const/16 v2, 0x22

    aput-object v1, v14, v2

    sget-object v1, Lg/c/j;->rlim_t:Lg/c/j;

    const/16 v2, 0x23

    aput-object v1, v14, v2

    sget-object v1, Lg/c/j;->cc_t:Lg/c/j;

    const/16 v2, 0x24

    aput-object v1, v14, v2

    sget-object v1, Lg/c/j;->speed_t:Lg/c/j;

    const/16 v2, 0x25

    aput-object v1, v14, v2

    const/16 v1, 0x26

    aput-object v0, v14, v1

    sput-object v14, Lg/c/j;->$VALUES:[Lg/c/j;

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

.method public static valueOf(Ljava/lang/String;)Lg/c/j;
    .locals 1

    .line 1
    const-class v0, Lg/c/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/c/j;

    return-object p0
.end method

.method public static values()[Lg/c/j;
    .locals 1

    .line 1
    sget-object v0, Lg/c/j;->$VALUES:[Lg/c/j;

    invoke-virtual {v0}, [Lg/c/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/c/j;

    return-object v0
.end method
