.class public Lcom/microsoft/identity/client/PublicClientApplication$12;
.super Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/client/PublicClientApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/client/PublicClientApplication;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/PublicClientApplication;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$12;->this$0:Lcom/microsoft/identity/client/PublicClientApplication;

    invoke-direct {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;-><init>(Lcom/microsoft/identity/client/PublicClientApplication;)V

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;Lcom/microsoft/identity/client/IAccount;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p2}, Lcom/microsoft/identity/client/IClaimable;->getClaims()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    instance-of v1, p2, Lcom/microsoft/identity/client/MultiTenantAccount;

    if-eqz v1, :cond_2

    .line 5
    check-cast p2, Lcom/microsoft/identity/client/MultiTenantAccount;

    .line 6
    invoke-virtual {p2}, Lcom/microsoft/identity/client/MultiTenantAccount;->getTenantProfiles()Ljava/util/Map;

    move-result-object p2

    .line 7
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/client/ITenantProfile;

    invoke-interface {v2}, Lcom/microsoft/identity/client/IClaimable;->getClaims()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/client/IClaimable;

    .line 11
    invoke-interface {v0}, Lcom/microsoft/identity/client/IClaimable;->getClaims()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 12
    invoke-interface {v0}, Lcom/microsoft/identity/client/IClaimable;->getClaims()Ljava/util/Map;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/cache/SchemaUtil;->getDisplayableId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
