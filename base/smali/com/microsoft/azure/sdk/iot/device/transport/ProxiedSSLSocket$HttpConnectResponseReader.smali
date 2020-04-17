.class public Lcom/microsoft/azure/sdk/iot/device/transport/ProxiedSSLSocket$HttpConnectResponseReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/sdk/iot/device/transport/ProxiedSSLSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HttpConnectResponseReader"
.end annotation


# instance fields
.field public alreadyRead:Z

.field public byteEncoding:Ljava/nio/charset/Charset;
    .annotation build Llombok/NonNull;
    .end annotation
.end field

.field public inputStream:Ljava/io/InputStream;
    .annotation build Llombok/NonNull;
    .end annotation
.end field

.field public final synthetic this$0:Lcom/microsoft/azure/sdk/iot/device/transport/ProxiedSSLSocket;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/transport/ProxiedSSLSocket;Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1    # Lcom/microsoft/azure/sdk/iot/device/transport/ProxiedSSLSocket;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/InputStream;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ProxiedSSLSocket$HttpConnectResponseReader;->this$0:Lcom/microsoft/azure/sdk/iot/device/transport/ProxiedSSLSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ProxiedSSLSocket$HttpConnectResponseReader;->alreadyRead:Z

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 3
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ProxiedSSLSocket$HttpConnectResponseReader;->inputStream:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ProxiedSSLSocket$HttpConnectResponseReader;->byteEncoding:Ljava/nio/charset/Charset;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "byteEncoding is marked non-null but is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "inputStream is marked non-null but is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public isCRLF(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0xd

    if-ne v0, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0xa

    if-ne v0, v4, :cond_1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_1

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public readHttpConnectResponse()Ljava/lang/String;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ProxiedSSLSocket$HttpConnectResponseReader;->alreadyRead:Z

    if-nez v0, :cond_3

    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 4
    :goto_0
    invoke-virtual {p0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/ProxiedSSLSocket$HttpConnectResponseReader;->isCRLF(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ProxiedSSLSocket$HttpConnectResponseReader;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 7
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 8
    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 9
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ProxiedSSLSocket$HttpConnectResponseReader;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected EOF from proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ProxiedSSLSocket$HttpConnectResponseReader;->byteEncoding:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 13
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ProxiedSSLSocket$HttpConnectResponseReader;->alreadyRead:Z

    return-object v1

    .line 15
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Http connect response has already been read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
