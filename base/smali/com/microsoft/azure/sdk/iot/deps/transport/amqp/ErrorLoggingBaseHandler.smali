.class public Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;
.super Lk/a/b/a/d/a;
.source "SourceFile"


# static fields
.field public static final log:Lk/f/b;


# instance fields
.field public protonJExceptionParser:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->log:Lk/f/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/a/b/a/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionRemoteClose(Lk/a/b/a/d/h;)V
    .locals 3

    .line 1
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->U()Lk/a/b/a/d/c;

    move-result-object v0

    invoke-interface {v0}, Lk/a/b/a/d/f;->J()Lk/a/b/a/d/g;

    move-result-object v0

    sget-object v1, Lk/a/b/a/d/g;->ACTIVE:Lk/a/b/a/d/g;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;-><init>(Lk/a/b/a/d/h;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->protonJExceptionParser:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;

    .line 3
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;->getError()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->log:Lk/f/b;

    const-string v0, "Amqp connection was closed remotely with an unknown exception"

    invoke-interface {p1, v0}, Lk/f/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->log:Lk/f/b;

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->protonJExceptionParser:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;->getError()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->protonJExceptionParser:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;->getErrorDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Amqp connection was closed remotely with exception {} with description {}"

    invoke-interface {p1, v2, v0, v1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object p1, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->log:Lk/f/b;

    const-string v0, "Amqp connection closed remotely after being closed locally"

    invoke-interface {p1, v0}, Lk/f/b;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onLinkRemoteClose(Lk/a/b/a/d/h;)V
    .locals 3

    .line 1
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object v0

    invoke-interface {v0}, Lk/a/b/a/d/f;->J()Lk/a/b/a/d/g;

    move-result-object v0

    sget-object v1, Lk/a/b/a/d/g;->ACTIVE:Lk/a/b/a/d/g;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;-><init>(Lk/a/b/a/d/h;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->protonJExceptionParser:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;

    .line 3
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;->getError()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->log:Lk/f/b;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object p1

    invoke-interface {p1}, Lk/a/b/a/d/n;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Amqp link {} was closed remotely"

    invoke-interface {v0, v1, p1}, Lk/f/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object v0

    invoke-interface {v0}, Lk/a/b/a/d/n;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->log:Lk/f/b;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object p1

    invoke-interface {p1}, Lk/a/b/a/d/n;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->protonJExceptionParser:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;->getError()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    const/4 p1, 0x2

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->protonJExceptionParser:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;->getErrorDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "Amqp link {} was closed remotely with exception {} with description {}"

    invoke-interface {v0, p1, v1}, Lk/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object p1, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->log:Lk/f/b;

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->protonJExceptionParser:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;->getError()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->protonJExceptionParser:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;->getErrorDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown amqp link was closed remotely with exception {} with description {}"

    invoke-interface {p1, v2, v0, v1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_2
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->log:Lk/f/b;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object p1

    invoke-interface {p1}, Lk/a/b/a/d/n;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Amqp link {} closed remotely after being closed locally"

    invoke-interface {v0, v1, p1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onSessionRemoteClose(Lk/a/b/a/d/h;)V
    .locals 3

    .line 1
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->T()Lk/a/b/a/d/y;

    move-result-object v0

    invoke-interface {v0}, Lk/a/b/a/d/f;->J()Lk/a/b/a/d/g;

    move-result-object v0

    sget-object v1, Lk/a/b/a/d/g;->ACTIVE:Lk/a/b/a/d/g;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;-><init>(Lk/a/b/a/d/h;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->protonJExceptionParser:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;

    .line 3
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;->getError()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->log:Lk/f/b;

    const-string v0, "Amqp session was closed remotely with an unknown exception"

    invoke-interface {p1, v0}, Lk/f/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->log:Lk/f/b;

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->protonJExceptionParser:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;->getError()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->protonJExceptionParser:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;->getErrorDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Amqp session was closed remotely with exception {} with description {}"

    invoke-interface {p1, v2, v0, v1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object p1, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->log:Lk/f/b;

    const-string v0, "Amqp session closed remotely after being closed locally"

    invoke-interface {p1, v0}, Lk/f/b;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onTransportError(Lk/a/b/a/d/h;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;-><init>(Lk/a/b/a/d/h;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->protonJExceptionParser:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;

    .line 2
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;->getError()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->log:Lk/f/b;

    const-string v0, "Amqp transport threw an unknown exception"

    invoke-interface {p1, v0}, Lk/f/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->log:Lk/f/b;

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->protonJExceptionParser:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;->getError()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->protonJExceptionParser:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;->getErrorDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Amqp transport threw exception {} with description {}"

    invoke-interface {p1, v2, v0, v1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
