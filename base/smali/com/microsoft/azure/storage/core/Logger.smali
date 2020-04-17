.class public Lcom/microsoft/azure/storage/core/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Logger;->shouldLog(Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "ROOT"

    .line 2
    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/String;)Lk/f/b;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getLogger()Lk/f/b;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Lk/f/b;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {p0, p1}, Lcom/microsoft/azure/storage/core/Logger;->formatLogEntry(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lk/f/b;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static debug(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 11
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Logger;->shouldLog(Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "ROOT"

    .line 12
    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/String;)Lk/f/b;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getLogger()Lk/f/b;

    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Lk/f/b;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    invoke-static {p0, p1, p2}, Lcom/microsoft/azure/storage/core/Logger;->formatLogEntry(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lk/f/b;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static debug(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 16
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Logger;->shouldLog(Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "ROOT"

    .line 17
    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/String;)Lk/f/b;

    move-result-object v0

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getLogger()Lk/f/b;

    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Lk/f/b;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/Logger;->formatLogEntry(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lk/f/b;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static varargs debug(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 6
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Logger;->shouldLog(Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "ROOT"

    .line 7
    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/String;)Lk/f/b;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getLogger()Lk/f/b;

    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Lk/f/b;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-static {p0, p1, p2}, Lcom/microsoft/azure/storage/core/Logger;->formatLogEntry(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lk/f/b;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static error(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Logger;->shouldLog(Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "ROOT"

    .line 2
    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/String;)Lk/f/b;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getLogger()Lk/f/b;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Lk/f/b;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {p0, p1}, Lcom/microsoft/azure/storage/core/Logger;->formatLogEntry(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lk/f/b;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static error(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 11
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Logger;->shouldLog(Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "ROOT"

    .line 12
    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/String;)Lk/f/b;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getLogger()Lk/f/b;

    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Lk/f/b;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    invoke-static {p0, p1, p2}, Lcom/microsoft/azure/storage/core/Logger;->formatLogEntry(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lk/f/b;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static error(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 16
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Logger;->shouldLog(Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "ROOT"

    .line 17
    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/String;)Lk/f/b;

    move-result-object v0

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getLogger()Lk/f/b;

    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Lk/f/b;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/Logger;->formatLogEntry(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lk/f/b;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static varargs error(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 6
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Logger;->shouldLog(Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "ROOT"

    .line 7
    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/String;)Lk/f/b;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getLogger()Lk/f/b;

    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Lk/f/b;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-static {p0, p1, p2}, Lcom/microsoft/azure/storage/core/Logger;->formatLogEntry(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lk/f/b;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static formatLogEntry(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    if-nez p0, :cond_0

    const-string p0, "*"

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getClientRequestID()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    const/16 v1, 0xa

    const/16 v2, 0x2e

    .line 2
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    const-string p0, "{%s}: {%s}"

    .line 3
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatLogEntry(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    if-nez p0, :cond_0

    const-string p0, "*"

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getClientRequestID()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    new-array v2, p0, [Ljava/lang/Object;

    aput-object p2, v2, v1

    .line 8
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xa

    const/16 v1, 0x2e

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    const-string p0, "{%s}: {%s}"

    .line 9
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatLogEntry(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    if-nez p0, :cond_0

    const-string p0, "*"

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getClientRequestID()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-array p0, v0, [Ljava/lang/Object;

    aput-object p2, p0, v2

    const/4 p2, 0x1

    aput-object p3, p0, p2

    .line 11
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xa

    const/16 p3, 0x2e

    invoke-virtual {p0, p1, p3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, p2

    const-string p0, "{%s}: {%s}"

    .line 12
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs formatLogEntry(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    if-nez p0, :cond_0

    const-string p0, "*"

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getClientRequestID()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    .line 5
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xa

    const/16 v1, 0x2e

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    const-string p0, "{%s}: {%s}"

    .line 6
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static info(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Logger;->shouldLog(Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "ROOT"

    .line 2
    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/String;)Lk/f/b;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getLogger()Lk/f/b;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Lk/f/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {p0, p1}, Lcom/microsoft/azure/storage/core/Logger;->formatLogEntry(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lk/f/b;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static info(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 11
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Logger;->shouldLog(Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "ROOT"

    .line 12
    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/String;)Lk/f/b;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getLogger()Lk/f/b;

    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Lk/f/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    invoke-static {p0, p1, p2}, Lcom/microsoft/azure/storage/core/Logger;->formatLogEntry(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lk/f/b;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static info(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 16
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Logger;->shouldLog(Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "ROOT"

    .line 17
    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/String;)Lk/f/b;

    move-result-object v0

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getLogger()Lk/f/b;

    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Lk/f/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/Logger;->formatLogEntry(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lk/f/b;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static varargs info(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 6
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Logger;->shouldLog(Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "ROOT"

    .line 7
    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/String;)Lk/f/b;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getLogger()Lk/f/b;

    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Lk/f/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-static {p0, p1, p2}, Lcom/microsoft/azure/storage/core/Logger;->formatLogEntry(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lk/f/b;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static shouldLog(Lcom/microsoft/azure/storage/OperationContext;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->isLoggingEnabled()Z

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-static {}, Lcom/microsoft/azure/storage/OperationContext;->isLoggingEnabledByDefault()Z

    move-result p0

    return p0
.end method

.method public static trace(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Logger;->shouldLog(Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "ROOT"

    .line 2
    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/String;)Lk/f/b;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getLogger()Lk/f/b;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Lk/f/b;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {p0, p1}, Lcom/microsoft/azure/storage/core/Logger;->formatLogEntry(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lk/f/b;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static trace(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 11
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Logger;->shouldLog(Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "ROOT"

    .line 12
    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/String;)Lk/f/b;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getLogger()Lk/f/b;

    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Lk/f/b;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    invoke-static {p0, p1, p2}, Lcom/microsoft/azure/storage/core/Logger;->formatLogEntry(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lk/f/b;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static trace(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 16
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Logger;->shouldLog(Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "ROOT"

    .line 17
    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/String;)Lk/f/b;

    move-result-object v0

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getLogger()Lk/f/b;

    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Lk/f/b;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/Logger;->formatLogEntry(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lk/f/b;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static varargs trace(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 6
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Logger;->shouldLog(Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "ROOT"

    .line 7
    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/String;)Lk/f/b;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getLogger()Lk/f/b;

    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Lk/f/b;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-static {p0, p1, p2}, Lcom/microsoft/azure/storage/core/Logger;->formatLogEntry(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lk/f/b;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static warn(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Logger;->shouldLog(Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "ROOT"

    .line 2
    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/String;)Lk/f/b;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getLogger()Lk/f/b;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Lk/f/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {p0, p1}, Lcom/microsoft/azure/storage/core/Logger;->formatLogEntry(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lk/f/b;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static warn(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 11
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Logger;->shouldLog(Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "ROOT"

    .line 12
    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/String;)Lk/f/b;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getLogger()Lk/f/b;

    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Lk/f/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    invoke-static {p0, p1, p2}, Lcom/microsoft/azure/storage/core/Logger;->formatLogEntry(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lk/f/b;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static warn(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 16
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Logger;->shouldLog(Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "ROOT"

    .line 17
    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/String;)Lk/f/b;

    move-result-object v0

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getLogger()Lk/f/b;

    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Lk/f/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/Logger;->formatLogEntry(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lk/f/b;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static varargs warn(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 6
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Logger;->shouldLog(Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "ROOT"

    .line 7
    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/String;)Lk/f/b;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getLogger()Lk/f/b;

    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Lk/f/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-static {p0, p1, p2}, Lcom/microsoft/azure/storage/core/Logger;->formatLogEntry(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lk/f/b;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
