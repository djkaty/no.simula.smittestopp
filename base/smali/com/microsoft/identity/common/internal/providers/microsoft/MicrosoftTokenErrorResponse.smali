.class public Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenErrorResponse;
.super Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;
.source "SourceFile"


# instance fields
.field public mCorrelationId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "correlation_id"
    .end annotation
.end field

.field public mErrorCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "error_codes"
    .end annotation
.end field

.field public mOAuthErrorMetadata:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "oAuth_metadata"
    .end annotation
.end field

.field public mTimeStamp:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "timestamp"
    .end annotation
.end field

.field public mTraceId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "trace_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getCorrelationId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenErrorResponse;->mCorrelationId:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenErrorResponse;->mErrorCodes:Ljava/util/List;

    return-object v0
.end method

.method public getOAuthErrorMetadata()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenErrorResponse;->mOAuthErrorMetadata:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenErrorResponse;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenErrorResponse;->mTraceId:Ljava/lang/String;

    return-object v0
.end method

.method public setCorrelationId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenErrorResponse;->mCorrelationId:Ljava/lang/String;

    return-void
.end method

.method public setErrorCodes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenErrorResponse;->mErrorCodes:Ljava/util/List;

    return-void
.end method

.method public setOAuthErrorMetadata(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenErrorResponse;->mOAuthErrorMetadata:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenErrorResponse;->mTimeStamp:Ljava/lang/String;

    return-void
.end method

.method public setTraceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenErrorResponse;->mTraceId:Ljava/lang/String;

    return-void
.end method
