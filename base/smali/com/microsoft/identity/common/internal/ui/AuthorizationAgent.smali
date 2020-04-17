.class public final enum Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

.field public static final enum BROWSER:Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

.field public static final enum DEFAULT:Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

.field public static final enum WEBVIEW:Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;->DEFAULT:Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    const/4 v2, 0x1

    const-string v3, "WEBVIEW"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;->WEBVIEW:Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    .line 3
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    const/4 v3, 0x2

    const-string v4, "BROWSER"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;->BROWSER:Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    .line 4
    sget-object v5, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;->DEFAULT:Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    aput-object v5, v4, v1

    sget-object v1, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;->WEBVIEW:Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;->$VALUES:[Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;->$VALUES:[Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    invoke-virtual {v0}, [Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    return-object v0
.end method
