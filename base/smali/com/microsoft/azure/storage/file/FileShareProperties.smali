.class public final Lcom/microsoft/azure/storage/file/FileShareProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public etag:Ljava/lang/String;

.field public lastModified:Ljava/util/Date;

.field public shareQuota:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/file/FileShareProperties;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/FileShareProperties;->getEtag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/file/FileShareProperties;->setEtag(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/FileShareProperties;->getLastModified()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/file/FileShareProperties;->setLastModified(Ljava/util/Date;)V

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/FileShareProperties;->getShareQuota()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/file/FileShareProperties;->setShareQuota(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getEtag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileShareProperties;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileShareProperties;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public getShareQuota()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileShareProperties;->shareQuota:Ljava/lang/Integer;

    return-object v0
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileShareProperties;->etag:Ljava/lang/String;

    return-void
.end method

.method public setLastModified(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileShareProperties;->lastModified:Ljava/util/Date;

    return-void
.end method

.method public setShareQuota(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileShareProperties;->shareQuota:Ljava/lang/Integer;

    return-void
.end method
