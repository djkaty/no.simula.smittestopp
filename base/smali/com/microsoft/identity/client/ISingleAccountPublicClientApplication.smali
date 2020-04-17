.class public interface abstract Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/IPublicClientApplication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$SignOutCallback;,
        Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$CurrentAccountCallback;
    }
.end annotation


# virtual methods
.method public abstract acquireTokenSilent([Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/client/IAuthenticationResult;
.end method

.method public abstract acquireTokenSilentAsync([Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/SilentAuthenticationCallback;)V
.end method

.method public abstract getCurrentAccount()Lcom/microsoft/identity/client/ICurrentAccountResult;
.end method

.method public abstract getCurrentAccountAsync(Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$CurrentAccountCallback;)V
.end method

.method public abstract signIn(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;Lcom/microsoft/identity/client/AuthenticationCallback;)V
.end method

.method public abstract signOut(Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$SignOutCallback;)V
.end method

.method public abstract signOut()Z
.end method
