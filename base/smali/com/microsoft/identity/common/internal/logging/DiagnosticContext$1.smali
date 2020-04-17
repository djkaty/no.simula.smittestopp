.class public final Lcom/microsoft/identity/common/internal/logging/DiagnosticContext$1;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lcom/microsoft/identity/common/internal/logging/IRequestContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public initialValue()Lcom/microsoft/identity/common/internal/logging/RequestContext;
    .locals 3

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/internal/logging/RequestContext;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/logging/RequestContext;-><init>()V

    const-string v1, "correlation_id"

    const-string v2, "UNSET"

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext$1;->initialValue()Lcom/microsoft/identity/common/internal/logging/RequestContext;

    move-result-object v0

    return-object v0
.end method
