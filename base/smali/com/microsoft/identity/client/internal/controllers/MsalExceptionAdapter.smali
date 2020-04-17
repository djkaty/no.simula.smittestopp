.class public Lcom/microsoft/identity/client/internal/controllers/MsalExceptionAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static msalExceptionFromBaseException(Lcom/microsoft/identity/common/exception/BaseException;)Lcom/microsoft/identity/client/exception/MsalException;
    .locals 5

    .line 1
    instance-of v0, p0, Lcom/microsoft/identity/client/exception/MsalException;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lcom/microsoft/identity/client/exception/MsalException;

    goto/16 :goto_1

    .line 3
    :cond_0
    instance-of v0, p0, Lcom/microsoft/identity/common/exception/ClientException;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p0

    check-cast v0, Lcom/microsoft/identity/common/exception/ClientException;

    .line 5
    new-instance v1, Lcom/microsoft/identity/client/exception/MsalClientException;

    .line 6
    invoke-virtual {v0}, Lcom/microsoft/identity/common/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v0}, Lcom/microsoft/identity/common/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 8
    :cond_1
    instance-of v0, p0, Lcom/microsoft/identity/common/exception/ArgumentException;

    if-eqz v0, :cond_2

    .line 9
    move-object v0, p0

    check-cast v0, Lcom/microsoft/identity/common/exception/ArgumentException;

    .line 10
    new-instance v1, Lcom/microsoft/identity/client/exception/MsalArgumentException;

    .line 11
    invoke-virtual {v0}, Lcom/microsoft/identity/common/exception/ArgumentException;->getArgumentName()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v0}, Lcom/microsoft/identity/common/exception/ArgumentException;->getOperationName()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {v0}, Lcom/microsoft/identity/common/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/microsoft/identity/client/exception/MsalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 14
    :cond_2
    instance-of v0, p0, Lcom/microsoft/identity/common/exception/UiRequiredException;

    if-eqz v0, :cond_3

    .line 15
    move-object v0, p0

    check-cast v0, Lcom/microsoft/identity/common/exception/UiRequiredException;

    .line 16
    new-instance v1, Lcom/microsoft/identity/client/exception/MsalUiRequiredException;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/microsoft/identity/common/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/microsoft/identity/client/exception/MsalUiRequiredException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_3
    instance-of v0, p0, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;

    if-eqz v0, :cond_4

    .line 18
    new-instance v0, Lcom/microsoft/identity/client/exception/MsalIntuneAppProtectionPolicyRequiredException;

    move-object v1, p0

    check-cast v1, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;

    invoke-direct {v0, v1}, Lcom/microsoft/identity/client/exception/MsalIntuneAppProtectionPolicyRequiredException;-><init>(Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;)V

    goto :goto_1

    .line 19
    :cond_4
    instance-of v0, p0, Lcom/microsoft/identity/common/exception/ServiceException;

    if-eqz v0, :cond_5

    .line 20
    move-object v0, p0

    check-cast v0, Lcom/microsoft/identity/common/exception/ServiceException;

    .line 21
    new-instance v1, Lcom/microsoft/identity/client/exception/MsalServiceException;

    .line 22
    invoke-virtual {v0}, Lcom/microsoft/identity/common/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v0}, Lcom/microsoft/identity/common/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-virtual {v0}, Lcom/microsoft/identity/common/exception/ServiceException;->getHttpStatusCode()I

    move-result v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/microsoft/identity/client/exception/MsalServiceException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    goto :goto_0

    .line 25
    :cond_5
    instance-of v0, p0, Lcom/microsoft/identity/common/exception/UserCancelException;

    if-eqz v0, :cond_6

    .line 26
    new-instance v0, Lcom/microsoft/identity/client/exception/MsalUserCancelException;

    invoke-direct {v0}, Lcom/microsoft/identity/client/exception/MsalUserCancelException;-><init>()V

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_7

    .line 27
    new-instance v0, Lcom/microsoft/identity/client/exception/MsalClientException;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknown_error"

    invoke-direct {v0, v2, v1, p0}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    return-object v0
.end method
