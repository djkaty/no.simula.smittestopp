.class public final Lcom/microsoft/azure/storage/blob/PageRangeDiff;
.super Lcom/microsoft/azure/storage/blob/PageRange;
.source "SourceFile"


# instance fields
.field public isCleared:Z


# direct methods
.method public constructor <init>(JJZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/blob/PageRange;-><init>(JJ)V

    .line 2
    invoke-virtual {p0, p5}, Lcom/microsoft/azure/storage/blob/PageRangeDiff;->setIsCleared(Z)V

    return-void
.end method


# virtual methods
.method public isCleared()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/blob/PageRangeDiff;->isCleared:Z

    return v0
.end method

.method public setIsCleared(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/blob/PageRangeDiff;->isCleared:Z

    return-void
.end method
