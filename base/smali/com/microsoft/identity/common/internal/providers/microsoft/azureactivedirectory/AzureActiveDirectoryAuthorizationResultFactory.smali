.class public Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResultFactory;
.super Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResultFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResultFactory<",
        "Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;",
        "Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationRequest;",
        ">;"
    }
.end annotation


# static fields
.field public static final ERROR_CODES:Ljava/lang/String; = "error_codes"

.field public static final TAG:Ljava/lang/String; = "AzureActiveDirectoryAuthorizationResultFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResultFactory;-><init>()V

    return-void
.end method

.method private createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationErrorResponse;

    invoke-direct {v0, p2, p3}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationErrorResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;

    invoke-direct {p2, p1, v0}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationErrorResponse;)V

    return-object p2
.end method

.method private createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;
    .locals 3

    .line 3
    sget-object v0, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResultFactory;->TAG:Ljava/lang/String;

    const-string v1, "Error is returned from webview redirect"

    invoke-static {v0, p5, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResultFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " errorDescription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p5, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p5, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationErrorResponse;

    invoke-direct {p5, p2, p3}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationErrorResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p5, p4}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationErrorResponse;->setErrorCodes(Ljava/lang/String;)V

    .line 7
    new-instance p2, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;

    invoke-direct {p2, p1, p5}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationErrorResponse;)V

    return-object p2
.end method

.method private parseUrlAndCreateAuthorizationResult(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->getUrlParameters(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "The authorization server returned an invalid response."

    const-string v1, "authorization_failed"

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "correlation_id"

    .line 3
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    const-string v2, "code"

    .line 4
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "state"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2, v8}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResultFactory;->validateAndCreateAuthorizationResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p2, "error"

    .line 6
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    sget-object v4, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;->FAIL:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    const-string p2, "error_description"

    .line 8
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    const-string p2, "error_codes"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    move-object v3, p0

    .line 9
    invoke-direct/range {v3 .. v8}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResultFactory;->createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_2
    sget-object p1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;->FAIL:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;

    invoke-direct {p0, p1, v1, v0}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResultFactory;->createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;

    move-result-object p1

    :goto_0
    return-object p1

    .line 11
    :cond_3
    :goto_1
    sget-object p1, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResultFactory;->TAG:Ljava/lang/String;

    const-string p2, "Invalid server response, empty query string from the webview redirect."

    invoke-static {p1, p2}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object p1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;->FAIL:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;

    invoke-direct {p0, p1, v1, v0}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResultFactory;->createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;

    move-result-object p1

    return-object p1
.end method

.method private validateAndCreateAuthorizationResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "state_mismatch"

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResultFactory;->TAG:Ljava/lang/String;

    const-string p2, "State parameter is not returned from the webview redirect."

    invoke-static {p1, p4, p2}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;->FAIL:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;

    const-string p2, "State is not returned"

    invoke-direct {p0, p1, v1, p2}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResultFactory;->createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;

    move-result-object p1

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {p3}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object p3, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResultFactory;->TAG:Ljava/lang/String;

    const-string v0, "Auth code is successfully returned from webview redirect."

    invoke-static {p3, p4, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p3, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResponse;

    invoke-direct {p3, p1, p2}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p3, p4}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationResponse;->setCorrelationId(Ljava/lang/String;)V

    .line 8
    new-instance p1, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;

    sget-object p2, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;->SUCCESS:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;

    invoke-direct {p1, p2, p3}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResponse;)V

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    sget-object p1, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResultFactory;->TAG:Ljava/lang/String;

    const-string p2, "State parameter returned from the redirect is not same as the one sent in request."

    invoke-static {p1, p4, p2}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object p1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;->FAIL:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;

    const-string p2, "Returned state from authorize endpoint is not the same as the one sent"

    invoke-direct {p0, p1, v1, p2}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResultFactory;->createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;

    move-result-object p1

    :goto_1
    return-object p1
