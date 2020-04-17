.class public Lcom/microsoft/azure/storage/analytics/LogBlobIterable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/microsoft/azure/storage/blob/ListBlobItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final details:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/blob/BlobListingDetails;",
            ">;"
        }
    .end annotation
.end field

.field public final endTime:Ljava/util/Date;

.field public final logDirectory:Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

.field public final opContext:Lcom/microsoft/azure/storage/OperationContext;

.field public final operations:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/LoggingOperations;",
            ">;"
        }
    .end annotation
.end field

.field public final options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

.field public final startTime:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;Ljava/util/Date;Ljava/util/Date;Ljava/util/EnumSet;Ljava/util/EnumSet;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/LoggingOperations;",
            ">;",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/blob/BlobListingDetails;",
            ">;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterable;->logDirectory:Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

    .line 3
    iput-object p2, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterable;->startTime:Ljava/util/Date;

    .line 4
    iput-object p3, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterable;->endTime:Ljava/util/Date;

    .line 5
    iput-object p4, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterable;->operations:Ljava/util/EnumSet;

    .line 6
    iput-object p5, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterable;->details:Ljava/util/EnumSet;

    .line 7
    iput-object p6, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterable;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    .line 8
    iput-object p7, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterable;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/microsoft/azure/storage/blob/ListBlobItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;

    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterable;->logDirectory:Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

    iget-object v2, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterable;->startTime:Ljava/util/Date;

    iget-object v3, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterable;->endTime:Ljava/util/Date;

    iget-object v4, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterable;->operations:Ljava/util/EnumSet;

    iget-object v5, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterable;->details:Ljava/util/EnumSet;

    iget-object v6, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterable;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iget-object v7, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterable;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;Ljava/util/Date;Ljava/util/Date;Ljava/util/EnumSet;Ljava/util/EnumSet;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-object v8
.end method
