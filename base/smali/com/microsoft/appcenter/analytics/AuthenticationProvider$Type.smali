.class public final enum Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

.field public static final enum MSA_COMPACT:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

.field public static final enum MSA_DELEGATE:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;


# instance fields
.field public final mTokenPrefix:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    const/4 v1, 0x0

    const-string v2, "MSA_COMPACT"

    const-string v3, "p"

    invoke-direct {v0, v2, v1, v3}, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;->MSA_COMPACT:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    .line 2
    new-instance v0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    const/4 v2, 0x1

    const-string v3, "MSA_DELEGATE"

    const-string v4, "d"

    invoke-direct {v0, v3, v2, v4}, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;->MSA_DELEGATE:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    .line 3
    sget-object v4, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;->MSA_COMPACT:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;->$VALUES:[Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string p1, ":"

    .line 2
    invoke-static {p3, p1}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;->mTokenPrefix:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$100(Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;->mTokenPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;->$VALUES:[Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    invoke-virtual {v0}, [Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    return-object v0
.end method
