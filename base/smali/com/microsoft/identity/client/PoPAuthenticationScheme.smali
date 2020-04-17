.class public Lcom/microsoft/identity/client/PoPAuthenticationScheme;
.super Lcom/microsoft/identity/client/AuthenticationScheme;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/authscheme/IPoPAuthenticationSchemeParams;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/client/PoPAuthenticationScheme$Builder;
    }
.end annotation


# instance fields
.field public final mHttpMethod:Lcom/microsoft/identity/client/HttpMethod;

.field public final mNonce:Ljava/lang/String;

.field public final mUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/HttpMethod;Ljava/net/URL;Ljava/lang/String;)V
    .locals 1

    const-string v0, "PoP"

    .line 2
    invoke-direct {p0, v0}, Lcom/microsoft/identity/client/AuthenticationScheme;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/client/PoPAuthenticationScheme;->mHttpMethod:Lcom/microsoft/identity/client/HttpMethod;

    .line 4
    iput-object p2, p0, Lcom/microsoft/identity/client/PoPAuthenticationScheme;->mUrl:Ljava/net/URL;

    .line 5
    iput-object p3, p0, Lcom/microsoft/identity/client/PoPAuthenticationScheme;->mNonce:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/identity/client/HttpMethod;Ljava/net/URL;Ljava/lang/String;Lcom/microsoft/identity/client/PoPAuthenticationScheme$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/identity/client/PoPAuthenticationScheme;-><init>(Lcom/microsoft/identity/client/HttpMethod;Ljava/net/URL;Ljava/lang/String;)V

    return-void
.end method

.method public static builder()Lcom/microsoft/identity/client/PoPAuthenticationScheme$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/identity/client/PoPAuthenticationScheme$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/microsoft/identity/client/PoPAuthenticationScheme$Builder;-><init>(Lcom/microsoft/identity/client/PoPAuthenticationScheme$1;)V

    return-object v0
.end method


# virtual methods
.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/PoPAuthenticationScheme;->mHttpMethod:Lcom/microsoft/identity/client/HttpMethod;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/PoPAuthenticationScheme;->mNonce:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/PoPAuthenticationScheme;->mUrl:Ljava/net/URL;

    return-object v0
.end method
