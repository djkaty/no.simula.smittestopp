.class public Lcom/microsoft/azure/storage/table/DynamicTableEntity;
.super Lcom/microsoft/azure/storage/table/TableServiceEntity;
.source "SourceFile"


# instance fields
.field public properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/EntityProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/table/TableServiceEntity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/DynamicTableEntity;->properties:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/table/TableServiceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/DynamicTableEntity;->properties:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/EntityProperty;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/table/TableServiceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/DynamicTableEntity;->properties:Ljava/util/HashMap;

    .line 11
    iput-object p3, p0, Lcom/microsoft/azure/storage/table/TableServiceEntity;->etag:Ljava/lang/String;

    .line 12
    invoke-virtual {p0, p4}, Lcom/microsoft/azure/storage/table/DynamicTableEntity;->setProperties(Ljava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/EntityProperty;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/microsoft/azure/storage/table/DynamicTableEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/EntityProperty;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/microsoft/azure/storage/table/TableServiceEntity;-><init>()V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/DynamicTableEntity;->properties:Ljava/util/HashMap;

    .line 7
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/DynamicTableEntity;->setProperties(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public getProperties()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/EntityProperty;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/DynamicTableEntity;->properties:Ljava/util/HashMap;

    return-object v0
.end method

.method public readEntity(Ljava/util/HashMap;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/EntityProperty;",
            ">;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/DynamicTableEntity;->setProperties(Ljava/util/HashMap;)V

    return-void
.end method

.method public setProperties(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/EntityProperty;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/DynamicTableEntity;->properties:Ljava/util/HashMap;

    return-void
.end method

.method public writeEntity(Lcom/microsoft/azure/storage/OperationContext;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/EntityProperty;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/DynamicTableEntity;->getProperties()Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method
