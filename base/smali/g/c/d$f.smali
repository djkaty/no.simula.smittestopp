.class public final enum Lg/c/d$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/c/d$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lg/c/d$f;

.field public static final enum AIX:Lg/c/d$f;

.field public static final enum DARWIN:Lg/c/d$f;

.field public static final enum DRAGONFLY:Lg/c/d$f;

.field public static final enum FREEBSD:Lg/c/d$f;

.field public static final enum LINUX:Lg/c/d$f;

.field public static final enum NETBSD:Lg/c/d$f;

.field public static final enum OPENBSD:Lg/c/d$f;

.field public static final enum SOLARIS:Lg/c/d$f;

.field public static final enum UNKNOWN:Lg/c/d$f;

.field public static final enum WINDOWS:Lg/c/d$f;

.field public static final enum ZLINUX:Lg/c/d$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lg/c/d$f;

    const/4 v1, 0x0

    const-string v2, "DARWIN"

    invoke-direct {v0, v2, v1}, Lg/c/d$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/d$f;->DARWIN:Lg/c/d$f;

    .line 2
    new-instance v0, Lg/c/d$f;

    const/4 v2, 0x1

    const-string v3, "FREEBSD"

    invoke-direct {v0, v3, v2}, Lg/c/d$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/d$f;->FREEBSD:Lg/c/d$f;

    .line 3
    new-instance v0, Lg/c/d$f;

    const/4 v3, 0x2

    const-string v4, "NETBSD"

    invoke-direct {v0, v4, v3}, Lg/c/d$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/d$f;->NETBSD:Lg/c/d$f;

    .line 4
    new-instance v0, Lg/c/d$f;

    const/4 v4, 0x3

    const-string v5, "OPENBSD"

    invoke-direct {v0, v5, v4}, Lg/c/d$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/d$f;->OPENBSD:Lg/c/d$f;

    .line 5
    new-instance v0, Lg/c/d$f;

    const/4 v5, 0x4

    const-string v6, "DRAGONFLY"

    invoke-direct {v0, v6, v5}, Lg/c/d$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/d$f;->DRAGONFLY:Lg/c/d$f;

    .line 6
    new-instance v0, Lg/c/d$f;

    const/4 v6, 0x5

    const-string v7, "LINUX"

    invoke-direct {v0, v7, v6}, Lg/c/d$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/d$f;->LINUX:Lg/c/d$f;

    .line 7
    new-instance v0, Lg/c/d$f;

    const/4 v7, 0x6

    const-string v8, "SOLARIS"

    invoke-direct {v0, v8, v7}, Lg/c/d$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/d$f;->SOLARIS:Lg/c/d$f;

    .line 8
    new-instance v0, Lg/c/d$f;

    const/4 v8, 0x7

    const-string v9, "WINDOWS"

    invoke-direct {v0, v9, v8}, Lg/c/d$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/d$f;->WINDOWS:Lg/c/d$f;

    .line 9
    new-instance v0, Lg/c/d$f;

    const/16 v9, 0x8

    const-string v10, "AIX"

    invoke-direct {v0, v10, v9}, Lg/c/d$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/d$f;->AIX:Lg/c/d$f;

    .line 10
    new-instance v0, Lg/c/d$f;

    const/16 v10, 0x9

    const-string v11, "ZLINUX"

    invoke-direct {v0, v11, v10}, Lg/c/d$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/d$f;->ZLINUX:Lg/c/d$f;

    .line 11
    new-instance v0, Lg/c/d$f;

    const/16 v11, 0xa

    const-string v12, "UNKNOWN"

    invoke-direct {v0, v12, v11}, Lg/c/d$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/d$f;->UNKNOWN:Lg/c/d$f;

    const/16 v12, 0xb

    new-array v12, v12, [Lg/c/d$f;

    .line 12
    sget-object v13, Lg/c/d$f;->DARWIN:Lg/c/d$f;

    aput-object v13, v12, v1

    sget-object v1, Lg/c/d$f;->FREEBSD:Lg/c/d$f;

    aput-object v1, v12, v2

    sget-object v1, Lg/c/d$f;->NETBSD:Lg/c/d$f;

    aput-object v1, v12, v3

    sget-object v1, Lg/c/d$f;->OPENBSD:Lg/c/d$f;

    aput-object v1, v12, v4

    sget-object v1, Lg/c/d$f;->DRAGONFLY:Lg/c/d$f;

    aput-object v1, v12, v5

    sget-object v1, Lg/c/d$f;->LINUX:Lg/c/d$f;

    aput-object v1, v12, v6

    sget-object v1, Lg/c/d$f;->SOLARIS:Lg/c/d$f;

    aput-object v1, v12, v7

    sget-object v1, Lg/c/d$f;->WINDOWS:Lg/c/d$f;

    aput-object v1, v12, v8

    sget-object v1, Lg/c/d$f;->AIX:Lg/c/d$f;

    aput-object v1, v12, v9

    sget-object v1, Lg/c/d$f;->ZLINUX:Lg/c/d$f;

    aput-object v1, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lg/c/d$f;->$VALUES:[Lg/c/d$f;

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

.method public static valueOf(Ljava/lang/String;)Lg/c/d$f;
    .locals 1

    .line 1
    const-class v0, Lg/c/d$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/c/d$f;

    return-object p0
.end method

.method public static values()[Lg/c/d$f;
    .locals 1

    .line 1
    sget-object v0, Lg/c/d$f;->$VALUES:[Lg/c/d$f;

    invoke-virtual {v0}, [Lg/c/d$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/c/d$f;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lg/c/d;->d:Ljava/util/Locale;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
