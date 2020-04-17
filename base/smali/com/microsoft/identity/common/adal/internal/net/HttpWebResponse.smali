.class public Lcom/microsoft/identity/common/adal/internal/net/HttpWebResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mResponseBody:Ljava/lang/String;

.field public final mResponseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mStatusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/microsoft/identity/common/adal/internal/net/HttpWebResponse;->mStatusCode:I

    .line 3
    iput-object p2, p0, Lcom/microsoft/identity/common/adal/internal/net/HttpWebResponse;->mResponseBody:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/microsoft/identity/common/adal/internal/net/HttpWebResponse;->mResponseHeaders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/net/HttpWebResponse;->mResponseBody:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/net/HttpWebResponse;->mResponseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/adal/internal/net/HttpWebResponse;->mStatusCode:I

    return v0
.end method
