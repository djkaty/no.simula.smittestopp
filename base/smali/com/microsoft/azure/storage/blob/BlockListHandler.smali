.class public Lcom/microsoft/azure/storage/blob/BlockListHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# instance fields
.field public bld:Ljava/lang/StringBuilder;

.field public blockName:Ljava/lang/String;

.field public blockSize:Ljava/lang/Long;

.field public final blocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/storage/blob/BlockEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final elementStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public searchMode:Lcom/microsoft/azure/storage/blob/BlockSearchMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlockListHandler;->elementStack:Ljava/util/Stack;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlockListHandler;->bld:Ljava/lang/StringBuilder;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlockListHandler;->blocks:Ljava/util/ArrayList;

    return-void
.end method

.method public static getBlockList(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/storage/blob/BlockEntry;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/core/Utility;->getSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/microsoft/azure/storage/blob/BlockListHandler;

    invoke-direct {v1}, Lcom/microsoft/azure/storage/blob/BlockListHandler;-><init>()V

    .line 3
    invoke-virtual {v0, p0, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 4
    iget-object p0, v1, Lcom/microsoft/azure/storage/blob/BlockListHandler;->blocks:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlockListHandler;->bld:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlockListHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlockListHandler;->bld:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const-string p3, "Block"

    .line 5
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 6
    new-instance p1, Lcom/microsoft/azure/storage/blob/BlockEntry;

    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlockListHandler;->blockName:Ljava/lang/String;

    iget-object p3, p0, Lcom/microsoft/azure/storage/blob/BlockListHandler;->searchMode:Lcom/microsoft/azure/storage/blob/BlockSearchMode;

    invoke-direct {p1, p2, p3}, Lcom/microsoft/azure/storage/blob/BlockEntry;-><init>(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/BlockSearchMode;)V

    .line 7
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlockListHandler;->blockSize:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/microsoft/azure/storage/blob/BlockEntry;->setSize(J)V

    .line 8
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlockListHandler;->blocks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p3, "Name"

    .line 9
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 10
    iput-object p2, p0, Lcom/microsoft/azure/storage/blob/BlockListHandler;->blockName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p3, "Size"

    .line 11
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlockListHandler;->blockSize:Ljava/lang/Long;

    .line 13
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlockListHandler;->bld:Ljava/lang/StringBuilder;

    return-void

    .line 14
    :cond_4
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "The response received is invalid or improperly formatted."

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlockListHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "UncommittedBlocks"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/microsoft/azure/storage/blob/BlockSearchMode;->UNCOMMITTED:Lcom/microsoft/azure/storage/blob/BlockSearchMode;

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlockListHandler;->searchMode:Lcom/microsoft/azure/storage/blob/BlockSearchMode;

    goto :goto_0

    :cond_0
    const-string p1, "CommittedBlocks"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Lcom/microsoft/azure/storage/blob/BlockSearchMode;->COMMITTED:Lcom/microsoft/azure/storage/blob/BlockSearchMode;

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlockListHandler;->searchMode:Lcom/microsoft/azure/storage/blob/BlockSearchMode;

    :cond_1
    :goto_0
    return-void
.end method
