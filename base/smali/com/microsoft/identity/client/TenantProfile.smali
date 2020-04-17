.class public Lcom/microsoft/identity/client/TenantProfile;
.super Lcom/microsoft/identity/client/Account;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/ITenantProfile;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/client/Account;-><init>(Ljava/lang/String;Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;)V

    return-void
.end method


# virtual methods
.method public getTenantId()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/client/Account;->getClaims()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/client/Account;->getClaims()Ljava/util/Map;

    move-result-object v0

    const-string v1, "tid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
