.class public interface abstract Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$RemoveAccountCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoveAccountCallback"
.end annotation


# virtual methods
.method public abstract onError(Lcom/microsoft/identity/client/exception/MsalException;)V
.end method

.method public abstract onRemoved()V
.end method
