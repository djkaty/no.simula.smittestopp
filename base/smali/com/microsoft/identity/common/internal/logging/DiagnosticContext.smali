.class public final Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CORRELATION_ID:Ljava/lang/String; = "correlation_id"

.field public static final REQUEST_CONTEXT_THREAD_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/microsoft/identity/common/internal/logging/IRequestContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final THREAD_ID:Ljava/lang/String; = "thread_id"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext$1;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext$1;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->REQUEST_CONTEXT_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->REQUEST_CONTEXT_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method public static getRequestContext()Lcom/microsoft/identity/common/internal/logging/IRequestContext;
    .locals 1

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->hasThreadId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->setThreadId()V

    .line 3
    :cond_0
    sget-object v0, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->REQUEST_CONTEXT_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/internal/logging/IRequestContext;

    return-object v0
.end method

.method public static hasThreadId()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->REQUEST_CONTEXT_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/internal/logging/IRequestContext;

    const-string v1, "thread_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setRequestContext(Lcom/microsoft/identity/common/internal/logging/IRequestContext;)V
    .locals 2

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->clear()V

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "thread_id"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->REQUEST_CONTEXT_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static setThreadId()V
    .locals 3

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->REQUEST_CONTEXT_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/internal/logging/IRequestContext;

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "thread_id"

    .line 3
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
