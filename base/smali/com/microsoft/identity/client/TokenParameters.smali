.class public abstract Lcom/microsoft/identity/client/TokenParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/client/TokenParameters$Builder;
    }
.end annotation


# instance fields
.field public mAccount:Lcom/microsoft/identity/client/IAccount;

.field public mAccountRecord:Lcom/microsoft/identity/common/internal/dto/AccountRecord;

.field public mAuthenticationScheme:Lcom/microsoft/identity/client/AuthenticationScheme;

.field public mAuthority:Ljava/lang/String;

.field public mClaimsRequest:Lcom/microsoft/identity/client/claims/ClaimsRequest;

.field public mScopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/TokenParameters$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/microsoft/identity/client/TokenParameters$Builder;->access$000(Lcom/microsoft/identity/client/TokenParameters$Builder;)Lcom/microsoft/identity/client/IAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/client/TokenParameters;->mAccount:Lcom/microsoft/identity/client/IAccount;

    .line 3
    invoke-static {p1}, Lcom/microsoft/identity/client/TokenParameters$Builder;->access$100(Lcom/microsoft/identity/client/TokenParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/client/TokenParameters;->mAuthority:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/microsoft/identity/client/TokenParameters$Builder;->access$200(Lcom/microsoft/identity/client/TokenParameters$Builder;)Lcom/microsoft/identity/client/claims/ClaimsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/client/TokenParameters;->mClaimsRequest:Lcom/microsoft/identity/client/claims/ClaimsRequest;

    .line 5
    invoke-static {p1}, Lcom/microsoft/identity/client/TokenParameters$Builder;->access$300(Lcom/microsoft/identity/client/TokenParameters$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/client/TokenParameters;->mScopes:Ljava/util/List;

    .line 6
    invoke-static {p1}, Lcom/microsoft/identity/client/TokenParameters$Builder;->access$400(Lcom/microsoft/identity/client/TokenParameters$Builder;)Lcom/microsoft/identity/client/AuthenticationScheme;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/client/TokenParameters;->mAuthenticationScheme:Lcom/microsoft/identity/client/AuthenticationScheme;

    return-void
.end method


# virtual methods
.method public getAccount()Lcom/microsoft/identity/client/IAccount;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/TokenParameters;->mAccount:Lcom/microsoft/identity/client/IAccount;

    return-object v0
.end method

.method public getAccountRecord()Lcom/microsoft/identity/common/internal/dto/AccountRecord;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/TokenParameters;->mAccountRecord:Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    return-object v0
.end method

.method public getAuthenticationScheme()Lcom/microsoft/identity/client/AuthenticationScheme;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/TokenParameters;->mAuthenticationScheme:Lcom/microsoft/identity/client/AuthenticationScheme;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/TokenParameters;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getClaimsRequest()Lcom/microsoft/identity/client/claims/ClaimsRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/TokenParameters;->mClaimsRequest:Lcom/microsoft/identity/client/claims/ClaimsRequest;

    return-object v0
.end method

.method public getScopes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/TokenParameters;->mScopes:Ljava/util/List;

    return-object v0
.end method

.method public setAccount(Lcom/microsoft/identity/client/IAccount;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/TokenParameters;->mAccount:Lcom/microsoft/identity/client/IAccount;

    return-void
.end method

.method public setAccountRecord(Lcom/microsoft/identity/common/internal/dto/AccountRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/TokenParameters;->mAccountRecord:Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    return-void
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/TokenParameters;->mAuthority:Ljava/lang/String;

    return-void
.end method

.method public setScopes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/TokenParameters;->mScopes:Ljava/util/List;

    return-void
.end method
