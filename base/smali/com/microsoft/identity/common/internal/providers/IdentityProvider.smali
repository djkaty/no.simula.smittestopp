.class public abstract Lcom/microsoft/identity/common/internal/providers/IdentityProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;",
        "U:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Configuration;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createOAuth2Strategy(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Configuration;)Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)TT;"
        }
    .end annotation
.end method
