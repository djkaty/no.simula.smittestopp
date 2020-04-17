.class public final Lcom/microsoft/azure/storage/file/FileDirectoryProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public etag:Ljava/lang/String;

.field public lastModified:Ljava/util/Date;

.field public serverEncrypted:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEtag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileDirectoryProperties;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileDirectoryProperties;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public isServerEncrypted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/file/FileDirectoryProperties;->serverEncrypted:Z

    return v0
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileDirectoryProperties;->etag:Ljava/lang/String;

    return-void
.end method

.method public setLastModified(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileDirectoryProperties;->lastModified:Ljava/util/Date;

    return-void
.end method

.method public setServerEncrypted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/file/FileDirectoryProperties;->serverEncrypted:Z

    return-void
.end method
