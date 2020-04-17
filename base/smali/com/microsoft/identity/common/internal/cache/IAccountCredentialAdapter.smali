.class public interface abstract Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;",
        "U:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;",
        "V:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;",
        "W:",
        "Lcom/microsoft/identity/common/BaseAccount;",
        "X:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/RefreshToken;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract asAccount(Lcom/microsoft/identity/common/BaseAccount;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TW;)",
            "Lcom/microsoft/identity/common/internal/dto/AccountRecord;"
        }
    .end annotation
.end method

.method public abstract asIdToken(Lcom/microsoft/identity/common/BaseAccount;Lcom/microsoft/identity/common/internal/providers/oauth2/RefreshToken;)Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TW;TX;)",
            "Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;"
        }
    .end annotation
.end method

.method public abstract asRefreshToken(Lcom/microsoft/identity/common/internal/providers/oauth2/RefreshToken;)Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)",
            "Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;"
        }
    .end annotation
.end method

.method public abstract createAccessToken(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;TV;)",
            "Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;"
        }
    .end annotation
.end method

.method public abstract createAccount(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;TV;)",
            "Lcom/microsoft/identity/common/internal/dto/AccountRecord;"
        }
    .end annotation
.end method

.method public abstract createIdToken(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;TV;)",
            "Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;"
        }
    .end annotation
.end method

.method public abstract createRefreshToken(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;TV;)",
            "Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;"
        }
    .end annotation
.end method
