.class public Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpReactor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final REACTOR_TIMEOUT:I = 0xa


# instance fields
.field public final reactor:Lk/a/b/a/g/d;


# direct methods
.method public constructor <init>(Lk/a/b/a/g/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpReactor;->reactor:Lk/a/b/a/g/d;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpReactor;->reactor:Lk/a/b/a/g/d;

    const-wide/16 v1, 0xa

    invoke-interface {v0, v1, v2}, Lk/a/b/a/g/d;->b(J)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpReactor;->reactor:Lk/a/b/a/g/d;

    invoke-interface {v0}, Lk/a/b/a/g/d;->start()V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpReactor;->reactor:Lk/a/b/a/g/d;

    invoke-interface {v0}, Lk/a/b/a/g/d;->process()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpReactor;->reactor:Lk/a/b/a/g/d;

    invoke-interface {v0}, Lk/a/b/a/g/d;->stop()V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpReactor;->reactor:Lk/a/b/a/g/d;

    invoke-interface {v0}, Lk/a/b/a/g/d;->process()Z

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpReactor;->reactor:Lk/a/b/a/g/d;

    invoke-interface {v0}, Lk/a/b/a/g/d;->a()V

    return-void
.end method
