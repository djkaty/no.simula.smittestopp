.class public final Lcom/microsoft/azure/storage/file/FileProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cacheControl:Ljava/lang/String;

.field public contentDisposition:Ljava/lang/String;

.field public contentEncoding:Ljava/lang/String;

.field public contentLanguage:Ljava/lang/String;

.field public contentMD5:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public copyState:Lcom/microsoft/azure/storage/file/CopyState;

.field public etag:Ljava/lang/String;

.field public lastModified:Ljava/util/Date;

.field public length:J

.field public serverEncrypted:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/file/FileProperties;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lcom/microsoft/azure/storage/file/FileProperties;->cacheControl:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileProperties;->cacheControl:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/microsoft/azure/storage/file/FileProperties;->contentDisposition:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileProperties;->contentDisposition:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lcom/microsoft/azure/storage/file/FileProperties;->contentEncoding:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileProperties;->contentEncoding:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcom/microsoft/azure/storage/file/FileProperties;->contentLanguage:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileProperties;->contentLanguage:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lcom/microsoft/azure/storage/file/FileProperties;->contentMD5:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileProperties;->contentMD5:Ljava/lang/String;

    .line 8
    iget-object v0, p1, Lcom/microsoft/azure/storage/file/FileProperties;->contentType:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileProperties;->contentType:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lcom/microsoft/azure/storage/file/FileProperties;->etag:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileProperties;->etag:Ljava/lang/String;

    .line 10
    iget-wide v0, p1, Lcom/microsoft/azure/storage/file/FileProperties;->length:J

    iput-wide v0, p0, Lcom/microsoft/azure/storage/file/FileProperties;->length:J

    .line 11
    iget-object v0, p1, Lcom/microsoft/azure/storage/file/FileProperties;->lastModified:Ljava/util/Date;

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileProperties;->lastModified:Ljava/util/Date;

    .line 12
    iget-boolean p1, p1, Lcom/microsoft/azure/storage/file/FileProperties;->serverEncrypted:Z

    iput-boolean p1, p0, Lcom/microsoft/azure/storage/file/FileProperties;->serverEncrypted:Z

    return-void
.end method


# virtual methods
.method public getCacheControl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileProperties;->cacheControl:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileProperties;->contentDisposition:Ljava/lang/String;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileProperties;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileProperties;->contentLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getContentMD5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileProperties;->contentMD5:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileProperties;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyState()Lcom/microsoft/azure/storage/file/CopyState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileProperties;->copyState:Lcom/microsoft/azure/storage/file/CopyState;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileProperties;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileProperties;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/storage/file/FileProperties;->length:J

    return-wide v0
.end method

.method public isServerEncrypted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/file/FileProperties;->serverEncrypted:Z

    return v0
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileProperties;->cacheControl:Ljava/lang/String;

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileProperties;->contentDisposition:Ljava/lang/String;

    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileProperties;->contentEncoding:Ljava/lang/String;

    return-void
.end method

.method public setContentLanguage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileProperties;->contentLanguage:Ljava/lang/String;

    return-void
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileProperties;->contentMD5:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileProperties;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setCopyState(Lcom/microsoft/azure/storage/file/CopyState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileProperties;->copyState:Lcom/microsoft/azure/storage/file/CopyState;

    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileProperties;->etag:Ljava/lang/String;

    return-void
.end method

.method public setLastModified(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileProperties;->lastModified:Ljava/util/Date;

    return-void
.end method

.method public setLength(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/microsoft/azure/storage/file/FileProperties;->length:J

    return-void
.end method

.method public setServerEncrypted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/file/FileProperties;->serverEncrypted:Z

    return-void
.end method
