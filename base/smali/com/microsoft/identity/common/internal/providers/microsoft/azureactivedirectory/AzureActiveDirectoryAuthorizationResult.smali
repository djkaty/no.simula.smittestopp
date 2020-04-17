.class public Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;
.super Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationResult<",
        "Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResponse;",
        "Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationErrorResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationErrorResponse;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationResult;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationErrorResponse;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationResult;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationResponse;)V

    return-void
.end method
