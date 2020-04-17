.class public final Lcom/microsoft/azure/storage/core/JsonUtilities;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertIsEndArrayJsonToken(Le/b/a/a/i;)V
    .locals 2

    .line 1
    move-object v0, p0

    check-cast v0, Le/b/a/a/o/c;

    .line 2
    iget-object v0, v0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    .line 3
    sget-object v1, Le/b/a/a/l;->END_ARRAY:Le/b/a/a/l;

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Le/b/a/a/h;

    invoke-virtual {p0}, Le/b/a/a/i;->b()Le/b/a/a/g;

    move-result-object p0

    const-string v1, "Expected the end of a JSON Array."

    invoke-direct {v0, v1, p0}, Le/b/a/a/h;-><init>(Ljava/lang/String;Le/b/a/a/g;)V

    throw v0
.end method

.method public static assertIsEndObjectJsonToken(Le/b/a/a/i;)V
    .locals 2

    .line 1
    move-object v0, p0

    check-cast v0, Le/b/a/a/o/c;

    .line 2
    iget-object v0, v0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    .line 3
    sget-object v1, Le/b/a/a/l;->END_OBJECT:Le/b/a/a/l;

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Le/b/a/a/h;

    invoke-virtual {p0}, Le/b/a/a/i;->b()Le/b/a/a/g;

    move-result-object p0

    const-string v1, "Expected the end of a JSON Object."

    invoke-direct {v0, v1, p0}, Le/b/a/a/h;-><init>(Ljava/lang/String;Le/b/a/a/g;)V

    throw v0
.end method

.method public static assertIsExpectedFieldName(Le/b/a/a/i;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Le/b/a/a/i;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "Unexpected field name. Expected: \'%s\'. Actual: \'%s\'."

    if-nez p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v5, Le/b/a/a/h;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object v0, v3, v1

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Le/b/a/a/i;->b()Le/b/a/a/g;

    move-result-object p0

    invoke-direct {v5, p1, p0}, Le/b/a/a/h;-><init>(Ljava/lang/String;Le/b/a/a/g;)V

    throw v5

    .line 4
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_0
    return-void

    .line 5
    :cond_2
    new-instance v5, Le/b/a/a/h;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object v0, v3, v1

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Le/b/a/a/i;->b()Le/b/a/a/g;

    move-result-object p0

    invoke-direct {v5, p1, p0}, Le/b/a/a/h;-><init>(Ljava/lang/String;Le/b/a/a/g;)V

    throw v5
.end method

.method public static assertIsFieldNameJsonToken(Le/b/a/a/i;)V
    .locals 2

    .line 1
    move-object v0, p0

    check-cast v0, Le/b/a/a/o/c;

    .line 2
    iget-object v0, v0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    .line 3
    sget-object v1, Le/b/a/a/l;->FIELD_NAME:Le/b/a/a/l;

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Le/b/a/a/h;

    invoke-virtual {p0}, Le/b/a/a/i;->b()Le/b/a/a/g;

    move-result-object p0

    const-string v1, "Expected a field name."

    invoke-direct {v0, v1, p0}, Le/b/a/a/h;-><init>(Ljava/lang/String;Le/b/a/a/g;)V

    throw v0
.end method

.method public static assertIsStartArrayJsonToken(Le/b/a/a/i;)V
    .locals 2

    .line 1
    move-object v0, p0

    check-cast v0, Le/b/a/a/o/c;

    .line 2
    iget-object v0, v0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    .line 3
    sget-object v1, Le/b/a/a/l;->START_ARRAY:Le/b/a/a/l;

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Le/b/a/a/h;

    invoke-virtual {p0}, Le/b/a/a/i;->b()Le/b/a/a/g;

    move-result-object p0

    const-string v1, "Expected the start of a JSON Array."

    invoke-direct {v0, v1, p0}, Le/b/a/a/h;-><init>(Ljava/lang/String;Le/b/a/a/g;)V

    throw v0
.end method

.method public static assertIsStartObjectJsonToken(Le/b/a/a/i;)V
    .locals 2

    .line 1
    move-object v0, p0

    check-cast v0, Le/b/a/a/o/c;

    .line 2
    iget-object v0, v0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    .line 3
    sget-object v1, Le/b/a/a/l;->START_OBJECT:Le/b/a/a/l;

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Le/b/a/a/h;

    invoke-virtual {p0}, Le/b/a/a/i;->b()Le/b/a/a/g;

    move-result-object p0

    const-string v1, "Expected the start of a JSON Object."

    invoke-direct {v0, v1, p0}, Le/b/a/a/h;-><init>(Ljava/lang/String;Le/b/a/a/g;)V

    throw v0
.end method
