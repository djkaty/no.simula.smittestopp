.class public final enum Lcom/microsoft/identity/client/Prompt;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/client/Prompt;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/identity/client/Prompt;

.field public static final enum CONSENT:Lcom/microsoft/identity/client/Prompt;

.field public static final enum LOGIN:Lcom/microsoft/identity/client/Prompt;

.field public static final enum SELECT_ACCOUNT:Lcom/microsoft/identity/client/Prompt;

.field public static final enum WHEN_REQUIRED:Lcom/microsoft/identity/client/Prompt;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/microsoft/identity/client/Prompt;

    const/4 v1, 0x0

    const-string v2, "SELECT_ACCOUNT"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/identity/client/Prompt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/client/Prompt;->SELECT_ACCOUNT:Lcom/microsoft/identity/client/Prompt;

    .line 2
    new-instance v0, Lcom/microsoft/identity/client/Prompt;

    const/4 v2, 0x1

    const-string v3, "LOGIN"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/identity/client/Prompt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/client/Prompt;->LOGIN:Lcom/microsoft/identity/client/Prompt;

    .line 3
    new-instance v0, Lcom/microsoft/identity/client/Prompt;

    const/4 v3, 0x2

    const-string v4, "CONSENT"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/identity/client/Prompt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/client/Prompt;->CONSENT:Lcom/microsoft/identity/client/Prompt;

    .line 4
    new-instance v0, Lcom/microsoft/identity/client/Prompt;

    const/4 v4, 0x3

    const-string v5, "WHEN_REQUIRED"

    invoke-direct {v0, v5, v4}, Lcom/microsoft/identity/client/Prompt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/client/Prompt;->WHEN_REQUIRED:Lcom/microsoft/identity/client/Prompt;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/microsoft/identity/client/Prompt;

    .line 5
    sget-object v6, Lcom/microsoft/identity/client/Prompt;->SELECT_ACCOUNT:Lcom/microsoft/identity/client/Prompt;

    aput-object v6, v5, v1

    sget-object v1, Lcom/microsoft/identity/client/Prompt;->LOGIN:Lcom/microsoft/identity/client/Prompt;

    aput-object v1, v5, v2

    sget-object v1, Lcom/microsoft/identity/client/Prompt;->CONSENT:Lcom/microsoft/identity/client/Prompt;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/microsoft/identity/client/Prompt;->$VALUES:[Lcom/microsoft/identity/client/Prompt;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/client/Prompt;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/client/Prompt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/client/Prompt;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/client/Prompt;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/client/Prompt;->$VALUES:[Lcom/microsoft/identity/client/Prompt;

    invoke-virtual {v0}, [Lcom/microsoft/identity/client/Prompt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/client/Prompt;

    return-object v0
.end method


# virtual methods
.method public toOpenIdConnectPromptParameter()Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/microsoft/identity/client/Prompt;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":toOpenIdConnectPromptParameter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 3
    sget-object v0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;->SELECT_ACCOUNT:Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    return-object v0

    :cond_0
    const-string v1, "WHEN_REQUIRED Does not have corresponding value in in the OIDC prompt enumeration.  It\'s meant to convey do not sent the prompt parameter."

    .line 4
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    sget-object v0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;->CONSENT:Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    return-object v0

    .line 7
    :cond_2
    sget-object v0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;->LOGIN:Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    return-object v0

    .line 8
    :cond_3
    sget-object v0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;->SELECT_ACCOUNT:Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "WHEN_REQUIRED"

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    const-string v0, "CONSENT"

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "LOGIN"

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, "SELECT_ACCOUNT"

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
