.class public interface abstract Lcom/microsoft/identity/client/IPublicClientApplication;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;,
        Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;,
        Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;,
        Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;
    }
.end annotation


# virtual methods
.method public abstract acquireToken(Landroid/app/Activity;[Ljava/lang/String;Lcom/microsoft/identity/client/AuthenticationCallback;)V
.end method

.method public abstract acquireToken(Lcom/microsoft/identity/client/AcquireTokenParameters;)V
.end method

.method public abstract acquireTokenSilent(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;)Lcom/microsoft/identity/client/IAuthenticationResult;
.end method

.method public abstract acquireTokenSilentAsync(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;)V
.end method

.method public abstract getConfiguration()Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;
.end method

.method public abstract isSharedDevice()Z
.end method
