.class public final Lcom/microsoft/azure/storage/core/StorageErrorHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# instance fields
.field public bld:Ljava/lang/StringBuilder;

.field public final elementStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final errorInfo:Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/core/StorageErrorHandler;->elementStack:Ljava/util/Stack;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/core/StorageErrorHandler;->bld:Ljava/lang/StringBuilder;

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/core/StorageErrorHandler;->errorInfo:Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;

    return-void
.end method

.method public static getExtendedErrorInformation(Ljava/io/InputStream;)Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;
    .locals 2

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/core/Utility;->getSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/microsoft/azure/storage/core/StorageErrorHandler;

    invoke-direct {v1}, Lcom/microsoft/azure/storage/core/StorageErrorHandler;-><init>()V

    .line 3
    invoke-virtual {v0, p0, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 4
    iget-object p0, v1, Lcom/microsoft/azure/storage/core/StorageErrorHandler;->errorInfo:Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;

    return-object p0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/StorageErrorHandler;->bld:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/microsoft/azure/storage/core/StorageErrorHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 3
    iget-object p2, p0, Lcom/microsoft/azure/storage/core/StorageErrorHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->isEmpty()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/microsoft/azure/storage/core/StorageErrorHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p3

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/StorageErrorHandler;->bld:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, v0

    :goto_1
    const-string v0, "Error"

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    const-string p2, "Code"

    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    iget-object p1, p0, Lcom/microsoft/azure/storage/core/StorageErrorHandler;->errorInfo:Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;

    invoke-virtual {p1, p3}, Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;->setErrorCode(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p2, "Message"

    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 11
    iget-object p1, p0, Lcom/microsoft/azure/storage/core/StorageErrorHandler;->errorInfo:Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;

    invoke-virtual {p1, p3}, Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 12
    :cond_3
    iget-object p2, p0, Lcom/microsoft/azure/storage/core/StorageErrorHandler;->errorInfo:Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;->getAdditionalDetails()Ljava/util/HashMap;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/String;

    aput-object p3, v0, v1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    const-string v0, "ExceptionDetails"

    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 14
    iget-object p2, p0, Lcom/microsoft/azure/storage/core/StorageErrorHandler;->errorInfo:Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;->getAdditionalDetails()Ljava/util/HashMap;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/String;

    aput-object p3, v0, v1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_5
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/core/StorageErrorHandler;->bld:Ljava/lang/StringBuilder;

    return-void

    .line 16
    :cond_6
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "The response received is invalid or improperly formatted."

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/microsoft/azure/storage/core/StorageErrorHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
