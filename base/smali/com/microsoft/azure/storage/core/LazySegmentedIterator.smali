.class public final Lcom/microsoft/azure/storage/core/LazySegmentedIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C",
        "LIENT_TYPE:Ljava/lang/Object;",
        "PARENT_TYPE:",
        "Ljava/lang/Object;",
        "ENTITY_TYPE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TENTITY_TYPE;>;"
    }
.end annotation


# instance fields
.field public final client:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC",
            "LIENT_TYPE;"
        }
    .end annotation
.end field

.field public currentSegment:Lcom/microsoft/azure/storage/ResultSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "TENTITY_TYPE;>;"
        }
    .end annotation
.end field

.field public currentSegmentIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TENTITY_TYPE;>;"
        }
    .end annotation
.end field

.field public final opContext:Lcom/microsoft/azure/storage/OperationContext;

.field public final parentObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPARENT_TYPE;"
        }
    .end annotation
.end field

.field public final policyFactory:Lcom/microsoft/azure/storage/RetryPolicyFactory;

.field public final segmentGenerator:Lcom/microsoft/azure/storage/core/StorageRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "TC",
            "LIENT_TYPE;",
            "TPARENT_TYPE;",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "TENTITY_TYPE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/core/StorageRequest;Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "TC",
            "LIENT_TYPE;",
            "TPARENT_TYPE;",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "TENTITY_TYPE;>;>;TC",
            "LIENT_TYPE;",
            "TPARENT_TYPE;",
            "Lcom/microsoft/azure/storage/RetryPolicyFactory;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterator;->segmentGenerator:Lcom/microsoft/azure/storage/core/StorageRequest;

    .line 3
    iput-object p3, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterator;->parentObject:Ljava/lang/Object;

    .line 4
    iput-object p5, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterator;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    .line 5
    iput-object p4, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterator;->policyFactory:Lcom/microsoft/azure/storage/RetryPolicyFactory;

    .line 6
    iput-object p2, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterator;->client:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterator;->currentSegment:Lcom/microsoft/azure/storage/ResultSegment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterator;->currentSegmentIterator:Ljava/util/Iterator;

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterator;->currentSegment:Lcom/microsoft/azure/storage/ResultSegment;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/ResultSegment;->getHasMoreResults()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterator;->currentSegmentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0

    .line 5
    :cond_2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterator;->client:Ljava/lang/Object;

    iget-object v1, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterator;->parentObject:Ljava/lang/Object;

    iget-object v2, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterator;->segmentGenerator:Lcom/microsoft/azure/storage/core/StorageRequest;

    iget-object v3, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterator;->policyFactory:Lcom/microsoft/azure/storage/RetryPolicyFactory;

    iget-object v4, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterator;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/storage/ResultSegment;

    iput-object v0, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterator;->currentSegment:Lcom/microsoft/azure/storage/ResultSegment;
    :try_end_0
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/ResultSegment;->getResults()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterator;->currentSegmentIterator:Ljava/util/Iterator;

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterator;->currentSegment:Lcom/microsoft/azure/storage/ResultSegment;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/ResultSegment;->getHasMoreResults()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "An error occurred while enumerating the result, check the original exception for details."

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v0}, Ljava/util/NoSuchElementException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10
    throw v1
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TENTITY_TYPE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/LazySegmentedIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterator;->currentSegmentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
