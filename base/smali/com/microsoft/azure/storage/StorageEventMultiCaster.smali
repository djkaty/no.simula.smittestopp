.class public final Lcom/microsoft/azure/storage/StorageEventMultiCaster;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<EVENT_TYPE:",
        "Lcom/microsoft/azure/storage/BaseEvent;",
        "EVENT_",
        "LISTENER_TYPE:Lcom/microsoft/azure/storage/StorageEvent<",
        "TEVENT_TYPE;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "TEVENT_",
            "LISTENER_TYPE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/StorageEventMultiCaster;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/microsoft/azure/storage/StorageEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEVENT_",
            "LISTENER_TYPE;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/StorageEventMultiCaster;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public fireEvent(Lcom/microsoft/azure/storage/BaseEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEVENT_TYPE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/StorageEventMultiCaster;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/storage/StorageEvent;

    .line 2
    invoke-virtual {v1, p1}, Lcom/microsoft/azure/storage/StorageEvent;->eventOccurred(Lcom/microsoft/azure/storage/BaseEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hasListeners()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/StorageEventMultiCaster;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeListener(Lcom/microsoft/azure/storage/StorageEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEVENT_",
            "LISTENER_TYPE;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/StorageEventMultiCaster;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
