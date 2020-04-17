.class public interface abstract Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/IPublicClientApplication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$RemoveAccountCallback;,
        Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$GetAccountCallback;
    }
.end annotation


# virtual methods
.method public abstract acquireToken(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/AuthenticationCallback;)V
.end method

.method public abstract acquireTokenSilent([Ljava/lang/String;Lcom/microsoft/identity/client/IAccount;Ljava/lang/String;)Lcom/microsoft/identity/client/IAuthenticationResult;
.end method

.method public abstract acquireTokenSilentAsync([Ljava/lang/String;Lcom/microsoft/identity/client/IAccount;Ljava/lang/String;Lcom/microsoft/identity/client/SilentAuthenticationCallback;)V
.end method

.method public abstract getAccount(Ljava/lang/String;)Lcom/microsoft/identity/client/IAccount;
.end method

.method public abstract getAccount(Ljava/lang/String;Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$GetAccountCallback;)V
.end method

.method public abstract getAccounts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/client/IAccount;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAccounts(Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;)V
.end method

.method public abstract removeAccount(Lcom/microsoft/identity/client/IAccount;Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$RemoveAccountCallback;)V
.end method

.method public abstract removeAccount(Lcom/microsoft/identity/client/IAccount;)Z
.end method
