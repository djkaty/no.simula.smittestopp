.class public Lcom/microsoft/identity/common/exception/ServiceException;
.super Lcom/microsoft/identity/common/exception/BaseException;
.source "SourceFile"


# static fields
.field public static final ACCESS_DENIED:Ljava/lang/String; = "access_denied"

.field public static final DEFAULT_STATUS_CODE:I = 0x0

.field public static final INVALID_INSTANCE:Ljava/lang/String; = "invalid_instance"

.field public static final INVALID_REQUEST:Ljava/lang/String; = "invalid_request"

.field public static final INVALID_SCOPE:Ljava/lang/String; = "invalid_scope"

.field public static final OPENID_PROVIDER_CONFIGURATION_FAILED_TO_LOAD:Ljava/lang/String; = "failed_to_load_openid_configuration"

.field public static final REQUEST_TIMEOUT:Ljava/lang/String; = "request_timeout"

.field public static final SERVICE_NOT_AVAILABLE:Ljava/lang/String; = "service_not_available"

.field public static final UNAUTHORIZED_CLIENT:Ljava/lang/String; = "unauthorized_client"

.field public static final UNKNOWN_ERROR:Ljava/lang/String; = "unknown_error"

.field public static final sName:Ljava/lang/String;


# instance fields
.field public mHttpResponseBody:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mHttpResponseHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mHttpStatusCode:I

.field public mOauthSubErrorCode:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/exception/ServiceException;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/exception/ServiceException;->sName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p4}, Lcom/microsoft/identity/common/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/microsoft/identity/common/exception/ServiceException;->mHttpResponseBody:Ljava/util/HashMap;

    .line 7
    iput-object p1, p0, Lcom/microsoft/identity/common/exception/ServiceException;->mHttpResponseHeaders:Ljava/util/HashMap;

    .line 8
    iput p3, p0, Lcom/microsoft/identity/common/exception/ServiceException;->mHttpStatusCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/identity/common/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/microsoft/identity/common/exception/ServiceException;->mHttpResponseBody:Ljava/util/HashMap;

    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/common/exception/ServiceException;->mHttpResponseHeaders:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/microsoft/identity/common/exception/ServiceException;->mHttpStatusCode:I

    return-void
.end method


# virtual methods
.method public getExceptionName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/exception/ServiceException;->sName:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpResponseBody()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/exception/ServiceException;->mHttpResponseBody:Ljava/util/HashMap;

    return-object v0
.end method

.method public getHttpResponseHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/exception/ServiceException;->mHttpResponseHeaders:Ljava/util/HashMap;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/exception/ServiceException;->mHttpStatusCode:I

    return v0
.end method

.method public getOAuthSubErrorCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/exception/ServiceException;->mOauthSubErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public setHttpResponse(Lcom/microsoft/identity/common/internal/net/HttpResponse;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/net/HttpResponse;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcom/microsoft/identity/common/exception/ServiceException;->mHttpStatusCode:I

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/net/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/net/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/microsoft/identity/common/exception/ServiceException;->mHttpResponseHeaders:Ljava/util/HashMap;

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/net/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1}, Lcom/microsoft/identity/common/adal/internal/util/HashMapExtensions;->getJsonResponse(Lcom/microsoft/identity/common/internal/net/HttpResponse;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/exception/ServiceException;->mHttpResponseBody:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method public setHttpResponseBody(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/exception/ServiceException;->mHttpResponseBody:Ljava/util/HashMap;

    return-void
.end method

.method public setHttpResponseHeaders(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/exception/ServiceException;->mHttpResponseHeaders:Ljava/util/HashMap;

    return-void
.end method

.method public setOauthSubErrorCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/exception/ServiceException;->mOauthSubErrorCode:Ljava/lang/String;

    return-void
.end method
