.class public Lcom/microsoft/azure/storage/table/TableQuery;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/storage/table/TableQuery$QueryComparisons;,
        Lcom/microsoft/azure/storage/table/TableQuery$Operators;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/microsoft/azure/storage/table/TableEntity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public clazzType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public columns:[Ljava/lang/String;

.field public filterString:Ljava/lang/String;

.field public sourceTableName:Ljava/lang/String;

.field public takeCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/storage/table/TableQuery;->clazzType:Ljava/lang/Class;

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/storage/table/TableQuery;->sourceTableName:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/storage/table/TableQuery;->columns:[Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/storage/table/TableQuery;->filterString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/microsoft/azure/storage/table/TableQuery;->clazzType:Ljava/lang/Class;

    .line 8
    iput-object v0, p0, Lcom/microsoft/azure/storage/table/TableQuery;->sourceTableName:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/microsoft/azure/storage/table/TableQuery;->columns:[Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/microsoft/azure/storage/table/TableQuery;->filterString:Ljava/lang/String;

    .line 11
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/TableQuery;->setClazzType(Ljava/lang/Class;)V

    return-void
.end method

.method public static combineFilters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const-string p0, "(%s) %s (%s)"

    .line 1
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/lang/Class;)Lcom/microsoft/azure/storage/table/TableQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/microsoft/azure/storage/table/TableEntity;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/microsoft/azure/storage/table/TableQuery<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/table/TableQuery;

    invoke-direct {v0, p0}, Lcom/microsoft/azure/storage/table/TableQuery;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static generateFilterCondition(Ljava/lang/String;Ljava/lang/String;D)Ljava/lang/String;
    .locals 0

    .line 18
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/microsoft/azure/storage/table/EdmType;->DOUBLE:Lcom/microsoft/azure/storage/table/EdmType;

    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/table/TableQuery;->generateFilterCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/table/EdmType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateFilterCondition(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->INT32:Lcom/microsoft/azure/storage/table/EdmType;

    invoke-static {p0, p1, p2, v0}, Lcom/microsoft/azure/storage/table/TableQuery;->generateFilterCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/table/EdmType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateFilterCondition(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 0

    .line 20
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/microsoft/azure/storage/table/EdmType;->INT64:Lcom/microsoft/azure/storage/table/EdmType;

    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/table/TableQuery;->generateFilterCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/table/EdmType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateFilterCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->STRING:Lcom/microsoft/azure/storage/table/EdmType;

    invoke-static {p0, p1, p2, v0}, Lcom/microsoft/azure/storage/table/TableQuery;->generateFilterCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/table/EdmType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateFilterCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/table/EdmType;)Ljava/lang/String;
    .locals 4

    .line 22
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->BOOLEAN:Lcom/microsoft/azure/storage/table/EdmType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p3, v0, :cond_5

    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->DOUBLE:Lcom/microsoft/azure/storage/table/EdmType;

    if-eq p3, v0, :cond_5

    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->INT32:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->INT64:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne p3, v0, :cond_1

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v2

    const-string p2, "%sL"

    .line 24
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 25
    :cond_1
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->DATE_TIME:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne p3, v0, :cond_2

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v2

    const-string p2, "datetime\'%s\'"

    .line 26
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 27
    :cond_2
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->GUID:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne p3, v0, :cond_3

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v2

    const-string p2, "guid\'%s\'"

    .line 28
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 29
    :cond_3
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->BINARY:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne p3, v0, :cond_4

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v2

    const-string p2, "X\'%s\'"

    .line 30
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_4
    new-array p3, v1, [Ljava/lang/Object;

    const-string v0, "\'"

    const-string v3, "\'\'"

    .line 31
    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v2

    const-string p2, "\'%s\'"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_5
    :goto_0
    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p0, p3, v2

    aput-object p1, p3, v1

    const/4 p0, 0x2

    aput-object p2, p3, p0

    const-string p0, "%s %s %s"

    .line 32
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateFilterCondition(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 16
    invoke-static {p2}, Lcom/microsoft/azure/storage/core/Utility;->getJavaISO8601Time(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->DATE_TIME:Lcom/microsoft/azure/storage/table/EdmType;

    .line 17
    invoke-static {p0, p1, p2, v0}, Lcom/microsoft/azure/storage/table/TableQuery;->generateFilterCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/table/EdmType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateFilterCondition(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)Ljava/lang/String;
    .locals 1

    .line 33
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->GUID:Lcom/microsoft/azure/storage/table/EdmType;

    invoke-static {p0, p1, p2, v0}, Lcom/microsoft/azure/storage/table/TableQuery;->generateFilterCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/table/EdmType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateFilterCondition(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    const-string p2, "true"

    goto :goto_0

    :cond_0
    const-string p2, "false"

    .line 1
    :goto_0
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->BOOLEAN:Lcom/microsoft/azure/storage/table/EdmType;

    invoke-static {p0, p1, p2, v0}, Lcom/microsoft/azure/storage/table/TableQuery;->generateFilterCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/table/EdmType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateFilterCondition(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 7

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 4
    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-byte v5, p2, v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 5
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v6, v3

    const-string v5, "%02x"

    invoke-virtual {v1, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/util/Formatter;->flush()V

    .line 7
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->BINARY:Lcom/microsoft/azure/storage/table/EdmType;

    invoke-static {p0, p1, p2, v0}, Lcom/microsoft/azure/storage/table/TableQuery;->generateFilterCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/table/EdmType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateFilterCondition(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Byte;)Ljava/lang/String;
    .locals 7

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 11
    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p2, v4

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 12
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v6, v3

    const-string v5, "%02x"

    invoke-virtual {v1, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1}, Ljava/util/Formatter;->flush()V

    .line 14
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->BINARY:Lcom/microsoft/azure/storage/table/EdmType;

    invoke-static {p0, p1, p2, v0}, Lcom/microsoft/azure/storage/table/TableQuery;->generateFilterCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/table/EdmType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public generateQueryBuilder()Lcom/microsoft/azure/storage/core/UriQueryBuilder;
    .locals 12

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/microsoft/azure/storage/table/TableQuery;->filterString:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/storage/table/TableQuery;->filterString:Ljava/lang/String;

    const-string v2, "$filter"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/microsoft/azure/storage/table/TableQuery;->takeCount:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "$top"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/microsoft/azure/storage/table/TableQuery;->columns:[Ljava/lang/String;

    if-eqz v1, :cond_a

    array-length v1, v1

    if-lez v1, :cond_a

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 8
    :goto_0
    iget-object v6, p0, Lcom/microsoft/azure/storage/table/TableQuery;->columns:[Ljava/lang/String;

    array-length v7, v6

    const-string v8, "Timestamp"

    const-string v9, "PartitionKey"

    const-string v10, "RowKey"

    const-string v11, ","

    if-ge v2, v7, :cond_6

    .line 9
    aget-object v6, v6, v2

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    .line 10
    :cond_2
    iget-object v6, p0, Lcom/microsoft/azure/storage/table/TableQuery;->columns:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    .line 11
    :cond_3
    iget-object v6, p0, Lcom/microsoft/azure/storage/table/TableQuery;->columns:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x1

    .line 12
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/microsoft/azure/storage/table/TableQuery;->columns:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v6, p0, Lcom/microsoft/azure/storage/table/TableQuery;->columns:[Ljava/lang/String;

    array-length v6, v6

    sub-int/2addr v6, v7

    if-ge v2, v6, :cond_5

    .line 14
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    if-nez v3, :cond_7

    .line 15
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    if-nez v4, :cond_8

    .line 17
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    if-nez v5, :cond_9

    .line 19
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "$select"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-object v0
.end method

.method public getClazzType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableQuery;->clazzType:Ljava/lang/Class;

    return-object v0
.end method

.method public getColumns()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableQuery;->columns:[Ljava/lang/String;

    return-object v0
.end method

.method public getFilterString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableQuery;->filterString:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceTableName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableQuery;->sourceTableName:Ljava/lang/String;

    return-object v0
.end method

.method public getTakeCount()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableQuery;->takeCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public select([Ljava/lang/String;)Lcom/microsoft/azure/storage/table/TableQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/azure/storage/table/TableQuery<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/TableQuery;->setColumns([Ljava/lang/String;)V

    return-object p0
.end method

.method public setClazzType(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "class type"

    .line 1
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->checkNullaryCtor(Ljava/lang/Class;)V

    .line 3
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableQuery;->clazzType:Ljava/lang/Class;

    return-void
.end method

.method public setColumns([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableQuery;->columns:[Ljava/lang/String;

    return-void
.end method

.method public setFilterString(Ljava/lang/String;)V
    .locals 1

    const-string v0, "filterString"

    .line 1
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableQuery;->filterString:Ljava/lang/String;

    return-void
.end method

.method public setSourceTableName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tableName"

    .line 1
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableQuery;->sourceTableName:Ljava/lang/String;

    return-void
.end method

.method public setTakeCount(Ljava/lang/Integer;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Take count must be positive and greater than 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableQuery;->takeCount:Ljava/lang/Integer;

    return-void
.end method

.method public take(Ljava/lang/Integer;)Lcom/microsoft/azure/storage/table/TableQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/microsoft/azure/storage/table/TableQuery<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/TableQuery;->setTakeCount(Ljava/lang/Integer;)V

    :cond_0
    return-object p0
.end method

.method public where(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/TableQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/azure/storage/table/TableQuery<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/TableQuery;->setFilterString(Ljava/lang/String;)V

    return-object p0
.end method
