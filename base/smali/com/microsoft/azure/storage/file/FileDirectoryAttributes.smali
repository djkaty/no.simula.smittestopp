.class public final Lcom/microsoft/azure/storage/file/FileDirectoryAttributes;
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

.field public name:Ljava/lang/String;

.field public properties:Lcom/microsoft/azure/storage/file/FileDirectoryProperties;

.field public storageUri:Lcom/microsoft/azure/storage/StorageUri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/file/FileDirectoryAttributes;->setMetadata(Ljava/util/HashMap;)V

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/file/FileDirectoryProperties;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/file/FileDirectoryProperties;-><init>()V

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/file/FileDirectoryAttributes;->setProperties(Lcom/microsoft/azure/storage/file/FileDirectoryProperties;)V

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
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileDirectoryAttributes;->metadata:Ljava/util/HashMap;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileDirectoryAttributes;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Lcom/microsoft/azure/storage/file/FileDirectoryProperties;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileDirectoryAttributes;->properties:Lcom/microsoft/azure/storage/file/FileDirectoryProperties;

    return-object v0
.end method

.method public final getStorageUri()Lcom/microsoft/azure/storage/StorageUri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileDirectoryAttributes;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileDirectoryAttributes;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

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
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileDirectoryAttributes;->metadata:Ljava/util/HashMap;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileDirectoryAttributes;->name:Ljava/lang/String;

    return-void
.end method

.method public setProperties(Lcom/microsoft/azure/storage/file/FileDirectoryProperties;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileDirectoryAttributes;->properties:Lcom/microsoft/azure/storage/file/FileDirectoryProperties;

    return-void
.end method

.method public setStorageUri(Lcom/microsoft/azure/storage/StorageUri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileDirectoryAttributes;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-void
.end method
