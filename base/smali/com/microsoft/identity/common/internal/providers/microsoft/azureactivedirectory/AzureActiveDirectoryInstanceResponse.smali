.class public Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryInstanceResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mApiVersion:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "api-version"
    .end annotation
.end field

.field public mClouds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "metadata"
    .end annotation
.end field

.field public mTestDiscoveryEndpoint:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "tenant_discovery_endpoint"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryInstanceResponse;->mApiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getClouds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryInstanceResponse;->mClouds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTestDiscoveryEndpoint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryInstanceResponse;->mTestDiscoveryEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public setApiVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryInstanceResponse;->mApiVersion:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryInstanceResponse;->mApiVersion:Ljava/lang/String;

    return-void
.end method

.method public setClouds(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryInstanceResponse;->mClouds:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryInstanceResponse;->mClouds:Ljava/util/ArrayList;

    return-void
.end method

.method public setTestDiscoveryEndpoint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryInstanceResponse;->mTestDiscoveryEndpoint:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryInstanceResponse;->mTestDiscoveryEndpoint:Ljava/lang/String;

    return-void
.end method
