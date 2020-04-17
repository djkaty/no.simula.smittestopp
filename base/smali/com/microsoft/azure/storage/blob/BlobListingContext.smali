.class public final Lcom/microsoft/azure/storage/blob/BlobListingContext;
.super Lcom/microsoft/azure/storage/core/ListingContext;
.source "SourceFile"


# instance fields
.field public delimiter:Ljava/lang/String;

.field public listingDetails:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/blob/BlobListingDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/blob/BlobListingDetails;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/core/ListingContext;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2
    invoke-virtual {p0, p3}, Lcom/microsoft/azure/storage/blob/BlobListingContext;->setDelimiter(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p4}, Lcom/microsoft/azure/storage/blob/BlobListingContext;->setListingDetails(Ljava/util/EnumSet;)V

    return-void
.end method


# virtual methods
.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobListingContext;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getListingDetails()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/blob/BlobListingDetails;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobListingContext;->listingDetails:Ljava/util/EnumSet;

    return-object v0
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListingContext;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public setListingDetails(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/blob/BlobListingDetails;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListingContext;->listingDetails:Ljava/util/EnumSet;

    return-void
.end method
