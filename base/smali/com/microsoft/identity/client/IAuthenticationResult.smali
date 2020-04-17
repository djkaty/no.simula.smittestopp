.class public interface abstract Lcom/microsoft/identity/client/IAuthenticationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAccessToken()Ljava/lang/String;
.end method

.method public abstract getAccount()Lcom/microsoft/identity/client/IAccount;
.end method

.method public abstract getAuthenticationScheme()Ljava/lang/String;
.end method

.method public abstract getAuthorizationHeader()Ljava/lang/String;
.end method

.method public abstract getExpiresOn()Ljava/util/Date;
.end method

.method public abstract getScope()[Ljava/lang/String;
.end method

.method public abstract getTenantId()Ljava/lang/String;
.end method
