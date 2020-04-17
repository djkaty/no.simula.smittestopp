.class public final enum Lg/a/d/c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lg/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/a/d/c;",
        ">;",
        "Lg/a/a;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lg/a/d/c;

.field public static final enum FAPPEND:Lg/a/d/c;

.field public static final enum FASYNC:Lg/a/d/c;

.field public static final enum FFSYNC:Lg/a/d/c;

.field public static final enum FNDELAY:Lg/a/d/c;

.field public static final enum FNONBLOCK:Lg/a/d/c;

.field public static final enum FREAD:Lg/a/d/c;

.field public static final enum FWRITE:Lg/a/d/c;

.field public static final enum F_ADDSIGS:Lg/a/d/c;

.field public static final enum F_ALLOCATEALL:Lg/a/d/c;

.field public static final enum F_ALLOCATECONTIG:Lg/a/d/c;

.field public static final enum F_CHKCLEAN:Lg/a/d/c;

.field public static final enum F_DUPFD:Lg/a/d/c;

.field public static final enum F_FREEZE_FS:Lg/a/d/c;

.field public static final enum F_FULLFSYNC:Lg/a/d/c;

.field public static final enum F_GETFD:Lg/a/d/c;

.field public static final enum F_GETFL:Lg/a/d/c;

.field public static final enum F_GETLK:Lg/a/d/c;

.field public static final enum F_GETOWN:Lg/a/d/c;

.field public static final enum F_GETPATH:Lg/a/d/c;

.field public static final enum F_GLOBAL_NOCACHE:Lg/a/d/c;

.field public static final enum F_LOG2PHYS:Lg/a/d/c;

.field public static final enum F_MARKDEPENDENCY:Lg/a/d/c;

.field public static final enum F_NOCACHE:Lg/a/d/c;

.field public static final enum F_PATHPKG_CHECK:Lg/a/d/c;

.field public static final enum F_PREALLOCATE:Lg/a/d/c;

.field public static final enum F_RDADVISE:Lg/a/d/c;

.field public static final enum F_RDAHEAD:Lg/a/d/c;

.field public static final enum F_RDLCK:Lg/a/d/c;

.field public static final enum F_READBOOTSTRAP:Lg/a/d/c;

.field public static final enum F_SETFD:Lg/a/d/c;

.field public static final enum F_SETFL:Lg/a/d/c;

.field public static final enum F_SETLK:Lg/a/d/c;

.field public static final enum F_SETLKW:Lg/a/d/c;

.field public static final enum F_SETOWN:Lg/a/d/c;

.field public static final enum F_SETSIZE:Lg/a/d/c;

.field public static final enum F_THAW_FS:Lg/a/d/c;

.field public static final enum F_UNLCK:Lg/a/d/c;

.field public static final enum F_WRITEBOOTSTRAP:Lg/a/d/c;

.field public static final enum F_WRLCK:Lg/a/d/c;

.field public static final enum __UNKNOWN_CONSTANT__:Lg/a/d/c;

