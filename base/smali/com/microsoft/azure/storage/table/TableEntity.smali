.class public interface abstract Lcom/microsoft/azure/storage/table/TableEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getEtag()Ljava/lang/String;
.end method

.method public abstract getPartitionKey()Ljava/lang/String;
.end method

.method public abstract getRowKey()Ljava/lang/String;
.end method

.method public abstract getTimestamp()Ljava/util/Date;
.end method

.method public abstract readEntity(Ljava/util/HashMap;Lcom/microsoft/azure/storage/OperationContext;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/EntityProperty;",
            ">;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setEtag(Ljava/lang/String;)V
.end method

.method public abstract setPartitionKey(Ljava/lang/String;)V
.end method

.method public abstract setRowKey(Ljava/lang/String;)V
.end method

.method public abstract setTimestamp(Ljava/util/Date;)V
.end method

.method public abstract writeEntity(Lcom/microsoft/azure/storage/OperationContext;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/EntityProperty;",
            ">;"
        }
    .end annotation
.end method
