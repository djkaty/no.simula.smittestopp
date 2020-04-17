.class public final Lcom/microsoft/azure/storage/blob/BlobAttributes;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public metadata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

.field public snapshotID:Ljava/lang/String;

.field public storageUri:Lcom/microsoft/azure/storage/StorageUri;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/blob/BlobType;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/blob/BlobAttributes;->setMetadata(Ljava/util/HashMap;)V

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/storage/blob/BlobProperties;-><init>(Lcom/microsoft/azure/storage/blob/BlobType;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/blob/BlobAttributes;->setProperties(Lcom/microsoft/azure/storage/blob/BlobProperties;)V

    return-void
.end method


# virtual methods
.method public getMetadata()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobAttributes;->metadata:Ljava/util/HashMap;

    return-object v0
.end method

.method public getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobAttributes;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    return-object v0
.end method

.method public final getSnapshotID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobAttributes;->snapshotID:Ljava/lang/String;

    return-object v0
.end method

.method public final getStorageUri()Lcom/microsoft/azure/storage/StorageUri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobAttributes;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-object v0
.end method

.method public final getUri()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobAttributes;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public setMetadata(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobAttributes;->metadata:Ljava/util/HashMap;

    return-void
.end method

.method public setProperties(Lcom/microsoft/azure/storage/blob/BlobProperties;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobAttributes;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    return-void
.end method

.method public final setSnapshotID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobAttributes;->snapshotID:Ljava/lang/String;

    return-void
.end method

.method public setStorageUri(Lcom/microsoft/azure/storage/StorageUri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobAttributes;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-void
.end method
