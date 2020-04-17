.class public Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationResponse;
.super Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResponse;
.source "SourceFile"


# static fields
.field public static final CLOUD_GRAPH_HOST_NAME:Ljava/lang/String; = "cloud_graph_host_name"

.field public static final CLOUD_INSTANCE_HOST_NAME:Ljava/lang/String; = "cloud_instance_host_name"

.field public static final CLOUD_INSTANCE_NAME:Ljava/lang/String; = "cloud_instance_name"

.field public static final SESSION_STATE:Ljava/lang/String; = "session_state"


# instance fields
.field public mCloudGraphHostName:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field

.field public mCloudInstanceHostName:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field

.field public mCloudInstanceName:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field

.field public mCorrelationId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field

.field public mSessionState:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCloudGraphHostName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationResponse;->mCloudGraphHostName:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudInstanceHostName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationResponse;->mCloudInstanceHostName:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudInstanceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationResponse;->mCloudInstanceName:Ljava/lang/String;

    return-object v0
.end method

.method public getCorrelationId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationResponse;->mCorrelationId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationResponse;->mSessionState:Ljava/lang/String;

    return-object v0
.end method

.method public setCorrelationId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationResponse;->mCorrelationId:Ljava/lang/String;

    return-void
.end method
