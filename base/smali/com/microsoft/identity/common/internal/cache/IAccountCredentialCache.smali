.class public interface abstract Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract clearAll()V
.end method

.method public abstract getAccount(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;
.end method

.method public abstract getAccounts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/dto/AccountRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAccountsFilteredBy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/dto/AccountRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCredential(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/Credential;
.end method

.method public abstract getCredentials()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/dto/Credential;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/internal/dto/CredentialType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/dto/Credential;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeAccount(Lcom/microsoft/identity/common/internal/dto/AccountRecord;)Z
.end method

.method public abstract removeCredential(Lcom/microsoft/identity/common/internal/dto/Credential;)Z
.end method

.method public abstract saveAccount(Lcom/microsoft/identity/common/internal/dto/AccountRecord;)V
.end method

.method public abstract saveCredential(Lcom/microsoft/identity/common/internal/dto/Credential;)V
.end method