.end method


# virtual methods
.method public createAuthorizationResult(ILandroid/content/Intent;Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationRequest;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;
    .locals 8

    const-string p3, "authorization_failed"

    if-eqz p2, :cond_3

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.microsoft.aad.adal:RequestId"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Device needs to have broker installed"

    const-string v4, "Device needs to have broker installed, we expect the apps to call usback when the broker is installed"

    const-string v5, "]"

    const-string v6, "Unknown result code returned ["

    const-string v7, "Unknown error"

    packed-switch p1, :pswitch_data_0

    .line 5
    :pswitch_0
    sget-object p2, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;->FAIL:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;

    invoke-static {v6, p1, v5}, Le/a/a/a/a;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, v7, p3}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResultFactory;->createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;

    move-result-object v2

    goto/16 :goto_0

    .line 6
    :pswitch_1
    sget-object p2, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResultFactory;->TAG:Ljava/lang/String;

    invoke-static {p2, v4}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object p2, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;->FAIL:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;

    invoke-direct {p0, p2, p3, v3}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResultFactory;->createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;

    move-result-object v2

    goto :goto_0

    .line 8
    :pswitch_2
    sget-object p2, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResultFactory;->TAG:Ljava/lang/String;

    invoke-static {p2, v4}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object p2, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;->FAIL:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;

    invoke-direct {p0, p2, p3, v3}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResultFactory;->createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;

    move-result-object v2

    goto :goto_0

    :pswitch_3
    const-string p2, "com.microsoft.aad.adal:AuthenticationException"

    .line 10
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 11
    instance-of p3, p2, Lcom/microsoft/identity/common/exception/ClientException;

    if-eqz p3, :cond_1

    .line 12
    check-cast p2, Lcom/microsoft/identity/common/exception/ClientException;

    .line 13
    sget-object p3, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;->FAIL:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;

    .line 14
    invoke-virtual {p2}, Lcom/microsoft/identity/common/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/microsoft/identity/common/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-direct {p0, p3, v0, p2}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResultFactory;->createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;

    move-result-object v2

    goto :goto_0

    :pswitch_4
    const-string p3, "com.microsoft.aad.adal:BrowserFinalUrl"

    const-string v1, ""

    .line 16
    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "request_state_parameter"

    .line 17
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3, p2}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResultFactory;->parseUrlAndCreateAuthorizationResult(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;

    move-result-object v2

    goto :goto_0

    :pswitch_5
    const-string p2, "com.microsoft.aad.adal:BrowserErrorCode"

    .line 18
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.microsoft.aad.adal:BrowserErrorMessage"

    .line 19
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 20
    sget-object v0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;->FAIL:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;

    invoke-direct {p0, v0, p2, p3}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResultFactory;->createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;

    move-result-object v2

    goto :goto_0

    .line 21
    :pswitch_6
    sget-object p2, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResultFactory;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User cancel the request in webview: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    sget-object p2, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;->USER_CANCEL:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;

    const-string p3, "user_cancelled"

    const-string v0, "User pressed device back button to cancel the flow."

    invoke-direct {p0, p2, p3, v0}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResultFactory;->createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;

    move-result-object v2

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 23
    sget-object p2, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;->FAIL:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;

    invoke-static {v6, p1, v5}, Le/a/a/a/a;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, v7, p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResultFactory;->createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;

    move-result-object v2

    :cond_2
    return-object v2

    .line 24
    :cond_3
    :goto_1
    sget-object p1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;->FAIL:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;

    const-string p2, "Received null intent"

    invoke-direct {p0, p1, p3, p2}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResultFactory;->createAuthorizationResultWithErrorResponse(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic createAuthorizationResult(ILandroid/content/Intent;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;
    .locals 0

    .line 1
    check-cast p3, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResultFactory;->createAuthorizationResult(ILandroid/content/Intent;Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationRequest;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationResult;

    move-result-object p1

    return-object p1
.end method
