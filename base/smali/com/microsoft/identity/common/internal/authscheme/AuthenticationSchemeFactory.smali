.class public Lcom/microsoft/identity/common/internal/authscheme/AuthenticationSchemeFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "AuthenticationSchemeFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createScheme(Lcom/microsoft/identity/common/internal/authscheme/INameable;)Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;
    .locals 5

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Lcom/microsoft/identity/common/internal/authscheme/BearerAuthenticationSchemeInternal;

    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/authscheme/BearerAuthenticationSchemeInternal;-><init>()V

    return-object p0

    .line 2
    :cond_0
    invoke-interface {p0}, Lcom/microsoft/identity/common/internal/authscheme/INameable;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x13a11

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const v3, 0x765cef81

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "Bearer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "PoP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    if-eqz v1, :cond_6

    if-ne v1, v4, :cond_5

    .line 3
    instance-of v0, p0, Lcom/microsoft/identity/common/internal/authscheme/IPoPAuthenticationSchemeParams;

    if-eqz v0, :cond_4

    .line 4
    sget-object v0, Lcom/microsoft/identity/common/internal/authscheme/AuthenticationSchemeFactory;->TAG:Ljava/lang/String;

    const-string v1, "Constructing PoP Authentication Scheme."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    check-cast p0, Lcom/microsoft/identity/common/internal/authscheme/IPoPAuthenticationSchemeParams;

    .line 6
    new-instance v0, Lcom/microsoft/identity/common/internal/authscheme/PopAuthenticationSchemeInternal;

    .line 7
    invoke-interface {p0}, Lcom/microsoft/identity/common/internal/authscheme/IPoPAuthenticationSchemeParams;->getHttpMethod()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-interface {p0}, Lcom/microsoft/identity/common/internal/authscheme/IPoPAuthenticationSchemeParams;->getUrl()Ljava/net/URL;

    move-result-object v2

    .line 9
    invoke-interface {p0}, Lcom/microsoft/identity/common/internal/authscheme/INonced;->getNonce()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/identity/common/internal/authscheme/PopAuthenticationSchemeInternal;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    return-object v0

    .line 10
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unrecognized parameter type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unknown or unsupported scheme: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12
    invoke-interface {p0}, Lcom/microsoft/identity/common/internal/authscheme/INameable;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_6
    sget-object p0, Lcom/microsoft/identity/common/internal/authscheme/AuthenticationSchemeFactory;->TAG:Ljava/lang/String;

    const-string v0, "Constructing Bearer Authentication Scheme."

    invoke-static {p0, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance p0, Lcom/microsoft/identity/common/internal/authscheme/BearerAuthenticationSchemeInternal;

    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/authscheme/BearerAuthenticationSchemeInternal;-><init>()V

    return-object p0
.end method
