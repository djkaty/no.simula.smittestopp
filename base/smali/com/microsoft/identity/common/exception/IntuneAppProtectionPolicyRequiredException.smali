.class public Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;
.super Lcom/microsoft/identity/common/exception/ServiceException;
.source "SourceFile"


# static fields
.field public static final sName:Ljava/lang/String;


# instance fields
.field public mAccountUpn:Ljava/lang/String;

.field public mAccountUserId:Ljava/lang/String;

.field public mAuthorityUrl:Ljava/lang/String;

.field public mTenantId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;->sName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/identity/common/exception/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getAccountUpn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;->mAccountUpn:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;->mAccountUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorityUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;->mAuthorityUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;->sName:Ljava/lang/String;

    return-object v0
.end method

.method public getTenantId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;->mTenantId:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountUpn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;->mAccountUpn:Ljava/lang/String;

    return-void
.end method

.method public setAccountUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;->mAccountUserId:Ljava/lang/String;

    return-void
.end method

.method public setAuthorityUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;->mAuthorityUrl:Ljava/lang/String;

    return-void
.end method

.method public setTenantId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;->mTenantId:Ljava/lang/String;

    return-void
.end method
