.class public Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandlerWithCleanup;
.super Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;
.source "SourceFile"


# static fields
.field public static final log:Lk/f/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandlerWithCleanup;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandlerWithCleanup;->log:Lk/f/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionLocalClose(Lk/a/b/a/d/h;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lk/a/b/a/d/a;->onConnectionLocalClose(Lk/a/b/a/d/h;)V

    .line 2
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->U()Lk/a/b/a/d/c;

    move-result-object v0

    invoke-interface {v0}, Lk/a/b/a/d/f;->e()Lk/a/b/a/d/g;

    move-result-object v0

    sget-object v1, Lk/a/b/a/d/g;->CLOSED:Lk/a/b/a/d/g;

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandlerWithCleanup;->log:Lk/f/b;

    const-string v1, "Stopping reactor now that amqp connection is closed locally and remotely"

    invoke-interface {v0, v1}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->b()Lk/a/b/a/g/d;

    move-result-object p1

    invoke-interface {p1}, Lk/a/b/a/g/d;->stop()V

    :cond_0
    return-void
.end method

.method public onConnectionLocalOpen(Lk/a/b/a/d/h;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lk/a/b/a/d/a;->onConnectionLocalOpen(Lk/a/b/a/d/h;)V

    .line 2
    sget-object p1, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandlerWithCleanup;->log:Lk/f/b;

    const-string v0, "Amqp Connection opened locally"

    invoke-interface {p1, v0}, Lk/f/b;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onConnectionRemoteClose(Lk/a/b/a/d/h;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->onConnectionRemoteClose(Lk/a/b/a/d/h;)V

    .line 2
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->U()Lk/a/b/a/d/c;

    move-result-object v0

    invoke-interface {v0}, Lk/a/b/a/d/f;->J()Lk/a/b/a/d/g;

    move-result-object v0

    sget-object v1, Lk/a/b/a/d/g;->CLOSED:Lk/a/b/a/d/g;

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandlerWithCleanup;->log:Lk/f/b;

    const-string v1, "Stopping reactor now that connection is closed locally and remotely"

    invoke-interface {v0, v1}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->b()Lk/a/b/a/g/d;

    move-result-object p1

    invoke-interface {p1}, Lk/a/b/a/g/d;->stop()V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandlerWithCleanup;->log:Lk/f/b;

    const-string v1, "Closing amqp connection locally since amqp connection was closed remotely"

    invoke-interface {v0, v1}, Lk/f/b;->b(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->U()Lk/a/b/a/d/c;

    move-result-object p1

    invoke-interface {p1}, Lk/a/b/a/d/f;->close()V

    :goto_0
    return-void
.end method

.method public onConnectionRemoteOpen(Lk/a/b/a/d/h;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lk/a/b/a/d/a;->onConnectionRemoteOpen(Lk/a/b/a/d/h;)V

    .line 2
    sget-object p1, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandlerWithCleanup;->log:Lk/f/b;

    const-string v0, "Amqp Connection opened remotely"

    invoke-interface {p1, v0}, Lk/f/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onLinkLocalClose(Lk/a/b/a/d/h;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lk/a/b/a/d/a;->onLinkLocalClose(Lk/a/b/a/d/h;)V

    .line 2
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandlerWithCleanup;->log:Lk/f/b;

    const-string v1, "Closing amqp session locally since amqp link was closed locally"

    invoke-interface {v0, v1}, Lk/f/b;->b(Ljava/lang/String;)V

    .line 3
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->T()Lk/a/b/a/d/y;

    move-result-object p1

    invoke-interface {p1}, Lk/a/b/a/d/f;->close()V

    return-void
.end method

.method public onLinkLocalOpen(Lk/a/b/a/d/h;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lk/a/b/a/d/a;->onLinkLocalOpen(Lk/a/b/a/d/h;)V

    .line 2
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandlerWithCleanup;->log:Lk/f/b;

    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object p1

    invoke-interface {p1}, Lk/a/b/a/d/n;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Amqp Link with name {} opened locally"

    invoke-interface {v0, v1, p1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLinkRemoteClose(Lk/a/b/a/d/h;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->onLinkRemoteClose(Lk/a/b/a/d/h;)V

    .line 2
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object v0

    invoke-interface {v0}, Lk/a/b/a/d/f;->J()Lk/a/b/a/d/g;

    move-result-object v0

    sget-object v1, Lk/a/b/a/d/g;->ACTIVE:Lk/a/b/a/d/g;

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandlerWithCleanup;->log:Lk/f/b;

    const-string v1, "Closing amqp link locally since amqp link was closed remotely"

    invoke-interface {v0, v1}, Lk/f/b;->b(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object p1

    invoke-interface {p1}, Lk/a/b/a/d/f;->close()V

    :cond_0
    return-void
.end method

.method public onLinkRemoteOpen(Lk/a/b/a/d/h;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lk/a/b/a/d/a;->onLinkRemoteOpen(Lk/a/b/a/d/h;)V

    .line 2
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandlerWithCleanup;->log:Lk/f/b;

    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object p1

    invoke-interface {p1}, Lk/a/b/a/d/n;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Amqp Link with name {} opened remotely"

    invoke-interface {v0, v1, p1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSessionLocalClose(Lk/a/b/a/d/h;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lk/a/b/a/d/a;->onSessionLocalClose(Lk/a/b/a/d/h;)V

    .line 2
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandlerWithCleanup;->log:Lk/f/b;

    const-string v1, "Closing amqp connection locally since amqp session was closed locally"

    invoke-interface {v0, v1}, Lk/f/b;->b(Ljava/lang/String;)V

    .line 3
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->U()Lk/a/b/a/d/c;

    move-result-object p1

    invoke-interface {p1}, Lk/a/b/a/d/f;->close()V

    return-void
.end method

.method public onSessionLocalOpen(Lk/a/b/a/d/h;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lk/a/b/a/d/a;->onSessionLocalOpen(Lk/a/b/a/d/h;)V

    .line 2
    sget-object p1, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandlerWithCleanup;->log:Lk/f/b;

    const-string v0, "Amqp Session opened locally"

    invoke-interface {p1, v0}, Lk/f/b;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onSessionRemoteClose(Lk/a/b/a/d/h;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->onSessionRemoteClose(Lk/a/b/a/d/h;)V

    .line 2
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->T()Lk/a/b/a/d/y;

    move-result-object v0

    invoke-interface {v0}, Lk/a/b/a/d/f;->J()Lk/a/b/a/d/g;

    move-result-object v0

    sget-object v1, Lk/a/b/a/d/g;->ACTIVE:Lk/a/b/a/d/g;

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandlerWithCleanup;->log:Lk/f/b;

    const-string v1, "Closing amqp session locally since amqp session was closed remotely"

    invoke-interface {v0, v1}, Lk/f/b;->b(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->T()Lk/a/b/a/d/y;

    move-result-object p1

    invoke-interface {p1}, Lk/a/b/a/d/f;->close()V

    :cond_0
    return-void
.end method

.method public onSessionRemoteOpen(Lk/a/b/a/d/h;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lk/a/b/a/d/a;->onSessionRemoteOpen(Lk/a/b/a/d/h;)V

    .line 2
    sget-object p1, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandlerWithCleanup;->log:Lk/f/b;

    const-string v0, "Amqp Session opened remotely"

    invoke-interface {p1, v0}, Lk/f/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onTransportError(Lk/a/b/a/d/h;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->onTransportError(Lk/a/b/a/d/h;)V

    .line 2
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->U()Lk/a/b/a/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandlerWithCleanup;->log:Lk/f/b;

    const-string v1, "Closing amqp connection locally since amqp transport error was thrown"

    invoke-interface {v0, v1}, Lk/f/b;->b(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->U()Lk/a/b/a/d/c;

    move-result-object p1

    invoke-interface {p1}, Lk/a/b/a/d/f;->close()V

    :cond_0
    return-void
.end method
