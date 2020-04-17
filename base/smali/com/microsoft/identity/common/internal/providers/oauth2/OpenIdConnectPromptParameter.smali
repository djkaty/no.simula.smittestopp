.class public final enum Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

.field public static final enum CONSENT:Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

.field public static final enum LOGIN:Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

.field public static final enum NONE:Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

.field public static final enum SELECT_ACCOUNT:Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;->NONE:Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    const/4 v2, 0x1

    const-string v3, "SELECT_ACCOUNT"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;->SELECT_ACCOUNT:Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    .line 3
    new-instance v0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    const/4 v3, 0x2

    const-string v4, "LOGIN"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;->LOGIN:Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    .line 4
    new-instance v0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    const/4 v4, 0x3

    const-string v5, "CONSENT"

    invoke-direct {v0, v5, v4}, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;->CONSENT:Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    .line 5
    sget-object v6, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;->NONE:Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    aput-object v6, v5, v1

    sget-object v1, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;->SELECT_ACCOUNT:Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    aput-object v1, v5, v2

    sget-object v1, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;->LOGIN:Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;->$VALUES:[Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

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

.method public static _fromPromptBehavior(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "FORCE_PROMPT"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;->LOGIN:Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;->NONE:Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;->$VALUES:[Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    invoke-virtual {v0}, [Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;->NONE:Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
