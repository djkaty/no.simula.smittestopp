.class public final Lcom/microsoft/azure/storage/file/ShareStats;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public usage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUsage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/azure/storage/file/ShareStats;->usage:I

    return v0
.end method

.method public setUsage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/microsoft/azure/storage/file/ShareStats;->usage:I

    return-void
.end method
