.class public final Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;
.super Lcom/microsoft/azure/storage/Permissions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/azure/storage/Permissions<",
        "Lcom/microsoft/azure/storage/blob/SharedAccessBlobPolicy;",
        ">;"
    }
.end annotation


# instance fields
.field public publicAccess:Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/Permissions;-><init>()V

    .line 2
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;->OFF:Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;->setPublicAccess(Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;)V

    return-void
.end method


# virtual methods
.method public getPublicAccess()Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;->publicAccess:Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

    return-object v0
.end method

.method public setPublicAccess(Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;->publicAccess:Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

    return-void
.end method
