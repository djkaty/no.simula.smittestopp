.class public final Lcom/microsoft/azure/storage/CloudStorageAccount$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/CloudStorageAccount;->matchesOne([Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$filters:[Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;


# direct methods
.method public constructor <init>([Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/CloudStorageAccount$6;->val$filters:[Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/CloudStorageAccount$6;->val$filters:[Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v5, v6}, Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;->apply(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_1

    if-nez v4, :cond_0

    move-object v4, v5

    goto :goto_1

    :cond_0
    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v4
.end method
