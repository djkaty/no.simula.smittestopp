.class public Lcom/microsoft/identity/client/claims/ClaimsRequestDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/c/c/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/c/c/i<",
        "Lcom/microsoft/identity/client/claims/ClaimsRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addProperties(Ljava/util/List;Le/c/c/m;Le/c/c/h;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/client/claims/RequestedClaim;",
            ">;",
            "Le/c/c/m;",
            "Le/c/c/h;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p2, Le/c/c/m;->a:Le/c/c/w/r;

    invoke-virtual {v0}, Le/c/c/w/r;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    new-instance v2, Lcom/microsoft/identity/client/claims/RequestedClaim;

    invoke-direct {v2}, Lcom/microsoft/identity/client/claims/RequestedClaim;-><init>()V

    .line 4
    invoke-virtual {v2, v1}, Lcom/microsoft/identity/client/claims/RequestedClaim;->setName(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2, v1}, Le/c/c/m;->a(Ljava/lang/String;)Le/c/c/j;

    move-result-object v3

    .line 6
    instance-of v3, v3, Le/c/c/l;

    if-nez v3, :cond_1

    .line 7
    invoke-virtual {p2, v1}, Le/c/c/m;->b(Ljava/lang/String;)Le/c/c/m;

    move-result-object v1

    const-class v3, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;

    .line 8
    move-object v4, p3

    check-cast v4, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;

    invoke-virtual {v4, v1, v3}, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;->a(Le/c/c/j;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;

    .line 9
    invoke-virtual {v2, v1}, Lcom/microsoft/identity/client/claims/RequestedClaim;->setAdditionalInformation(Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;)V

    .line 10
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public deserialize(Le/c/c/j;Ljava/lang/reflect/Type;Le/c/c/h;)Lcom/microsoft/identity/client/claims/ClaimsRequest;
    .locals 3

    .line 2
    new-instance p2, Lcom/microsoft/identity/client/claims/ClaimsRequest;

    invoke-direct {p2}, Lcom/microsoft/identity/client/claims/ClaimsRequest;-><init>()V

    .line 3
    invoke-virtual {p2}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->getAccessTokenClaimsRequested()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Le/c/c/j;->c()Le/c/c/m;

    move-result-object v1

    const-string v2, "access_token"

    invoke-virtual {v1, v2}, Le/c/c/m;->b(Ljava/lang/String;)Le/c/c/m;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/microsoft/identity/client/claims/ClaimsRequestDeserializer;->addProperties(Ljava/util/List;Le/c/c/m;Le/c/c/h;)V

    .line 4
    invoke-virtual {p2}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->getIdTokenClaimsRequested()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Le/c/c/j;->c()Le/c/c/m;

    move-result-object v1

    const-string v2, "id_token"

    invoke-virtual {v1, v2}, Le/c/c/m;->b(Ljava/lang/String;)Le/c/c/m;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/microsoft/identity/client/claims/ClaimsRequestDeserializer;->addProperties(Ljava/util/List;Le/c/c/m;Le/c/c/h;)V

    .line 5
    invoke-virtual {p2}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->getUserInfoClaimsRequested()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Le/c/c/j;->c()Le/c/c/m;

    move-result-object p1

    const-string v1, "userinfo"

    invoke-virtual {p1, v1}, Le/c/c/m;->b(Ljava/lang/String;)Le/c/c/m;

    move-result-object p1

    invoke-direct {p0, v0, p1, p3}, Lcom/microsoft/identity/client/claims/ClaimsRequestDeserializer;->addProperties(Ljava/util/List;Le/c/c/m;Le/c/c/h;)V

    return-object p2
.end method

.method public bridge synthetic deserialize(Le/c/c/j;Ljava/lang/reflect/Type;Le/c/c/h;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/client/claims/ClaimsRequestDeserializer;->deserialize(Le/c/c/j;Ljava/lang/reflect/Type;Le/c/c/h;)Lcom/microsoft/identity/client/claims/ClaimsRequest;

    move-result-object p1

    return-object p1
.end method
