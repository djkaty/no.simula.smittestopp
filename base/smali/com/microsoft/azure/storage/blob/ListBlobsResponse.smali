.class public final Lcom/microsoft/azure/storage/blob/ListBlobsResponse;
.super Lcom/microsoft/azure/storage/core/ListResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/azure/storage/core/ListResponse<",
        "Lcom/microsoft/azure/storage/blob/ListBlobItem;",
        ">;"
    }
.end annotation


# instance fields
.field public delimiter:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/core/ListResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/ListBlobsResponse;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/ListBlobsResponse;->delimiter:Ljava/lang/String;

    return-void
.end method
