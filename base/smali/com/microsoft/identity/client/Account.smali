.class public Lcom/microsoft/identity/client/Account;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/IAccount;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mClientInfo:Ljava/lang/String;

.field public mEnvironment:Ljava/lang/String;

.field public mHomeOid:Ljava/lang/String;

.field public mHomeTenantId:Ljava/lang/String;

.field public final mIdTokenClaims:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field public final mRawIdToken:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/client/Account;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/client/Account;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/identity/client/Account;->mClientInfo:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;->getTokenClaims()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/client/Account;->mIdTokenClaims:Ljava/util/Map;

    .line 4
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;->getRawIDToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/client/Account;->mRawIdToken:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/microsoft/identity/client/Account;->mIdTokenClaims:Ljava/util/Map;

    .line 6
    iput-object p1, p0, Lcom/microsoft/identity/client/Account;->mRawIdToken:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public getAuthority()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/client/Account;->getClaims()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/client/Account;->getClaims()Ljava/util/Map;

    move-result-object v0

    const-string v1, "iss"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "Missing from the token response"

    return-object v0
.end method

.method public getClaims()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/Account;->mIdTokenClaims:Ljava/util/Map;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/Account;->mEnvironment:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeAccountId()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/identity/client/Account;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/client/Account;->mHomeTenantId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/Account;->mClientInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    new-instance v1, Lcom/microsoft/identity/client/ClientInfo;

    invoke-direct {v1, v0}, Lcom/microsoft/identity/client/ClientInfo;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/identity/client/exception/MsalClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/microsoft/identity/client/Account;->TAG:Ljava/lang/String;

    const-string v2, "Failed to parse ClientInfo"

    invoke-static {v1, v2, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/microsoft/identity/client/ClientInfo;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/microsoft/identity/client/Account;->mIdTokenClaims:Ljava/util/Map;

    if-eqz v0, :cond_2

    const-string v1, "oid"

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/microsoft/identity/client/Account;->mHomeOid:Ljava/lang/String;

    :goto_1
    return-object v0
.end method

.method public getIdToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/Account;->mRawIdToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTenantId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/Account;->mHomeTenantId:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/client/Account;->getClaims()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/client/Account;->getClaims()Ljava/util/Map;

    move-result-object v0

    const-string v1, "preferred_username"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/client/Account;->getClaims()Ljava/util/Map;

    move-result-object v0

    const-string v1, "upn"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "Missing from the token response"

    return-object v0
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/Account;->mEnvironment:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/Account;->mHomeOid:Ljava/lang/String;

    return-void
.end method

.method public setTenantId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/Account;->mHomeTenantId:Ljava/lang/String;

    return-void
.end method
