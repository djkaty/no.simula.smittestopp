.class public Lcom/microsoft/identity/client/exception/MsalIntuneAppProtectionPolicyRequiredException;
.super Lcom/microsoft/identity/client/exception/MsalServiceException;
.source "SourceFile"


# instance fields
.field public mAccountUpn:Ljava/lang/String;

.field public mAccountUserId:Ljava/lang/String;

.field public mAuthorityUrl:Ljava/lang/String;

.field public mTenantId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/microsoft/identity/client/exception/MsalServiceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;->getAccountUpn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/client/exception/MsalIntuneAppProtectionPolicyRequiredException;->mAccountUpn:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;->getAccountUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/client/exception/MsalIntuneAppProtectionPolicyRequiredException;->mAccountUserId:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;->getAuthorityUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/client/exception/MsalIntuneAppProtectionPolicyRequiredException;->mAuthorityUrl:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;->getTenantId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/client/exception/MsalIntuneAppProtectionPolicyRequiredException;->mTenantId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccountUpn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/exception/MsalIntuneAppProtectionPolicyRequiredException;->mAccountUpn:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/exception/MsalIntuneAppProtectionPolicyRequiredException;->mAccountUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorityUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/exception/MsalIntuneAppProtectionPolicyRequiredException;->mAuthorityUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTenantId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/exception/MsalIntuneAppProtectionPolicyRequiredException;->mTenantId:Ljava/lang/String;

    return-object v0
.end method