.field public static final resolver:Lg/a/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/d/a<",
            "Lg/a/d/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lg/a/d/c;

    const/4 v1, 0x0

    const-string v2, "FAPPEND"

    invoke-direct {v0, v2, v1}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->FAPPEND:Lg/a/d/c;

    .line 2
    new-instance v0, Lg/a/d/c;

    const/4 v2, 0x1

    const-string v3, "FREAD"

    invoke-direct {v0, v3, v2}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->FREAD:Lg/a/d/c;

    .line 3
    new-instance v0, Lg/a/d/c;

    const/4 v3, 0x2

    const-string v4, "FWRITE"

    invoke-direct {v0, v4, v3}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->FWRITE:Lg/a/d/c;

    .line 4
    new-instance v0, Lg/a/d/c;

    const/4 v4, 0x3

    const-string v5, "FASYNC"

    invoke-direct {v0, v5, v4}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->FASYNC:Lg/a/d/c;

    .line 5
    new-instance v0, Lg/a/d/c;

    const/4 v5, 0x4

    const-string v6, "FFSYNC"

    invoke-direct {v0, v6, v5}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->FFSYNC:Lg/a/d/c;

    .line 6
    new-instance v0, Lg/a/d/c;

    const/4 v6, 0x5

    const-string v7, "FNONBLOCK"

    invoke-direct {v0, v7, v6}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->FNONBLOCK:Lg/a/d/c;

    .line 7
    new-instance v0, Lg/a/d/c;

    const/4 v7, 0x6

    const-string v8, "FNDELAY"

    invoke-direct {v0, v8, v7}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->FNDELAY:Lg/a/d/c;

    .line 8
    new-instance v0, Lg/a/d/c;

    const/4 v8, 0x7

    const-string v9, "F_DUPFD"

    invoke-direct {v0, v9, v8}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_DUPFD:Lg/a/d/c;

    .line 9
    new-instance v0, Lg/a/d/c;

    const/16 v9, 0x8

    const-string v10, "F_GETFD"

    invoke-direct {v0, v10, v9}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_GETFD:Lg/a/d/c;

    .line 10
    new-instance v0, Lg/a/d/c;

    const/16 v10, 0x9

    const-string v11, "F_SETFD"

    invoke-direct {v0, v11, v10}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_SETFD:Lg/a/d/c;

    .line 11
    new-instance v0, Lg/a/d/c;

    const/16 v11, 0xa

    const-string v12, "F_GETFL"

    invoke-direct {v0, v12, v11}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_GETFL:Lg/a/d/c;

    .line 12
    new-instance v0, Lg/a/d/c;

    const/16 v12, 0xb

    const-string v13, "F_SETFL"

    invoke-direct {v0, v13, v12}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_SETFL:Lg/a/d/c;

    .line 13
    new-instance v0, Lg/a/d/c;

    const/16 v13, 0xc

    const-string v14, "F_GETOWN"

    invoke-direct {v0, v14, v13}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_GETOWN:Lg/a/d/c;

    .line 14
    new-instance v0, Lg/a/d/c;

    const/16 v14, 0xd

    const-string v15, "F_SETOWN"

    invoke-direct {v0, v15, v14}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_SETOWN:Lg/a/d/c;

    .line 15
    new-instance v0, Lg/a/d/c;

    const/16 v15, 0xe

    const-string v14, "F_GETLK"

    invoke-direct {v0, v14, v15}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_GETLK:Lg/a/d/c;

    .line 16
    new-instance v0, Lg/a/d/c;

    const/16 v14, 0xf

    const-string v15, "F_SETLK"

    invoke-direct {v0, v15, v14}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_SETLK:Lg/a/d/c;

    .line 17
    new-instance v0, Lg/a/d/c;

    const/16 v15, 0x10

    const-string v14, "F_SETLKW"

    invoke-direct {v0, v14, v15}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_SETLKW:Lg/a/d/c;

    .line 18
    new-instance v0, Lg/a/d/c;

    const/16 v14, 0x11

    const-string v15, "F_CHKCLEAN"

    invoke-direct {v0, v15, v14}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_CHKCLEAN:Lg/a/d/c;

    .line 19
    new-instance v0, Lg/a/d/c;

    const/16 v15, 0x12

    const-string v14, "F_PREALLOCATE"

    invoke-direct {v0, v14, v15}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_PREALLOCATE:Lg/a/d/c;

    .line 20
    new-instance v0, Lg/a/d/c;

    const/16 v14, 0x13

    const-string v15, "F_SETSIZE"

    invoke-direct {v0, v15, v14}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_SETSIZE:Lg/a/d/c;

    .line 21
    new-instance v0, Lg/a/d/c;

    const/16 v15, 0x14

    const-string v14, "F_RDADVISE"

    invoke-direct {v0, v14, v15}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_RDADVISE:Lg/a/d/c;

    .line 22
    new-instance v0, Lg/a/d/c;

    const/16 v14, 0x15

    const-string v15, "F_RDAHEAD"

    invoke-direct {v0, v15, v14}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_RDAHEAD:Lg/a/d/c;

    .line 23
    new-instance v0, Lg/a/d/c;

    const-string v15, "F_READBOOTSTRAP"

    const/16 v14, 0x16

    invoke-direct {v0, v15, v14}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_READBOOTSTRAP:Lg/a/d/c;

    .line 24
    new-instance v0, Lg/a/d/c;

    const-string v14, "F_WRITEBOOTSTRAP"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_WRITEBOOTSTRAP:Lg/a/d/c;

    .line 25
    new-instance v0, Lg/a/d/c;

    const-string v14, "F_NOCACHE"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_NOCACHE:Lg/a/d/c;

    .line 26
    new-instance v0, Lg/a/d/c;

    const-string v14, "F_LOG2PHYS"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_LOG2PHYS:Lg/a/d/c;

    .line 27
    new-instance v0, Lg/a/d/c;

    const-string v14, "F_GETPATH"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_GETPATH:Lg/a/d/c;

    .line 28
    new-instance v0, Lg/a/d/c;

    const-string v14, "F_FULLFSYNC"

    const/16 v15, 0x1b

    invoke-direct {v0, v14, v15}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_FULLFSYNC:Lg/a/d/c;

    .line 29
    new-instance v0, Lg/a/d/c;

    const-string v14, "F_PATHPKG_CHECK"

    const/16 v15, 0x1c

    invoke-direct {v0, v14, v15}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_PATHPKG_CHECK:Lg/a/d/c;

    .line 30
    new-instance v0, Lg/a/d/c;

    const-string v14, "F_FREEZE_FS"

    const/16 v15, 0x1d

    invoke-direct {v0, v14, v15}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_FREEZE_FS:Lg/a/d/c;

    .line 31
    new-instance v0, Lg/a/d/c;

    const-string v14, "F_THAW_FS"

    const/16 v15, 0x1e

    invoke-direct {v0, v14, v15}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_THAW_FS:Lg/a/d/c;

    .line 32
    new-instance v0, Lg/a/d/c;

    const-string v14, "F_GLOBAL_NOCACHE"

    const/16 v15, 0x1f

    invoke-direct {v0, v14, v15}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_GLOBAL_NOCACHE:Lg/a/d/c;

    .line 33
    new-instance v0, Lg/a/d/c;

    const-string v14, "F_ADDSIGS"

    const/16 v15, 0x20

    invoke-direct {v0, v14, v15}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_ADDSIGS:Lg/a/d/c;

    .line 34
    new-instance v0, Lg/a/d/c;

    const-string v14, "F_MARKDEPENDENCY"

    const/16 v15, 0x21

    invoke-direct {v0, v14, v15}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_MARKDEPENDENCY:Lg/a/d/c;

    .line 35
    new-instance v0, Lg/a/d/c;

    const-string v14, "F_RDLCK"

    const/16 v15, 0x22

    invoke-direct {v0, v14, v15}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_RDLCK:Lg/a/d/c;

    .line 36
    new-instance v0, Lg/a/d/c;

    const-string v14, "F_UNLCK"

    const/16 v15, 0x23

    invoke-direct {v0, v14, v15}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_UNLCK:Lg/a/d/c;

    .line 37
    new-instance v0, Lg/a/d/c;

    const-string v14, "F_WRLCK"

    const/16 v15, 0x24

    invoke-direct {v0, v14, v15}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_WRLCK:Lg/a/d/c;

    .line 38
    new-instance v0, Lg/a/d/c;

    const-string v14, "F_ALLOCATECONTIG"

    const/16 v15, 0x25

    invoke-direct {v0, v14, v15}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_ALLOCATECONTIG:Lg/a/d/c;

    .line 39
    new-instance v0, Lg/a/d/c;

    const-string v14, "F_ALLOCATEALL"

    const/16 v15, 0x26

    invoke-direct {v0, v14, v15}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->F_ALLOCATEALL:Lg/a/d/c;

    .line 40
    new-instance v0, Lg/a/d/c;

    const-string v14, "__UNKNOWN_CONSTANT__"

    const/16 v15, 0x27

    invoke-direct {v0, v14, v15}, Lg/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/c;->__UNKNOWN_CONSTANT__:Lg/a/d/c;

    const/16 v14, 0x28

    new-array v14, v14, [Lg/a/d/c;

    .line 41
    sget-object v15, Lg/a/d/c;->FAPPEND:Lg/a/d/c;

    aput-object v15, v14, v1

    sget-object v1, Lg/a/d/c;->FREAD:Lg/a/d/c;

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/c;->FWRITE:Lg/a/d/c;

    aput-object v1, v14, v3

    sget-object v1, Lg/a/d/c;->FASYNC:Lg/a/d/c;

    aput-object v1, v14, v4

    sget-object v1, Lg/a/d/c;->FFSYNC:Lg/a/d/c;

    aput-object v1, v14, v5

    sget-object v1, Lg/a/d/c;->FNONBLOCK:Lg/a/d/c;

    aput-object v1, v14, v6

    sget-object v1, Lg/a/d/c;->FNDELAY:Lg/a/d/c;

    aput-object v1, v14, v7

    sget-object v1, Lg/a/d/c;->F_DUPFD:Lg/a/d/c;

    aput-object v1, v14, v8

    sget-object v1, Lg/a/d/c;->F_GETFD:Lg/a/d/c;

    aput-object v1, v14, v9

    sget-object v1, Lg/a/d/c;->F_SETFD:Lg/a/d/c;

    aput-object v1, v14, v10

    sget-object v1, Lg/a/d/c;->F_GETFL:Lg/a/d/c;

    aput-object v1, v14, v11

    sget-object v1, Lg/a/d/c;->F_SETFL:Lg/a/d/c;

    aput-object v1, v14, v12

    sget-object v1, Lg/a/d/c;->F_GETOWN:Lg/a/d/c;

    aput-object v1, v14, v13

    sget-object v1, Lg/a/d/c;->F_SETOWN:Lg/a/d/c;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/c;->F_GETLK:Lg/a/d/c;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/c;->F_SETLK:Lg/a/d/c;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/c;->F_SETLKW:Lg/a/d/c;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/c;->F_CHKCLEAN:Lg/a/d/c;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/c;->F_PREALLOCATE:Lg/a/d/c;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/c;->F_SETSIZE:Lg/a/d/c;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/c;->F_RDADVISE:Lg/a/d/c;

    const/16 v2, 0x14

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/c;->F_RDAHEAD:Lg/a/d/c;

    const/16 v2, 0x15

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/c;->F_READBOOTSTRAP:Lg/a/d/c;

    const/16 v2, 0x16

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/c;->F_WRITEBOOTSTRAP:Lg/a/d/c;

    const/16 v2, 0x17

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/c;->F_NOCACHE:Lg/a/d/c;

    const/16 v2, 0x18

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/c;->F_LOG2PHYS:Lg/a/d/c;

    const/16 v2, 0x19

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/c;->F_GETPATH:Lg/a/d/c;

    const/16 v2, 0x1a

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/c;->F_FULLFSYNC:Lg/a/d/c;

    const/16 v2, 0x1b

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/c;->F_PATHPKG_CHECK:Lg/a/d/c;

    const/16 v2, 0x1c

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/c;->F_FREEZE_FS:Lg/a/d/c;

    const/16 v2, 0x1d

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/c;->F_THAW_FS:Lg/a/d/c;

    const/16 v2, 0x1e

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/c;->F_GLOBAL_NOCACHE:Lg/a/d/c;

    const/16 v2, 0x1f

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/c;->F_ADDSIGS:Lg/a/d/c;

    const/16 v2, 0x20

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/c;->F_MARKDEPENDENCY:Lg/a/d/c;

    const/16 v2, 0x21

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/c;->F_RDLCK:Lg/a/d/c;

    const/16 v2, 0x22

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/c;->F_UNLCK:Lg/a/d/c;

    const/16 v2, 0x23

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/c;->F_WRLCK:Lg/a/d/c;

    const/16 v2, 0x24

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/c;->F_ALLOCATECONTIG:Lg/a/d/c;

    const/16 v2, 0x25

    aput-object v1, v14, v2

    sget-object v1, Lg/a/d/c;->F_ALLOCATEALL:Lg/a/d/c;

    const/16 v2, 0x26

    aput-object v1, v14, v2

    const/16 v1, 0x27

    aput-object v0, v14, v1

    sput-object v14, Lg/a/d/c;->$VALUES:[Lg/a/d/c;

    .line 42
    const-class v0, Lg/a/d/c;

    const/16 v1, 0x4e20

    const/16 v2, 0x5207

    .line 43
    invoke-static {v0, v1, v2}, Lg/a/d/a;->a(Ljava/lang/Class;II)Lg/a/d/a;

    move-result-object v0

    sput-object v0, Lg/a/d/c;->resolver:Lg/a/d/a;

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

.method public static valueOf(J)Lg/a/d/c;
    .locals 1

    .line 2
    sget-object v0, Lg/a/d/c;->resolver:Lg/a/d/a;

    invoke-virtual {v0, p0, p1}, Lg/a/d/a;->a(J)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/a/d/c;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lg/a/d/c;
    .locals 1

    .line 1
    const-class v0, Lg/a/d/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/a/d/c;

    return-object p0
.end method

.method public static values()[Lg/a/d/c;
    .locals 1

    .line 1
    sget-object v0, Lg/a/d/c;->$VALUES:[Lg/a/d/c;

    invoke-virtual {v0}, [Lg/a/d/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/a/d/c;

    return-object v0
.end method


# virtual methods
.method public final defined()Z
    .locals 1

    .line 1
    sget-object v0, Lg/a/d/c;->resolver:Lg/a/d/a;

    invoke-virtual {v0, p0}, Lg/a/d/a;->a(Ljava/lang/Enum;)Z

    move-result v0

    return v0
.end method

.method public final description()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lg/a/d/c;->resolver:Lg/a/d/a;

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
    sget-object v0, Lg/a/d/c;->resolver:Lg/a/d/a;

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
    sget-object v0, Lg/a/d/c;->resolver:Lg/a/d/a;

    invoke-virtual {v0, p0}, Lg/a/d/a;->c(Ljava/lang/Enum;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/a/d/c;->description()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final value()I
    .locals 2

    .line 1
    sget-object v0, Lg/a/d/c;->resolver:Lg/a/d/a;

    .line 2
    invoke-virtual {v0, p0}, Lg/a/d/a;->b(Ljava/lang/Enum;)Lg/a/a;

    move-result-object v0

    invoke-interface {v0}, Lg/a/a;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method
