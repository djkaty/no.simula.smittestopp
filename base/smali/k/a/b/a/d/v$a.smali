.class public final enum Lk/a/b/a/d/v$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/d/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk/a/b/a/d/v$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lk/a/b/a/d/v$a;

.field public static final enum PN_SASL_AUTH:Lk/a/b/a/d/v$a;

.field public static final enum PN_SASL_NONE:Lk/a/b/a/d/v$a;

.field public static final enum PN_SASL_OK:Lk/a/b/a/d/v$a;

.field public static final enum PN_SASL_PERM:Lk/a/b/a/d/v$a;

.field public static final enum PN_SASL_SKIPPED:Lk/a/b/a/d/v$a;

.field public static final enum PN_SASL_SYS:Lk/a/b/a/d/v$a;

.field public static final enum PN_SASL_TEMP:Lk/a/b/a/d/v$a;


# instance fields
.field public final _code:B


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lk/a/b/a/d/v$a;

    const/4 v1, 0x0

    const-string v2, "PN_SASL_NONE"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lk/a/b/a/d/v$a;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lk/a/b/a/d/v$a;->PN_SASL_NONE:Lk/a/b/a/d/v$a;

    .line 2
    new-instance v0, Lk/a/b/a/d/v$a;

    const/4 v2, 0x1

    const-string v3, "PN_SASL_OK"

    invoke-direct {v0, v3, v2, v1}, Lk/a/b/a/d/v$a;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lk/a/b/a/d/v$a;->PN_SASL_OK:Lk/a/b/a/d/v$a;

    .line 3
    new-instance v0, Lk/a/b/a/d/v$a;

    const/4 v3, 0x2

    const-string v4, "PN_SASL_AUTH"

    invoke-direct {v0, v4, v3, v2}, Lk/a/b/a/d/v$a;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lk/a/b/a/d/v$a;->PN_SASL_AUTH:Lk/a/b/a/d/v$a;

    .line 4
    new-instance v0, Lk/a/b/a/d/v$a;

    const/4 v4, 0x3

    const-string v5, "PN_SASL_SYS"

    invoke-direct {v0, v5, v4, v3}, Lk/a/b/a/d/v$a;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lk/a/b/a/d/v$a;->PN_SASL_SYS:Lk/a/b/a/d/v$a;

    .line 5
    new-instance v0, Lk/a/b/a/d/v$a;

    const/4 v5, 0x4

    const-string v6, "PN_SASL_PERM"

    invoke-direct {v0, v6, v5, v4}, Lk/a/b/a/d/v$a;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lk/a/b/a/d/v$a;->PN_SASL_PERM:Lk/a/b/a/d/v$a;

    .line 6
    new-instance v0, Lk/a/b/a/d/v$a;

    const/4 v6, 0x5

    const-string v7, "PN_SASL_TEMP"

    invoke-direct {v0, v7, v6, v5}, Lk/a/b/a/d/v$a;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lk/a/b/a/d/v$a;->PN_SASL_TEMP:Lk/a/b/a/d/v$a;

    .line 7
    new-instance v0, Lk/a/b/a/d/v$a;

    const/4 v7, 0x6

    const-string v8, "PN_SASL_SKIPPED"

    invoke-direct {v0, v8, v7, v6}, Lk/a/b/a/d/v$a;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lk/a/b/a/d/v$a;->PN_SASL_SKIPPED:Lk/a/b/a/d/v$a;

    const/4 v8, 0x7

    new-array v8, v8, [Lk/a/b/a/d/v$a;

    .line 8
    sget-object v9, Lk/a/b/a/d/v$a;->PN_SASL_NONE:Lk/a/b/a/d/v$a;

    aput-object v9, v8, v1

    sget-object v1, Lk/a/b/a/d/v$a;->PN_SASL_OK:Lk/a/b/a/d/v$a;

    aput-object v1, v8, v2

    sget-object v1, Lk/a/b/a/d/v$a;->PN_SASL_AUTH:Lk/a/b/a/d/v$a;

    aput-object v1, v8, v3

    sget-object v1, Lk/a/b/a/d/v$a;->PN_SASL_SYS:Lk/a/b/a/d/v$a;

    aput-object v1, v8, v4

    sget-object v1, Lk/a/b/a/d/v$a;->PN_SASL_PERM:Lk/a/b/a/d/v$a;

    aput-object v1, v8, v5

    sget-object v1, Lk/a/b/a/d/v$a;->PN_SASL_TEMP:Lk/a/b/a/d/v$a;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lk/a/b/a/d/v$a;->$VALUES:[Lk/a/b/a/d/v$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-byte p3, p0, Lk/a/b/a/d/v$a;->_code:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lk/a/b/a/d/v$a;
    .locals 1

    .line 1
    const-class v0, Lk/a/b/a/d/v$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk/a/b/a/d/v$a;

    return-object p0
.end method

.method public static values()[Lk/a/b/a/d/v$a;
    .locals 1

    .line 1
    sget-object v0, Lk/a/b/a/d/v$a;->$VALUES:[Lk/a/b/a/d/v$a;

    invoke-virtual {v0}, [Lk/a/b/a/d/v$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/a/b/a/d/v$a;

    return-object v0
.end method


# virtual methods
.method public getCode()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lk/a/b/a/d/v$a;->_code:B

    return v0
.end method
