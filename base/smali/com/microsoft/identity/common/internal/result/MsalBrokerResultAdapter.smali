.class public Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/result/IBrokerResultAdapter;


# static fields
.field public static final TAG:Ljava/lang/String; = "com.microsoft.identity.common.internal.result.MsalBrokerResultAdapter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBaseExceptionFromErrorCodes(Lcom/microsoft/identity/common/internal/broker/BrokerResult;)Lcom/microsoft/identity/common/exception/BaseException;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "interaction_required"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "invalid_grant"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "Broker refresh token is invalid"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "no_tokens_found"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "unauthorized_client"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getSubErrorCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "protection_policy_required"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    sget-object v1, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received a IntuneAppProtectionPolicyRequiredException exception from Broker : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getIntuneProtectionRequiredException(Lcom/microsoft/identity/common/internal/broker/BrokerResult;)Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;

    move-result-object v0

    goto/16 :goto_3

    :cond_1
    const-string v1, "User cancelled"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    sget-object v1, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received a User cancelled exception from Broker : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/microsoft/identity/common/exception/UserCancelException;

    invoke-direct {v0}, Lcom/microsoft/identity/common/exception/UserCancelException;-><init>()V

    goto/16 :goto_3

    :cond_2
    const-string v1, "illegal_argument_exception"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    sget-object v1, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received a Argument exception from Broker : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v1, Lcom/microsoft/identity/common/exception/ArgumentException;

    .line 16
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "brokerTokenRequest"

    invoke-direct {v1, v3, v0, v2}, Lcom/microsoft/identity/common/exception/ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getHttpResponseHeaders()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 18
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getHttpResponseBody()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 19
    :cond_4
    sget-object v1, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received a Client exception from Broker : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/microsoft/identity/common/exception/ClientException;

    .line 21
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 23
    :cond_5
    :goto_0
    sget-object v1, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received a Service exception from Broker : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getServiceException(Lcom/microsoft/identity/common/internal/broker/BrokerResult;)Lcom/microsoft/identity/common/exception/ServiceException;

    move-result-object v0

    goto :goto_3

    .line 25
    :cond_6
    :goto_1
    sget-object v1, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received a UIRequired exception from Broker : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v1, Lcom/microsoft/identity/common/exception/UiRequiredException;

    .line 27
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/microsoft/identity/common/exception/UiRequiredException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v0, v1

    .line 28
    :goto_3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getCliTelemErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/exception/BaseException;->setCliTelemErrorCode(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getCliTelemSubErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/exception/BaseException;->setCliTelemSubErrorCode(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getCorrelationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/exception/BaseException;->setCorrelationId(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getSpeRing()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/exception/BaseException;->setSpeRing(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getRefreshTokenAge()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/exception/BaseException;->setRefreshTokenAge(Ljava/lang/String;)V

    return-object v0
.end method

.method private getBaseExceptionFromExceptionType(Ljava/lang/String;Lcom/microsoft/identity/common/internal/broker/BrokerResult;)Lcom/microsoft/identity/common/exception/BaseException;
    .locals 3

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from Broker : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/microsoft/identity/common/exception/UiRequiredException;->sName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance p1, Lcom/microsoft/identity/common/exception/UiRequiredException;

    .line 6
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/microsoft/identity/common/exception/UiRequiredException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/microsoft/identity/common/exception/ServiceException;->sName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getServiceException(Lcom/microsoft/identity/common/internal/broker/BrokerResult;)Lcom/microsoft/identity/common/exception/ServiceException;

    move-result-object p1

    goto/16 :goto_0

    .line 10
    :cond_1
    sget-object v0, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;->sName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getIntuneProtectionRequiredException(Lcom/microsoft/identity/common/internal/broker/BrokerResult;)Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;

    move-result-object p1

    goto :goto_0

    .line 12
    :cond_2
    sget-object v0, Lcom/microsoft/identity/common/exception/UserCancelException;->sName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    new-instance p1, Lcom/microsoft/identity/common/exception/UserCancelException;

    invoke-direct {p1}, Lcom/microsoft/identity/common/exception/UserCancelException;-><init>()V

    goto :goto_0

    .line 14
    :cond_3
    sget-object v0, Lcom/microsoft/identity/common/exception/ClientException;->sName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    new-instance p1, Lcom/microsoft/identity/common/exception/ClientException;

    .line 16
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_4
    sget-object v0, Lcom/microsoft/identity/common/exception/ArgumentException;->sName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19
    new-instance p1, Lcom/microsoft/identity/common/exception/ArgumentException;

    .line 20
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "brokerTokenRequest"

    invoke-direct {p1, v2, v0, v1}, Lcom/microsoft/identity/common/exception/ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_5
    sget-object v0, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->TAG:Ljava/lang/String;

    const-string v1, " Exception type is unknown : "

    invoke-static {v1, p1}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 23
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", defaulting to Client Exception "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {v0, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance p1, Lcom/microsoft/identity/common/exception/ClientException;

    .line 26
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :goto_0
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getCliTelemErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/exception/BaseException;->setCliTelemErrorCode(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getCliTelemSubErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/exception/BaseException;->setCliTelemSubErrorCode(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getCorrelationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/exception/BaseException;->setCorrelationId(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getSpeRing()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/exception/BaseException;->setSpeRing(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getRefreshTokenAge()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/identity/common/exception/BaseException;->setRefreshTokenAge(Ljava/lang/String;)V

    return-object p1
.end method

.method private getIntuneProtectionRequiredException(Lcom/microsoft/identity/common/internal/broker/BrokerResult;)Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getTenantId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;->setTenantId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;->setAuthorityUrl(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getLocalAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;->setAccountUserId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;->setAccountUpn(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getSubErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/exception/ServiceException;->setOauthSubErrorCode(Ljava/lang/String;)V

    .line 9
    :try_start_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getHttpResponseBody()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/microsoft/identity/common/adal/internal/util/HashMapExtensions;->jsonStringAsMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/exception/ServiceException;->setHttpResponseBody(Ljava/util/HashMap;)V

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getHttpResponseHeaders()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getHttpResponseHeaders()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/util/HeaderSerializationUtil;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/exception/ServiceException;->setHttpResponseHeaders(Ljava/util/HashMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 15
    :catch_0
    sget-object p1, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Unable to parse json"

    invoke-static {p1, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private getServiceException(Lcom/microsoft/identity/common/internal/broker/BrokerResult;)Lcom/microsoft/identity/common/exception/ServiceException;
    .locals 4

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/exception/ServiceException;

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/identity/common/exception/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getSubErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/exception/ServiceException;->setOauthSubErrorCode(Ljava/lang/String;)V

    .line 5
    :try_start_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getHttpResponseBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getHttpResponseBody()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/microsoft/identity/common/adal/internal/util/HashMapExtensions;->jsonStringAsMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 8
    :goto_0
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/exception/ServiceException;->setHttpResponseBody(Ljava/util/HashMap;)V

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getHttpResponseHeaders()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getHttpResponseHeaders()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/util/HeaderSerializationUtil;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 12
    :cond_1
    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/exception/ServiceException;->setHttpResponseHeaders(Ljava/util/HashMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 13
    :catch_0
    sget-object p1, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Unable to parse json"

    invoke-static {p1, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public authenticationResultFromBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;
    .locals 3

    const-string v0, "broker_result_v2"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/microsoft/identity/common/adal/internal/util/JsonExtensions;->getBrokerResultFromJsonString(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "Broker Result not returned from Broker, "

    invoke-static {p1, v1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 4
    :cond_0
    sget-object v0, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Broker Result returned from Bundle, constructing authentication result"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getTenantProfileData()Ljava/util/List;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;

    const/4 v1, 0x0

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    sget-object v2, Lcom/microsoft/identity/common/internal/request/SdkType;->MSAL:Lcom/microsoft/identity/common/internal/request/SdkType;

    invoke-direct {v0, v1, p1, v2}, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;-><init>(Lcom/microsoft/identity/common/internal/cache/ICacheRecord;Ljava/util/List;Lcom/microsoft/identity/common/internal/request/SdkType;)V

    return-object v0
.end method

.method public bundleFromAccounts(Ljava/util/List;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/microsoft/identity/common/adal/internal/util/JsonExtensions;->getJsonStringFromICacheRecordList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "broker_accounts"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public bundleFromAuthenticationResult(Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;)Landroid/os/Bundle;
    .locals 4

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Constructing result bundle from ILocalAuthenticationResult"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getAccountRecord()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getAccessTokenRecord()Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    invoke-direct {v2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;-><init>()V

    .line 5
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getCacheRecordWithTenantProfileData()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->tenantProfileRecords(Ljava/util/List;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v2

    .line 6
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->accessToken(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v2

    .line 7
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getIdToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->idToken(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v2

    .line 8
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getRefreshToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->refreshToken(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v2

    .line 9
    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/dto/IAccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->homeAccountId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v2

    .line 10
    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/dto/IAccountRecord;->getLocalAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->localAccountId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v2

    .line 11
    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/dto/IAccountRecord;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->userName(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v2

    .line 12
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->getAccessTokenType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->tokenType(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v2

    .line 13
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->clientId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v2

    .line 14
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->familyId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v2

    .line 15
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->getTarget()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->scope(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v2

    .line 16
    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/dto/IAccountRecord;->getClientInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->clientInfo(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v0

    .line 17
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->authority(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v0

    .line 18
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getEnvironment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->environment(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v0

    .line 19
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getTenantId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->tenantId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->getExpiresOn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->expiresOn(J)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v0

    .line 21
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->getExtendedExpiresOn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->extendedExpiresOn(J)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getCachedAt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->cachedAt(J)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v0

    .line 23
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getSpeRing()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->speRing(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v0

    .line 24
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getRefreshTokenAge()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->refreshTokenAge(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 25
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->success(Z)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->build()Lcom/microsoft/identity/common/internal/broker/BrokerResult;

    move-result-object p1

    .line 27
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 28
    sget-object v2, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->sRequestAdapterGsonInstance:Lcom/google/gson/Gson;

    const-class v3, Lcom/microsoft/identity/common/internal/broker/BrokerResult;

    .line 29
    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "broker_result_v2"

    .line 30
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "broker_request_v2_success"

    .line 31
    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public bundleFromBaseException(Lcom/microsoft/identity/common/exception/BaseException;)Landroid/os/Bundle;
    .locals 5

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Constructing result bundle from BaseException"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;-><init>()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->success(Z)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->errorCode(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->errorMessage(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BaseException;->getExceptionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->exceptionType(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BaseException;->getCorrelationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->correlationId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BaseException;->getCliTelemErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->cliTelemErrorCode(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BaseException;->getCliTelemSubErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->cliTelemSubErrorCode(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BaseException;->getSpeRing()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->speRing(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BaseException;->getRefreshTokenAge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->refreshTokenAge(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v0

    .line 12
    instance-of v2, p1, Lcom/microsoft/identity/common/exception/ServiceException;

    if-eqz v2, :cond_0

    .line 13
    move-object v2, p1

    check-cast v2, Lcom/microsoft/identity/common/exception/ServiceException;

    invoke-virtual {v2}, Lcom/microsoft/identity/common/exception/ServiceException;->getOAuthSubErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->oauthSubErrorCode(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v3

    .line 14
    invoke-virtual {v2}, Lcom/microsoft/identity/common/exception/ServiceException;->getHttpStatusCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->httpStatusCode(I)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v3

    .line 15
    invoke-virtual {v2}, Lcom/microsoft/identity/common/exception/ServiceException;->getHttpResponseHeaders()Ljava/util/HashMap;

    move-result-object v4

    .line 16
    invoke-static {v4}, Lcom/microsoft/identity/common/internal/util/HeaderSerializationUtil;->toJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->httpResponseHeaders(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v3

    sget-object v4, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->sRequestAdapterGsonInstance:Lcom/google/gson/Gson;

    .line 18
    invoke-virtual {v2}, Lcom/microsoft/identity/common/exception/ServiceException;->getHttpResponseBody()Ljava/util/HashMap;

    move-result-object v2

    .line 19
    invoke-virtual {v4, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->httpResponseBody(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    .line 20
    :cond_0
    instance-of v2, p1, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;

    if-eqz v2, :cond_1

    .line 21
    check-cast p1, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;->getAccountUpn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->userName(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v2

    .line 22
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;->getAccountUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->localAccountId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v2

    .line 23
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;->getAuthorityUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->authority(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    move-result-object v2

    .line 24
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;->getTenantId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->tenantId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;

    .line 25
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 26
    sget-object v2, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->sRequestAdapterGsonInstance:Lcom/google/gson/Gson;

    .line 27
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->build()Lcom/microsoft/identity/common/internal/broker/BrokerResult;

    move-result-object v0

    const-class v3, Lcom/microsoft/identity/common/internal/broker/BrokerResult;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "broker_result_v2"

    .line 28
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "broker_request_v2_success"

    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1
.end method

.method public bundleFromDeviceMode(Z)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "broker_device_mode"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getAccountsFromResultBundle(Landroid/os/Bundle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    const-string v0, "broker_accounts"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/microsoft/identity/common/adal/internal/util/JsonExtensions;->getICacheRecordListFromJsonString(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;-><init>()V

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getBaseExceptionFromBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/exception/BaseException;

    move-result-object p1

    throw p1
.end method

.method public getAcquireTokenResultFromResultBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;-><init>()V

    const-string v1, "broker_request_v2_success"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;

    invoke-direct {v1}, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->authenticationResultFromBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;

    move-result-object p1

    .line 5
    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->setLocalAuthenticationResult(Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;)V

    return-object v1

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getBaseExceptionFromBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/exception/BaseException;

    move-result-object p1

    throw p1
.end method

.method public getBaseExceptionFromBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/exception/BaseException;
    .locals 2

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Constructing exception from result bundle"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "broker_result_v2"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/microsoft/identity/common/adal/internal/util/JsonExtensions;->getBrokerResultFromJsonString(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "Broker Result not returned from Broker"

    invoke-static {p1, v1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    new-instance p1, Lcom/microsoft/identity/common/exception/BaseException;

    const-string v0, "unknown_error"

    invoke-direct {p1, v0, v1}, Lcom/microsoft/identity/common/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getExceptionType()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-direct {p0, v0, p1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getBaseExceptionFromExceptionType(Ljava/lang/String;Lcom/microsoft/identity/common/internal/broker/BrokerResult;)Lcom/microsoft/identity/common/exception/BaseException;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    sget-object v0, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Exception type is not returned from the broker, using error codes to transform to the right exception"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getBaseExceptionFromErrorCodes(Lcom/microsoft/identity/common/internal/broker/BrokerResult;)Lcom/microsoft/identity/common/exception/BaseException;

    move-result-object p1

    return-object p1
.end method

.method public getDeviceModeFromResultBundle(Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "broker_device_mode"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;-><init>()V

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getBaseExceptionFromBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/exception/BaseException;

    move-result-object p1

    throw p1
.end method

.method public verifyHelloFromResultBundle(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "Please update Intune Company Portal and/or Microsoft Authenticator to the latest version."

    const-string v1, "unsupported_broker_version"

    const-string v2, ":verifyHelloFromResultBundle"

    if-eqz p1, :cond_4

    const-string v3, "common.broker.protocol.version.name"

    .line 1
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Able to establish the connect, the broker protocol version in common is ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v3, "error"

    .line 4
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "error_description"

    .line 5
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v1, Lcom/microsoft/identity/common/exception/ClientException;

    invoke-direct {v1, v0, p1}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    const-string v3, "broker_result_v2"

    .line 9
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 10
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/microsoft/identity/common/internal/broker/BrokerResult;

    if-eqz v4, :cond_3

    .line 11
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/internal/broker/BrokerResult;

    .line 12
    new-instance v0, Lcom/microsoft/identity/common/exception/ClientException;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "The result bundle is not in a recognizable format."

    invoke-static {p1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance p1, Lcom/microsoft/identity/common/exception/ClientException;

    invoke-direct {p1, v1, v0}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "The hello result bundle is null."

    invoke-static {p1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance p1, Lcom/microsoft/identity/common/exception/ClientException;

    invoke-direct {p1, v1, v0}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public verifyRemoveAccountResultFromBundle(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "broker_result_v2"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/microsoft/identity/common/adal/internal/util/JsonExtensions;->getBrokerResultFromJsonString(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    sget-object v0, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Failed to remove account."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getBaseExceptionFromBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/exception/BaseException;

    move-result-object p1

    throw p1
.end method
