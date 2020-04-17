.class public Lcom/microsoft/azure/storage/core/ListingContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public marker:Ljava/lang/String;

.field public maxResults:Ljava/lang/Integer;

.field public prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/ListingContext;->setPrefix(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/microsoft/azure/storage/core/ListingContext;->setMaxResults(Ljava/lang/Integer;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/ListingContext;->setMarker(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getMarker()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/ListingContext;->marker:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxResults()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/ListingContext;->maxResults:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/ListingContext;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public final setMarker(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/ListingContext;->marker:Ljava/lang/String;

    return-void
.end method

.method public final setMaxResults(Ljava/lang/Integer;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1

    const-string v4, "maxResults"

    invoke-static {v4, v0, v1, v2, v3}, Lcom/microsoft/azure/storage/core/Utility;->assertGreaterThanOrEqual(Ljava/lang/String;JJ)V

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/ListingContext;->maxResults:Ljava/lang/Integer;

    return-void
.end method

.method public final setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/ListingContext;->prefix:Ljava/lang/String;

    return-void
.end method
