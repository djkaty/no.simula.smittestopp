.class public abstract Lcom/microsoft/azure/storage/SharedAccessHeaders;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cacheControl:Ljava/lang/String;

.field public contentDisposition:Ljava/lang/String;

.field public contentEncoding:Ljava/lang/String;

.field public contentLanguage:Ljava/lang/String;

.field public contentType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/SharedAccessHeaders;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "other"

    .line 3
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p1, Lcom/microsoft/azure/storage/SharedAccessHeaders;->contentType:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/storage/SharedAccessHeaders;->contentType:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lcom/microsoft/azure/storage/SharedAccessHeaders;->contentDisposition:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/storage/SharedAccessHeaders;->contentDisposition:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcom/microsoft/azure/storage/SharedAccessHeaders;->contentEncoding:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/storage/SharedAccessHeaders;->contentEncoding:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lcom/microsoft/azure/storage/SharedAccessHeaders;->contentLanguage:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/storage/SharedAccessHeaders;->contentLanguage:Ljava/lang/String;

    .line 8
    iget-object p1, p1, Lcom/microsoft/azure/storage/SharedAccessHeaders;->cacheControl:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/azure/storage/SharedAccessHeaders;->cacheControl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCacheControl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/SharedAccessHeaders;->cacheControl:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/SharedAccessHeaders;->contentDisposition:Ljava/lang/String;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/SharedAccessHeaders;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/SharedAccessHeaders;->contentLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/SharedAccessHeaders;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/SharedAccessHeaders;->cacheControl:Ljava/lang/String;

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/SharedAccessHeaders;->contentDisposition:Ljava/lang/String;

    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/SharedAccessHeaders;->contentEncoding:Ljava/lang/String;

    return-void
.end method

.method public setContentLanguage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/SharedAccessHeaders;->contentLanguage:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/SharedAccessHeaders;->contentType:Ljava/lang/String;

    return-void
.end method
