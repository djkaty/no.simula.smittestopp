.class public Lcom/microsoft/identity/client/claims/ClaimsRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final ID_TOKEN:Ljava/lang/String; = "id_token"

.field public static final USERINFO:Ljava/lang/String; = "userinfo"


# instance fields
.field public mAccessTokenClaimsRequested:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/client/claims/RequestedClaim;",
            ">;"
        }
    .end annotation
.end field

.field public mIdTokenClaimsRequested:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/client/claims/RequestedClaim;",
            ">;"
        }
    .end annotation
.end field

.field public mUserInfoClaimsRequested:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/client/claims/RequestedClaim;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mUserInfoClaimsRequested:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mAccessTokenClaimsRequested:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mIdTokenClaimsRequested:Ljava/util/List;

    return-void
.end method

.method public static deserializeClaimsRequest(Ljava/lang/String;)Lcom/microsoft/identity/client/claims/ClaimsRequest;
    .locals 3

    .line 1
    const-class v0, Lcom/microsoft/identity/client/claims/ClaimsRequest;

    new-instance v1, Le/c/c/e;

    invoke-direct {v1}, Le/c/c/e;-><init>()V

    .line 2
    new-instance v2, Lcom/microsoft/identity/client/claims/ClaimsRequestDeserializer;

    invoke-direct {v2}, Lcom/microsoft/identity/client/claims/ClaimsRequestDeserializer;-><init>()V

    .line 3
    invoke-virtual {v1, v0, v2}, Le/c/c/e;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Le/c/c/e;

    .line 4
    invoke-virtual {v1}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v1

    .line 5
    invoke-virtual {v1, p0, v0}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 6
    invoke-static {v0}, Le/c/c/w/t;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 7
    check-cast p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;

    return-object p0
.end method

.method public static getClaimsRequestFromJsonString(Ljava/lang/String;)Lcom/microsoft/identity/client/claims/ClaimsRequest;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->deserializeClaimsRequest(Ljava/lang/String;)Lcom/microsoft/identity/client/claims/ClaimsRequest;

    move-result-object p0

    return-object p0
.end method

.method public static getJsonStringFromClaimsRequest(Lcom/microsoft/identity/client/claims/ClaimsRequest;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->serializeClaimsRequest(Lcom/microsoft/identity/client/claims/ClaimsRequest;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private requestClaimIn(Ljava/util/List;Ljava/lang/String;Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/client/claims/RequestedClaim;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/client/claims/RequestedClaim;

    invoke-direct {v0}, Lcom/microsoft/identity/client/claims/RequestedClaim;-><init>()V

    .line 2
    invoke-virtual {v0, p2}, Lcom/microsoft/identity/client/claims/RequestedClaim;->setName(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p3}, Lcom/microsoft/identity/client/claims/RequestedClaim;->setAdditionalInformation(Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;)V

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static serializeClaimsRequest(Lcom/microsoft/identity/client/claims/ClaimsRequest;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Le/c/c/e;

    invoke-direct {v0}, Le/c/c/e;-><init>()V

    .line 2
    new-instance v1, Lcom/microsoft/identity/client/claims/ClaimsRequestSerializer;

    invoke-direct {v1}, Lcom/microsoft/identity/client/claims/ClaimsRequestSerializer;-><init>()V

    .line 3
    new-instance v2, Lcom/microsoft/identity/client/claims/RequestClaimAdditionalInformationSerializer;

    invoke-direct {v2}, Lcom/microsoft/identity/client/claims/RequestClaimAdditionalInformationSerializer;-><init>()V

    .line 4
    const-class v3, Lcom/microsoft/identity/client/claims/ClaimsRequest;

    invoke-virtual {v0, v3, v1}, Le/c/c/e;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Le/c/c/e;

    .line 5
    const-class v1, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;

    invoke-virtual {v0, v1, v2}, Le/c/c/e;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Le/c/c/e;

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Le/c/c/e;->g:Z

    .line 7
    invoke-virtual {v0}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/microsoft/identity/client/claims/ClaimsRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/microsoft/identity/client/claims/ClaimsRequest;

    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mUserInfoClaimsRequested:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v3, p1, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mUserInfoClaimsRequested:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mUserInfoClaimsRequested:Ljava/util/List;

    if-eqz v1, :cond_3

    :goto_0
    return v2

    .line 4
    :cond_3
    iget-object v1, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mAccessTokenClaimsRequested:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v3, p1, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mAccessTokenClaimsRequested:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mAccessTokenClaimsRequested:Ljava/util/List;

    if-eqz v1, :cond_5

    :goto_1
    return v2

    .line 5
    :cond_5
    iget-object v1, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mIdTokenClaimsRequested:Ljava/util/List;

    iget-object p1, p1, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mIdTokenClaimsRequested:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_6
    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public getAccessTokenClaimsRequested()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/client/claims/RequestedClaim;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mAccessTokenClaimsRequested:Ljava/util/List;

    return-object v0
.end method

.method public getIdTokenClaimsRequested()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/client/claims/RequestedClaim;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mIdTokenClaimsRequested:Ljava/util/List;

    return-object v0
.end method

.method public getUserInfoClaimsRequested()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/client/claims/RequestedClaim;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mUserInfoClaimsRequested:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mUserInfoClaimsRequested:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mAccessTokenClaimsRequested:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mIdTokenClaimsRequested:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public requestClaimInAccessToken(Ljava/lang/String;Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mAccessTokenClaimsRequested:Ljava/util/List;

    invoke-direct {p0, v0, p1, p2}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->requestClaimIn(Ljava/util/List;Ljava/lang/String;Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;)V

    return-void
.end method

.method public requestClaimInIdToken(Ljava/lang/String;Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mIdTokenClaimsRequested:Ljava/util/List;

    invoke-direct {p0, v0, p1, p2}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->requestClaimIn(Ljava/util/List;Ljava/lang/String;Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;)V

    return-void
.end method

.method public requestClaimInUserInfo(Ljava/lang/String;Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;->mUserInfoClaimsRequested:Ljava/util/List;

    invoke-direct {p0, v0, p1, p2}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->requestClaimIn(Ljava/util/List;Ljava/lang/String;Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;)V

    return-void
.end method
