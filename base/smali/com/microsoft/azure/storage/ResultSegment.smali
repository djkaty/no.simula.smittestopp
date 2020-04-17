.class public Lcom/microsoft/azure/storage/ResultSegment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final continuationToken:Lcom/microsoft/azure/storage/ResultContinuation;

.field public final length:I

.field public final pageSize:Ljava/lang/Integer;

.field public final results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/lang/Integer;",
            "Lcom/microsoft/azure/storage/ResultContinuation;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/storage/ResultSegment;->results:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/microsoft/azure/storage/ResultSegment;->length:I

    .line 4
    iput-object p2, p0, Lcom/microsoft/azure/storage/ResultSegment;->pageSize:Ljava/lang/Integer;

    .line 5
    iput-object p3, p0, Lcom/microsoft/azure/storage/ResultSegment;->continuationToken:Lcom/microsoft/azure/storage/ResultContinuation;

    return-void
.end method


# virtual methods
.method public getContinuationToken()Lcom/microsoft/azure/storage/ResultContinuation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/ResultSegment;->continuationToken:Lcom/microsoft/azure/storage/ResultContinuation;

    return-object v0
.end method

.method public getHasMoreResults()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/ResultSegment;->continuationToken:Lcom/microsoft/azure/storage/ResultContinuation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIsPageComplete()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/microsoft/azure/storage/ResultSegment;->length:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/ResultSegment;->pageSize:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/azure/storage/ResultSegment;->length:I

    return v0
.end method

.method public getPageSize()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/ResultSegment;->pageSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRemainingPageResults()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/ResultSegment;->pageSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/microsoft/azure/storage/ResultSegment;->length:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getResults()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/ResultSegment;->results:Ljava/util/ArrayList;

    return-object v0
.end method
