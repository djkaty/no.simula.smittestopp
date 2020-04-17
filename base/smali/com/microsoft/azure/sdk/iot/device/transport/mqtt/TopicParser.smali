.class public Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/TopicParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final QUESTION:Ljava/lang/String;

.field public final REQ_ID:Ljava/lang/String;

.field public final VERSION:Ljava/lang/String;

.field public topicTokens:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/TopicParser;->topicTokens:[Ljava/lang/String;

    const-string v0, "?"

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/TopicParser;->QUESTION:Ljava/lang/String;

    const-string v0, "$rid="

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/TopicParser;->REQ_ID:Ljava/lang/String;

    const-string v0, "$version="

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/TopicParser;->VERSION:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/TopicParser;->topicTokens:[Ljava/lang/String;

    return-void

    .line 8
    :cond_0
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "topic cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public getMethodName(I)Ljava/lang/String;
    .locals 2

    if-lez p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/TopicParser;->topicTokens:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_2

    .line 2
    array-length v1, v0

    if-le v1, p1, :cond_1

    .line 3
    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method name could not be parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 5
    :cond_2
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid token Index for Method Name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getRequestId(I)Ljava/lang/String;
    .locals 4

    if-lez p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/TopicParser;->topicTokens:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_2

    .line 2
    array-length v1, v0

    if-le v1, p1, :cond_1

    .line 3
    aget-object p1, v0, p1

    const-string v0, "$rid="

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "$version="

    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "?$version="

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 9
    :cond_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 10
    :cond_2
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid token Index for request id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getStatus(I)Ljava/lang/String;
    .locals 2

    if-lez p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/TopicParser;->topicTokens:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_2

    .line 2
    array-length v1, v0

    if-le v1, p1, :cond_1

    .line 3
    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string v0, "Status could not be parsed"

    invoke-direct {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 5
    :cond_2
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid token Index for status"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getVersion(I)Ljava/lang/String;
    .locals 4

    if-lez p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/TopicParser;->topicTokens:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_2

    .line 2
    array-length v1, v0

    if-le v1, p1, :cond_1

    .line 3
    aget-object p1, v0, p1

    const-string v0, "$version="

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "?$rid="

    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "$rid="

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 9
    :cond_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 10
    :cond_2
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid token Index for Version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
