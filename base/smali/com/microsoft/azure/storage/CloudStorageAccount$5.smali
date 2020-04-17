.class public final Lcom/microsoft/azure/storage/CloudStorageAccount$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/CloudStorageAccount;->matchesAll([Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;
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
    iput-object p1, p0, Lcom/microsoft/azure/storage/CloudStorageAccount$5;->val$filters:[Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
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
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2
    iget-object p1, p0, Lcom/microsoft/azure/storage/CloudStorageAccount$5;->val$filters:[Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {v3, v0}, Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;->apply(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method
