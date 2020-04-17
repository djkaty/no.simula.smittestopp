.class public final enum Lk/a/b/a/d/v$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/d/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk/a/b/a/d/v$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lk/a/b/a/d/v$b;

.field public static final enum PN_SASL_CONF:Lk/a/b/a/d/v$b;

.field public static final enum PN_SASL_FAIL:Lk/a/b/a/d/v$b;

.field public static final enum PN_SASL_IDLE:Lk/a/b/a/d/v$b;

.field public static final enum PN_SASL_PASS:Lk/a/b/a/d/v$b;

.field public static final enum PN_SASL_STEP:Lk/a/b/a/d/v$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lk/a/b/a/d/v$b;

    const/4 v1, 0x0

    const-string v2, "PN_SASL_CONF"

    invoke-direct {v0, v2, v1}, Lk/a/b/a/d/v$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/v$b;->PN_SASL_CONF:Lk/a/b/a/d/v$b;

    .line 2
    new-instance v0, Lk/a/b/a/d/v$b;

    const/4 v2, 0x1

    const-string v3, "PN_SASL_IDLE"

    invoke-direct {v0, v3, v2}, Lk/a/b/a/d/v$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/v$b;->PN_SASL_IDLE:Lk/a/b/a/d/v$b;

    .line 3
    new-instance v0, Lk/a/b/a/d/v$b;

    const/4 v3, 0x2

    const-string v4, "PN_SASL_STEP"

    invoke-direct {v0, v4, v3}, Lk/a/b/a/d/v$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/v$b;->PN_SASL_STEP:Lk/a/b/a/d/v$b;

    .line 4
    new-instance v0, Lk/a/b/a/d/v$b;

    const/4 v4, 0x3

    const-string v5, "PN_SASL_PASS"

    invoke-direct {v0, v5, v4}, Lk/a/b/a/d/v$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/v$b;->PN_SASL_PASS:Lk/a/b/a/d/v$b;

    .line 5
    new-instance v0, Lk/a/b/a/d/v$b;

    const/4 v5, 0x4

    const-string v6, "PN_SASL_FAIL"

    invoke-direct {v0, v6, v5}, Lk/a/b/a/d/v$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/v$b;->PN_SASL_FAIL:Lk/a/b/a/d/v$b;

    const/4 v6, 0x5

    new-array v6, v6, [Lk/a/b/a/d/v$b;

    .line 6
    sget-object v7, Lk/a/b/a/d/v$b;->PN_SASL_CONF:Lk/a/b/a/d/v$b;

    aput-object v7, v6, v1

    sget-object v1, Lk/a/b/a/d/v$b;->PN_SASL_IDLE:Lk/a/b/a/d/v$b;

    aput-object v1, v6, v2

    sget-object v1, Lk/a/b/a/d/v$b;->PN_SASL_STEP:Lk/a/b/a/d/v$b;

    aput-object v1, v6, v3

    sget-object v1, Lk/a/b/a/d/v$b;->PN_SASL_PASS:Lk/a/b/a/d/v$b;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lk/a/b/a/d/v$b;->$VALUES:[Lk/a/b/a/d/v$b;

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

.method public static valueOf(Ljava/lang/String;)Lk/a/b/a/d/v$b;
    .locals 1

    .line 1
    const-class v0, Lk/a/b/a/d/v$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk/a/b/a/d/v$b;

    return-object p0
.end method

.method public static values()[Lk/a/b/a/d/v$b;
    .locals 1

    .line 1
    sget-object v0, Lk/a/b/a/d/v$b;->$VALUES:[Lk/a/b/a/d/v$b;

    invoke-virtual {v0}, [Lk/a/b/a/d/v$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/a/b/a/d/v$b;

    return-object v0
.end method
