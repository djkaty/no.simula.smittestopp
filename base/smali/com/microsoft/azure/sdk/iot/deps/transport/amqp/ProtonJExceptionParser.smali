.class public Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_ERROR_DESCRIPTION:Ljava/lang/String; = "NoErrorDescription"


# instance fields
.field public error:Ljava/lang/String;

.field public errorDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lk/a/b/a/d/h;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Lk/a/b/a/d/f;

    .line 2
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->o()Lk/a/b/a/d/x;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->i()Lk/a/b/a/d/t;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->U()Lk/a/b/a/d/c;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->l()Lk/a/b/a/d/c0;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->T()Lk/a/b/a/d/y;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object p1

    const/4 v1, 0x5

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;->getTransportExceptionFromProtonEndpoints([Lk/a/b/a/d/f;)V

    return-void
.end method

.method private getErrorConditionFromEndpoint(Lk/a/b/a/d/f;)Lk/a/b/a/b/n/j;
    .locals 1

    .line 1
    invoke-interface {p1}, Lk/a/b/a/d/f;->L()Lk/a/b/a/b/n/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lk/a/b/a/d/f;->L()Lk/a/b/a/b/n/j;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lk/a/b/a/b/n/j;->a:Lk/a/b/a/b/f;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lk/a/b/a/d/f;->L()Lk/a/b/a/b/n/j;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lk/a/b/a/d/f;->H()Lk/a/b/a/b/n/j;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private varargs getTransportExceptionFromProtonEndpoints([Lk/a/b/a/d/f;)V
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-direct {p0, v2}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;->getErrorConditionFromEndpoint(Lk/a/b/a/d/f;)Lk/a/b/a/b/n/j;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3
    iget-object v3, v2, Lk/a/b/a/b/n/j;->a:Lk/a/b/a/b/f;

    if-nez v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v3, v3, Lk/a/b/a/b/f;->x:Ljava/lang/String;

    .line 5
    iput-object v3, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;->error:Ljava/lang/String;

    .line 6
    iget-object v2, v2, Lk/a/b/a/b/n/j;->b:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 7
    iput-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;->errorDescription:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v2, "NoErrorDescription"

    .line 8
    iput-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;->errorDescription:Ljava/lang/String;

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ProtonJExceptionParser;->errorDescription:Ljava/lang/String;

    return-object v0
.end method
