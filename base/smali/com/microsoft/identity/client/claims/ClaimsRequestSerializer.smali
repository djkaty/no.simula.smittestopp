.class public Lcom/microsoft/identity/client/claims/ClaimsRequestSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/c/c/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/c/c/r<",
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


# virtual methods
.method public addPropertiesToObject(Ljava/util/List;Le/c/c/m;Le/c/c/q;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/client/claims/RequestedClaim;",
            ">;",
            "Le/c/c/m;",
            "Le/c/c/q;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/client/claims/RequestedClaim;

    .line 2
    invoke-virtual {v0}, Lcom/microsoft/identity/client/claims/RequestedClaim;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/microsoft/identity/client/claims/RequestedClaim;->getAdditionalInformation()Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;

    move-result-object v0

    const-class v2, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;

    move-object v3, p3

    check-cast v3, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;

    invoke-virtual {v3, v0, v2}, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Le/c/c/j;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public serialize(Lcom/microsoft/identity/client/claims/ClaimsRequest;Ljava/lang/reflect/Type;Le/c/c/q;)Le/c/c/j;
    .locals 4

    .line 2
    new-instance p2, Le/c/c/m;

    invoke-direct {p2}, Le/c/c/m;-><init>()V

    .line 3
    new-instance v0, Le/c/c/m;

    invoke-direct {v0}, Le/c/c/m;-><init>()V

    .line 4
    new-instance v1, Le/c/c/m;

    invoke-direct {v1}, Le/c/c/m;-><init>()V

    .line 5
    new-instance v2, Le/c/c/m;

    invoke-direct {v2}, Le/c/c/m;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->getAccessTokenClaimsRequested()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3, v1, p3}, Lcom/microsoft/identity/client/claims/ClaimsRequestSerializer;->addPropertiesToObject(Ljava/util/List;Le/c/c/m;Le/c/c/q;)V

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->getIdTokenClaimsRequested()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3, v2, p3}, Lcom/microsoft/identity/client/claims/ClaimsRequestSerializer;->addPropertiesToObject(Ljava/util/List;Le/c/c/m;Le/c/c/q;)V

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->getUserInfoClaimsRequested()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v0, p3}, Lcom/microsoft/identity/client/claims/ClaimsRequestSerializer;->addPropertiesToObject(Ljava/util/List;Le/c/c/m;Le/c/c/q;)V

    .line 9
    iget-object p1, v0, Le/c/c/m;->a:Le/c/c/w/r;

    .line 10
    iget p1, p1, Le/c/c/w/r;->z:I

    if-eqz p1, :cond_0

    const-string p1, "userinfo"

    .line 11
    invoke-virtual {p2, p1, v0}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    .line 12
    :cond_0
    iget-object p1, v2, Le/c/c/m;->a:Le/c/c/w/r;

    .line 13
    iget p1, p1, Le/c/c/w/r;->z:I

    if-eqz p1, :cond_1

    const-string p1, "id_token"

    .line 14
    invoke-virtual {p2, p1, v2}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    .line 15
    :cond_1
    iget-object p1, v1, Le/c/c/m;->a:Le/c/c/w/r;

    .line 16
    iget p1, p1, Le/c/c/w/r;->z:I

    if-eqz p1, :cond_2

    const-string p1, "access_token"

    .line 17
    invoke-virtual {p2, p1, v1}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    :cond_2
    return-object p2
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Le/c/c/q;)Le/c/c/j;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/identity/client/claims/ClaimsRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/client/claims/ClaimsRequestSerializer;->serialize(Lcom/microsoft/identity/client/claims/ClaimsRequest;Ljava/lang/reflect/Type;Le/c/c/q;)Le/c/c/j;

    move-result-object p1

    return-object p1
.end method
