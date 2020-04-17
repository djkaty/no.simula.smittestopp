.class public Lcom/microsoft/azure/storage/DeleteRetentionPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public enabled:Z

.field public retentionIntervalInDays:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/DeleteRetentionPolicy;->enabled:Z

    return-void
.end method


# virtual methods
.method public getEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/DeleteRetentionPolicy;->enabled:Z

    return v0
.end method

.method public getRetentionIntervalInDays()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/DeleteRetentionPolicy;->retentionIntervalInDays:Ljava/lang/Integer;

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/DeleteRetentionPolicy;->enabled:Z

    return-void
.end method

.method public setRetentionIntervalInDays(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/DeleteRetentionPolicy;->retentionIntervalInDays:Ljava/lang/Integer;

    return-void
.end method
