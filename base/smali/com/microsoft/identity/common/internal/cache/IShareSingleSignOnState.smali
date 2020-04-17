.class public interface abstract Lcom/microsoft/identity/common/internal/cache/IShareSingleSignOnState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/microsoft/identity/common/BaseAccount;",
        "U:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/RefreshToken;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getSingleSignOnState(Lcom/microsoft/identity/common/BaseAccount;)Lcom/microsoft/identity/common/internal/providers/oauth2/RefreshToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TU;"
        }
    .end annotation
.end method

.method public abstract setSingleSignOnState(Lcom/microsoft/identity/common/BaseAccount;Lcom/microsoft/identity/common/internal/providers/oauth2/RefreshToken;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)V"
        }
    .end annotation
.end method
