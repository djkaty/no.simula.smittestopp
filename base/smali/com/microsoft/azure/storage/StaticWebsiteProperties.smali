.class public final Lcom/microsoft/azure/storage/StaticWebsiteProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public enabled:Z

.field public errorDocument404Path:Ljava/lang/String;

.field public indexDocument:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/StaticWebsiteProperties;->enabled:Z

    return-void
.end method


# virtual methods
.method public getEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/StaticWebsiteProperties;->enabled:Z

    return v0
.end method

.method public getErrorDocument404Path()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/StaticWebsiteProperties;->errorDocument404Path:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexDocument()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/StaticWebsiteProperties;->indexDocument:Ljava/lang/String;

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/StaticWebsiteProperties;->enabled:Z

    return-void
.end method

.method public setErrorDocument404Path(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/StaticWebsiteProperties;->errorDocument404Path:Ljava/lang/String;

    return-void
.end method

.method public setIndexDocument(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/StaticWebsiteProperties;->indexDocument:Ljava/lang/String;

    return-void
.end method
