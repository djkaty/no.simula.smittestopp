.class public Lcom/microsoft/azure/storage/analytics/LogRecordIterable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/microsoft/azure/storage/analytics/LogRecord;",
        ">;"
    }
.end annotation


# instance fields
.field public final logBlobIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/microsoft/azure/storage/blob/ListBlobItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/microsoft/azure/storage/blob/ListBlobItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecordIterable;->logBlobIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/microsoft/azure/storage/analytics/LogRecord;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/analytics/LogRecordIterator;

    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogRecordIterable;->logBlobIterator:Ljava/util/Iterator;

    invoke-direct {v0, v1}, Lcom/microsoft/azure/storage/analytics/LogRecordIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method
