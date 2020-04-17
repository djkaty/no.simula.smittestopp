.class public final enum Lg/a/d/h;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lg/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/a/d/h;",
        ">;",
        "Lg/a/a;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lg/a/d/h;

.field public static final enum SOL_IP:Lg/a/d/h;

.field public static final enum SOL_SOCKET:Lg/a/d/h;

.field public static final enum SOL_TCP:Lg/a/d/h;

.field public static final enum SOL_UDP:Lg/a/d/h;

.field public static final enum __UNKNOWN_CONSTANT__:Lg/a/d/h;

.field public static final resolver:Lg/a/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/d/a<",
            "Lg/a/d/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lg/a/d/h;

    const/4 v1, 0x0

    const-string v2, "SOL_SOCKET"

    invoke-direct {v0, v2, v1}, Lg/a/d/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/h;->SOL_SOCKET:Lg/a/d/h;

    .line 2
    new-instance v0, Lg/a/d/h;

    const/4 v2, 0x1

    const-string v3, "SOL_IP"

    invoke-direct {v0, v3, v2}, Lg/a/d/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/h;->SOL_IP:Lg/a/d/h;

    .line 3
    new-instance v0, Lg/a/d/h;

    const/4 v3, 0x2

    const-string v4, "SOL_TCP"

    invoke-direct {v0, v4, v3}, Lg/a/d/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/h;->SOL_TCP:Lg/a/d/h;

    .line 4
    new-instance v0, Lg/a/d/h;

    const/4 v4, 0x3

    const-string v5, "SOL_UDP"

    invoke-direct {v0, v5, v4}, Lg/a/d/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/h;->SOL_UDP:Lg/a/d/h;

    .line 5
    new-instance v0, Lg/a/d/h;

    const/4 v5, 0x4

    const-string v6, "__UNKNOWN_CONSTANT__"

    invoke-direct {v0, v6, v5}, Lg/a/d/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/d/h;->__UNKNOWN_CONSTANT__:Lg/a/d/h;

    const/4 v6, 0x5

    new-array v6, v6, [Lg/a/d/h;

    .line 6
    sget-object v7, Lg/a/d/h;->SOL_SOCKET:Lg/a/d/h;

    aput-object v7, v6, v1

    sget-object v1, Lg/a/d/h;->SOL_IP:Lg/a/d/h;

    aput-object v1, v6, v2

    sget-object v1, Lg/a/d/h;->SOL_TCP:Lg/a/d/h;

    aput-object v1, v6, v3

    sget-object v1, Lg/a/d/h;->SOL_UDP:Lg/a/d/h;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lg/a/d/h;->$VALUES:[Lg/a/d/h;

    .line 7
    const-class v0, Lg/a/d/h;

    const/16 v1, 0x4e20

    const/16 v2, 0x752f

    .line 8
    invoke-static {v0, v1, v2}, Lg/a/d/a;->a(Ljava/lang/Class;II)Lg/a/d/a;

    move-result-object v0

    sput-object v0, Lg/a/d/h;->resolver:Lg/a/d/a;

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

.method public static valueOf(J)Lg/a/d/h;
    .locals 1

    .line 2
    sget-object v0, Lg/a/d/h;->resolver:Lg/a/d/a;

    invoke-virtual {v0, p0, p1}, Lg/a/d/a;->a(J)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/a/d/h;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lg/a/d/h;
    .locals 1

    .line 1
    const-class v0, Lg/a/d/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/a/d/h;

    return-object p0
.end method

.method public static values()[Lg/a/d/h;
    .locals 1

    .line 1
    sget-object v0, Lg/a/d/h;->$VALUES:[Lg/a/d/h;

    invoke-virtual {v0}, [Lg/a/d/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/a/d/h;

    return-object v0
.end method


# virtual methods
.method public final defined()Z
    .locals 1

    .line 1
    sget-object v0, Lg/a/d/h;->resolver:Lg/a/d/a;

    invoke-virtual {v0, p0}, Lg/a/d/a;->a(Ljava/lang/Enum;)Z

    move-result v0

    return v0
.end method

.method public final description()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lg/a/d/h;->resolver:Lg/a/d/a;

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
    sget-object v0, Lg/a/d/h;->resolver:Lg/a/d/a;

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
    sget-object v0, Lg/a/d/h;->resolver:Lg/a/d/a;

    invoke-virtual {v0, p0}, Lg/a/d/a;->c(Ljava/lang/Enum;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/a/d/h;->description()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final value()I
    .locals 2

    .line 1
    sget-object v0, Lg/a/d/h;->resolver:Lg/a/d/a;

    .line 2
    invoke-virtual {v0, p0}, Lg/a/d/a;->b(Ljava/lang/Enum;)Lg/a/a;

    move-result-object v0

    invoke-interface {v0}, Lg/a/a;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method
