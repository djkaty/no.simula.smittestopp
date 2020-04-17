.class public final Lcom/microsoft/azure/storage/blob/BlockEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public id:Ljava/lang/String;

.field public searchMode:Lcom/microsoft/azure/storage/blob/BlockSearchMode;

.field public size:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/blob/BlockEntry;->setId(Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/microsoft/azure/storage/blob/BlockSearchMode;->LATEST:Lcom/microsoft/azure/storage/blob/BlockSearchMode;

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlockEntry;->searchMode:Lcom/microsoft/azure/storage/blob/BlockSearchMode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/BlockSearchMode;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/blob/BlockEntry;->setId(Ljava/lang/String;)V

    .line 6
    iput-object p2, p0, Lcom/microsoft/azure/storage/blob/BlockEntry;->searchMode:Lcom/microsoft/azure/storage/blob/BlockSearchMode;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlockEntry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchMode()Lcom/microsoft/azure/storage/blob/BlockSearchMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlockEntry;->searchMode:Lcom/microsoft/azure/storage/blob/BlockSearchMode;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/storage/blob/BlockEntry;->size:J

    return-wide v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlockEntry;->id:Ljava/lang/String;

    return-void
.end method

.method public setSearchMode(Lcom/microsoft/azure/storage/blob/BlockSearchMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlockEntry;->searchMode:Lcom/microsoft/azure/storage/blob/BlockSearchMode;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/microsoft/azure/storage/blob/BlockEntry;->size:J

    return-void
.end method
