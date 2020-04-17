.class public Lcom/microsoft/identity/common/internal/broker/BrokerResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;,
        Lcom/microsoft/identity/common/internal/broker/BrokerResult$SerializedNames;
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x7770e60a765ce419L


# instance fields
.field public mAccessToken:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "access_token"
    .end annotation
.end field

.field public mAuthority:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "authority"
    .end annotation
.end field

.field public mCachedAt:J
    .annotation runtime Le/c/c/v/c;
        value = "cached_at"
    .end annotation
.end field

.field public mCliTelemErrorCode:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "cli_telem_error_code"
    .end annotation
.end field

.field public mCliTelemSubErrorCode:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "cli_telem_suberror_code"
    .end annotation
.end field

.field public mClientId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "client_id"
    .end annotation
.end field

.field public mClientInfo:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "client_info"
    .end annotation
.end field

.field public mCorrelationId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "correlation_id"
    .end annotation
.end field

.field public mEnvironment:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "environment"
    .end annotation
.end field

.field public mErrorCode:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "broker_error_code"
    .end annotation
.end field

.field public mErrorMessage:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "broker_error_message"
    .end annotation
.end field

.field public final mExceptionType:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "broker_exception_type"
    .end annotation
.end field

.field public mExpiresOn:J
    .annotation runtime Le/c/c/v/c;
        value = "expires_on"
    .end annotation
.end field

.field public mExtendedExpiresOn:J
    .annotation runtime Le/c/c/v/c;
        value = "ext_expires_on"
    .end annotation
.end field

.field public mFamilyId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "family_id"
    .end annotation
.end field

.field public mHomeAccountId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "home_account_id"
    .end annotation
.end field

.field public mHttpResponseBody:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "http_response_body"
    .end annotation
.end field

.field public mHttpResponseHeaders:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "http_response_headers"
    .end annotation
.end field

.field public mHttpStatusCode:I
    .annotation runtime Le/c/c/v/c;
        value = "http_response_code"
    .end annotation
.end field

.field public mIdToken:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "id_token"
    .end annotation
.end field

.field public mLocalAccountId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "local_account_id"
    .end annotation
.end field

.field public mRefreshToken:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "refresh_token"
    .end annotation
.end field

.field public mRefreshTokenAge:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "refresh_token_age"
    .end annotation
.end field

.field public mScope:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "scopes"
    .end annotation
.end field

.field public mSpeRing:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "spe_ring"
    .end annotation
.end field

.field public mSubErrorCode:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "oauth_sub_error"
    .end annotation
.end field

.field public mSuccess:Z
    .annotation runtime Le/c/c/v/c;
        value = "success"
    .end annotation
.end field

.field public mTenantId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "tenant_id"
    .end annotation
.end field

.field public final mTenantProfileData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "tenant_profile_cache_records"
    .end annotation
.end field

.field public mTokenType:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "token_type"
    .end annotation
.end field

.field public mUserName:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "username"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$000(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mAccessToken:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$100(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mIdToken:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$200(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mRefreshToken:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$300(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mHomeAccountId:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$400(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mLocalAccountId:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$500(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mUserName:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$600(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mTokenType:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$700(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mClientId:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$800(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mFamilyId:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$900(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mScope:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$1000(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mClientInfo:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$1100(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mAuthority:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$1200(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mEnvironment:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$1300(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mTenantId:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$1400(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mExpiresOn:J

    .line 18
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$1500(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mExtendedExpiresOn:J

    .line 19
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$1600(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mCachedAt:J

    .line 20
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$1700(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mSpeRing:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$1800(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mRefreshTokenAge:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$1900(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mSuccess:Z

    .line 23
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2000(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mTenantProfileData:Ljava/util/List;

    .line 24
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2100(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mErrorCode:Ljava/lang/String;

    .line 25
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2200(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mErrorMessage:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2300(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mCorrelationId:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2400(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mSubErrorCode:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2500(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)I

    move-result v0

    iput v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mHttpStatusCode:I

    .line 29
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2600(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mHttpResponseBody:Ljava/lang/String;

    .line 30
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2700(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mHttpResponseHeaders:Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2800(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mCliTelemErrorCode:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2900(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mCliTelemSubErrorCode:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$3000(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mExceptionType:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;Lcom/microsoft/identity/common/internal/broker/BrokerResult$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;-><init>(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mCachedAt:J

    return-wide v0
.end method

.method public getCliTelemErrorCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mCliTelemErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCliTelemSubErrorCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mCliTelemSubErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mClientInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getCorrelationId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mCorrelationId:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mEnvironment:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mExceptionType:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresOn()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mExpiresOn:J

    return-wide v0
.end method

.method public getExtendedExpiresOn()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mExtendedExpiresOn:J

    return-wide v0
.end method

.method public getFamilyId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mFamilyId:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeAccountId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mHomeAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpResponseBody()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mHttpResponseBody:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpResponseHeaders()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mHttpResponseHeaders:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mHttpStatusCode:I

    return v0
.end method

.method public getIdToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mIdToken:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalAccountId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mLocalAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mRefreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshTokenAge()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mRefreshTokenAge:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mScope:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeRing()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mSpeRing:Ljava/lang/String;

    return-object v0
.end method

.method public getSubErrorCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mSubErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getTenantId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mTenantId:Ljava/lang/String;

    return-object v0
.end method

.method public getTenantProfileData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mTenantProfileData:Ljava/util/List;

    return-object v0
.end method

.method public getTokenType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mTokenType:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mSuccess:Z

    return v0
.end method
