.class public Lcom/microsoft/azure/sdk/iot/device/Template;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public templateTestPrivate:Ljava/lang/Object;

.field public templateTestPublic:Ljava/lang/Object;

.field public unionSet:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/Template;->templateTestPrivate:Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/Template;->templateTestPublic:Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tag cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addToSet(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Template;->unionSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Please open before use"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "New set cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Template;->unionSet:Ljava/util/Set;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Template;->unionSet:Ljava/util/Set;

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Template;->templateTestPublic:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Template;->templateTestPrivate:Ljava/lang/Object;

    return-void
.end method

.method public getTemplateTestPrivate()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Template;->templateTestPrivate:Ljava/lang/Object;

    return-object v0
.end method

.method public getUnionSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Template;->unionSet:Ljava/util/Set;

    return-object v0
.end method

.method public open()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Template;->unionSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Template;->unionSet:Ljava/util/Set;

    :cond_0
    return-void
.end method
