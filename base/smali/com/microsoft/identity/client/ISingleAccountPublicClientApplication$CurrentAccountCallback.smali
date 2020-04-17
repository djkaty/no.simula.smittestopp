.class public interface abstract Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$CurrentAccountCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CurrentAccountCallback"
.end annotation


# virtual methods
.method public abstract onAccountChanged(Lcom/microsoft/identity/client/IAccount;Lcom/microsoft/identity/client/IAccount;)V
.end method

.method public abstract onAccountLoaded(Lcom/microsoft/identity/client/IAccount;)V
.end method

.method public abstract onError(Lcom/microsoft/identity/client/exception/MsalException;)V
.end method
