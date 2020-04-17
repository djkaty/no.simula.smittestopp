.class public Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mDisplayableId:Ljava/lang/String;

.field public mFamilyName:Ljava/lang/String;

.field public mGivenName:Ljava/lang/String;

.field public mIdentityProvider:Ljava/lang/String;

.field public transient mPasswordChangeUrl:Landroid/net/Uri;

.field public transient mPasswordExpiresOn:Ljava/util/Date;

.field public mUniqueId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAccount;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAccount;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mUniqueId:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAccount;->getDisplayableId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mDisplayableId:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAccount;->getFirstName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mGivenName:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAccount;->getFamilyName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mFamilyName:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAccount;->getIdentityProvider()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mIdentityProvider:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAccount;->getPasswordChangeUrl()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mPasswordChangeUrl:Landroid/net/Uri;

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAccount;->getPasswordExpiresOn()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mPasswordExpiresOn:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mUniqueId:Ljava/lang/String;

    .line 11
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getAccountRecord()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/dto/IAccountRecord;->getUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mDisplayableId:Ljava/lang/String;

    .line 12
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getAccountRecord()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/dto/IAccountRecord;->getFirstName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mGivenName:Ljava/lang/String;

    .line 13
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getAccountRecord()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/dto/IAccountRecord;->getFamilyName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mFamilyName:Ljava/lang/String;

    .line 14
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getIdToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/cache/SchemaUtil;->getIdentityProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mIdentityProvider:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mUniqueId:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mGivenName:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mFamilyName:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mIdentityProvider:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mDisplayableId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDisplayableId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mDisplayableId:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mGivenName:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentityProvider()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mIdentityProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordChangeUrl()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mPasswordChangeUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getPasswordExpiresOn()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mPasswordExpiresOn:Ljava/util/Date;

    invoke-static {v0}, Lcom/microsoft/identity/common/adal/internal/util/DateExtensions;->createCopy(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayableId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mDisplayableId:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mUniqueId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "ADALUserInfo{mUniqueId=\'"

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mUniqueId:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", mDisplayableId=\'"

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mDisplayableId:Ljava/lang/String;

    const-string v3, ", mGivenName=\'"

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mGivenName:Ljava/lang/String;

    const-string v3, ", mFamilyName=\'"

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mFamilyName:Ljava/lang/String;

    const-string v3, ", mIdentityProvider=\'"

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mIdentityProvider:Ljava/lang/String;

    const-string v3, ", mPasswordChangeUrl="

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mPasswordChangeUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPasswordExpiresOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;->mPasswordExpiresOn:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
