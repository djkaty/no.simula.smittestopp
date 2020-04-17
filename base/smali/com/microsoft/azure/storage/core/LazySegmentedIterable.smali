.class public final Lcom/microsoft/azure/storage/core/LazySegmentedIterable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


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
        "Ljava/lang/Iterable<",
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
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterable;->segmentGenerator:Lcom/microsoft/azure/storage/core/StorageRequest;

    .line 3
    iput-object p3, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterable;->parentObject:Ljava/lang/Object;

    .line 4
    iput-object p5, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterable;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    .line 5
    iput-object p4, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterable;->policyFactory:Lcom/microsoft/azure/storage/RetryPolicyFactory;

    .line 6
    iput-object p2, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterable;->client:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TENTITY_TYPE;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/core/LazySegmentedIterator;

    iget-object v1, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterable;->segmentGenerator:Lcom/microsoft/azure/storage/core/StorageRequest;

    iget-object v2, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterable;->client:Ljava/lang/Object;

    iget-object v3, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterable;->parentObject:Ljava/lang/Object;

    iget-object v4, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterable;->policyFactory:Lcom/microsoft/azure/storage/RetryPolicyFactory;

    iget-object v5, p0, Lcom/microsoft/azure/storage/core/LazySegmentedIterable;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/core/LazySegmentedIterator;-><init>(Lcom/microsoft/azure/storage/core/StorageRequest;Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)V

    return-object v6
.end method
