.class public Lcom/microsoft/azure/sdk/iot/device/CustomLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CALLING_METHOD_NAME_DEPTH:I = 0x2


# instance fields
.field public final logger:Lk/f/b;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/CustomLogger;->logger:Lk/f/b;

    return-void
.end method


# virtual methods
.method public varargs LogDebug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/CustomLogger;->logger:Lk/f/b;

    invoke-interface {v0}, Lk/f/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/CustomLogger;->logger:Lk/f/b;

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/CustomLogger;->logger:Lk/f/b;

    invoke-interface {v0}, Lk/f/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/CustomLogger;->logger:Lk/f/b;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lk/f/b;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs LogError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/CustomLogger;->logger:Lk/f/b;

    invoke-interface {v0}, Lk/f/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/CustomLogger;->logger:Lk/f/b;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lk/f/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public LogError(Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/CustomLogger;->logger:Lk/f/b;

    invoke-interface {v0}, Lk/f/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/CustomLogger;->logger:Lk/f/b;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lk/f/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs LogFatal(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/CustomLogger;->logger:Lk/f/b;

    invoke-interface {v0}, Lk/f/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/CustomLogger;->logger:Lk/f/b;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lk/f/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs LogInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/CustomLogger;->logger:Lk/f/b;

    invoke-interface {v0}, Lk/f/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/CustomLogger;->logger:Lk/f/b;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lk/f/b;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs LogTrace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/CustomLogger;->logger:Lk/f/b;

    invoke-interface {v0}, Lk/f/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/CustomLogger;->logger:Lk/f/b;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lk/f/b;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs LogWarn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/CustomLogger;->logger:Lk/f/b;

    invoke-interface {v0}, Lk/f/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/CustomLogger;->logger:Lk/f/b;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lk/f/b;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
