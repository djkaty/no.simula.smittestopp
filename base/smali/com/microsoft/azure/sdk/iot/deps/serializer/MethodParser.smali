.class public Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;
    }
.end annotation


# static fields
.field public static final CONNECT_TIMEOUT_IN_SECONDS_TAG:Ljava/lang/String; = "connectTimeoutInSeconds"

.field public static final METHOD_NAME_TAG:Ljava/lang/String; = "methodName"

.field public static final PAYLOAD_TAG:Ljava/lang/String; = "payload"

.field public static final RESPONSE_TIMEOUT_IN_SECONDS_TAG:Ljava/lang/String; = "responseTimeoutInSeconds"

.field public static final STATUS_TAG:Ljava/lang/String; = "status"


# instance fields
.field public connectTimeout:Ljava/lang/Long;
    .annotation runtime Le/c/c/v/a;
        deserialize = false
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "connectTimeoutInSeconds"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = false
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "methodName"
    .end annotation
.end field

.field public operation:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;
    .annotation runtime Le/c/c/v/a;
        deserialize = false
        serialize = false
    .end annotation
.end field

.field public payload:Ljava/lang/Object;
    .annotation runtime Le/c/c/v/c;
        value = "payload"
    .end annotation
.end field

.field public responseTimeout:Ljava/lang/Long;
    .annotation runtime Le/c/c/v/a;
        deserialize = false
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "responseTimeoutInSeconds"
    .end annotation
.end field

