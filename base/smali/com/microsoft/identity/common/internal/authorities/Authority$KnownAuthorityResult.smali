.class public Lcom/microsoft/identity/common/internal/authorities/Authority$KnownAuthorityResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/authorities/Authority;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KnownAuthorityResult"
.end annotation


# instance fields
.field public mClientException:Lcom/microsoft/identity/common/exception/ClientException;

.field public mKnown:Z


# direct methods
.method public constructor <init>(ZLcom/microsoft/identity/common/exception/ClientException;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/authorities/Authority$KnownAuthorityResult;->mKnown:Z

    .line 3
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/authorities/Authority$KnownAuthorityResult;->mClientException:Lcom/microsoft/identity/common/exception/ClientException;

    return-void
.end method


# virtual methods
.method public getClientException()Lcom/microsoft/identity/common/exception/ClientException;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/authorities/Authority$KnownAuthorityResult;->mClientException:Lcom/microsoft/identity/common/exception/ClientException;

    return-object v0
.end method

.method public getKnown()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/authorities/Authority$KnownAuthorityResult;->mKnown:Z

    return v0
.end method