.field public status:Ljava/lang/Integer;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = false
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->name:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->responseTimeout:Ljava/lang/Long;

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->connectTimeout:Ljava/lang/Long;

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->status:Ljava/lang/Integer;

    .line 6
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->payload:Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;->none:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->operation:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->payload:Ljava/lang/Object;

    .line 19
    sget-object p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;->payload:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->operation:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Object;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;-><init>()V

    .line 9
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->validateKey(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 10
    invoke-direct {p0, p2}, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->validateTimeout(Ljava/lang/Long;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 11
    invoke-direct {p0, p3}, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->validateTimeout(Ljava/lang/Long;)V

    .line 12
    :cond_1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->name:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->responseTimeout:Ljava/lang/Long;

    .line 14
    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->connectTimeout:Ljava/lang/Long;

    .line 15
    iput-object p4, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->payload:Ljava/lang/Object;

    .line 16
    sget-object p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;->invoke:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->operation:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;

    return-void
.end method

.method private jsonizePayload(Ljava/lang/Object;)Le/c/c/j;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Le/c/c/l;

    invoke-direct {p1}, Le/c/c/l;-><init>()V

    return-object p1

    .line 2
    :cond_0
    instance-of v0, p1, Le/c/c/j;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Le/c/c/j;

    return-object p1

    .line 4
    :cond_1
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 5
    new-instance v0, Le/c/c/m;

    invoke-direct {v0}, Le/c/c/m;-><init>()V

    .line 6
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->jsonizePayload(Ljava/lang/Object;)Le/c/c/j;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    goto :goto_0

    :cond_2
    return-object v0

    .line 9
    :cond_3
    new-instance v0, Le/c/c/o;

    invoke-direct {v0}, Le/c/c/o;-><init>()V

    .line 10
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Le/c/c/o;->a(Ljava/lang/String;)Le/c/c/j;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 12
    instance-of v2, v0, Le/c/c/l;

    if-eqz v2, :cond_4

    .line 13
    new-instance v0, Le/c/c/p;

    invoke-direct {v0, v1}, Le/c/c/p;-><init>(Ljava/lang/String;)V

    :cond_4
    return-object v0

    :cond_5
    const/4 v0, 0x0

    .line 14
    throw v0
    :try_end_0
    .catch Le/c/c/s; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :catch_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->b(Ljava/lang/Object;)Le/c/c/j;

    move-result-object p1

    return-object p1
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_1

    const-string v0, "$"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Key cannot contain \'$\', \'.\', or space"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Key cannot be longer than 128 characters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Key cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateTimeout(Ljava/lang/Long;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Negative timeout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public declared-synchronized fromJson(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_a

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2
    new-instance v0, Le/c/c/o;

    invoke-direct {v0}, Le/c/c/o;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    invoke-virtual {v0, p1}, Le/c/c/o;->a(Ljava/lang/String;)Le/c/c/j;

    move-result-object p1

    .line 4
    instance-of v0, p1, Le/c/c/p;

    if-nez v0, :cond_8

    instance-of v0, p1, Le/c/c/g;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Le/c/c/m;

    if-eqz v0, :cond_7

    .line 6
    check-cast p1, Le/c/c/m;

    const-string v0, "status"

    .line 7
    invoke-virtual {p1, v0}, Le/c/c/m;->a(Ljava/lang/String;)Le/c/c/j;

    move-result-object v0

    const-string v1, "methodName"

    .line 8
    invoke-virtual {p1, v1}, Le/c/c/m;->a(Ljava/lang/String;)Le/c/c/j;

    move-result-object v1

    if-nez v1, :cond_3

    if-nez v0, :cond_1

    .line 9
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;->payload:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->operation:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;

    .line 10
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getJsonObjectValue(Le/c/c/m;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->payload:Ljava/lang/Object;

    goto/16 :goto_1

    .line 11
    :cond_1
    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;->response:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;

    iput-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->operation:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;

    .line 12
    instance-of v1, v0, Le/c/c/p;

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {v0}, Le/c/c/j;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->status:Ljava/lang/Integer;

    :cond_2
    const-string v0, "payload"

    .line 14
    invoke-virtual {p1, v0}, Le/c/c/m;->a(Ljava/lang/String;)Le/c/c/j;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 15
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->resolveJsonElement(Le/c/c/j;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->payload:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    if-nez v0, :cond_6

    .line 16
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;->invoke:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->operation:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;

    .line 17
    invoke-virtual {v1}, Le/c/c/j;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->name:Ljava/lang/String;

    const-string v0, "responseTimeoutInSeconds"

    .line 18
    invoke-virtual {p1, v0}, Le/c/c/m;->a(Ljava/lang/String;)Le/c/c/j;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {v0}, Le/c/c/j;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->responseTimeout:Ljava/lang/Long;

    :cond_4
    const-string v0, "connectTimeoutInSeconds"

    .line 20
    invoke-virtual {p1, v0}, Le/c/c/m;->a(Ljava/lang/String;)Le/c/c/j;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {v0}, Le/c/c/j;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->connectTimeout:Ljava/lang/Long;

    :cond_5
    const-string v0, "payload"

    .line 22
    invoke-virtual {p1, v0}, Le/c/c/m;->a(Ljava/lang/String;)Le/c/c/j;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 23
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->resolveJsonElement(Le/c/c/j;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->payload:Ljava/lang/Object;

    goto :goto_1

    .line 24
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invoke method name and Status reported in the same json"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid json."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_8
    :goto_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;->payload:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->operation:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;

    .line 27
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->resolveJsonElement(Le/c/c/j;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->payload:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :cond_9
    :goto_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 29
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Malformed json."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 30
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid json."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPayload()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->payload:Ljava/lang/Object;

    instance-of v1, v0, Le/c/c/j;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Le/c/c/j;

    if-eqz v1, :cond_0

    .line 2
    instance-of v1, v1, Le/c/c/p;

    if-eqz v1, :cond_1

    .line 3
    move-object v1, v0

    check-cast v1, Le/c/c/p;

    .line 4
    iget-object v1, v1, Le/c/c/p;->a:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Le/c/c/p;

    invoke-virtual {v0}, Le/c/c/p;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 6
    throw v0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->operation:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;->response:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->status:Ljava/lang/Integer;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No response to report status"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->toJsonElement()Le/c/c/j;

    move-result-object v0

    invoke-virtual {v0}, Le/c/c/j;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJsonElement()Le/c/c/j;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->operation:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;->invoke:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;

    const-string v2, "payload"

    if-ne v0, v1, :cond_3

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    new-instance v0, Le/c/c/m;

    invoke-direct {v0}, Le/c/c/m;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->name:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Le/c/c/m;->a(Ljava/lang/Object;)Le/c/c/j;

    move-result-object v1

    const-string v3, "methodName"

    invoke-virtual {v0, v3, v1}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    .line 6
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->responseTimeout:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Le/c/c/m;->a(Ljava/lang/Object;)Le/c/c/j;

    move-result-object v1

    const-string v3, "responseTimeoutInSeconds"

    invoke-virtual {v0, v3, v1}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->connectTimeout:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Le/c/c/m;->a(Ljava/lang/Object;)Le/c/c/j;

    move-result-object v1

    const-string v3, "connectTimeoutInSeconds"

    invoke-virtual {v0, v3, v1}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->payload:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->jsonizePayload(Ljava/lang/Object;)Le/c/c/j;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    return-object v0

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot invoke method with null name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_3
    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;->response:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;

    if-ne v0, v1, :cond_4

    .line 13
    new-instance v0, Le/c/c/m;

    invoke-direct {v0}, Le/c/c/m;-><init>()V

    .line 14
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->status:Ljava/lang/Integer;

    .line 15
    invoke-virtual {v0, v1}, Le/c/c/m;->a(Ljava/lang/Object;)Le/c/c/j;

    move-result-object v1

    const-string v3, "status"

    invoke-virtual {v0, v3, v1}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    .line 16
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->payload:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->jsonizePayload(Ljava/lang/Object;)Le/c/c/j;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    return-object v0

    .line 17
    :cond_4
    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;->payload:Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser$Operation;

    if-ne v0, v1, :cond_5

    .line 18
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->payload:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->jsonizePayload(Ljava/lang/Object;)Le/c/c/j;

    move-result-object v0

    return-object v0

    .line 19
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There is no content to parser"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
