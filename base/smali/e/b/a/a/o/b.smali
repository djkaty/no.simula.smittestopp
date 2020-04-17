.class public abstract Le/b/a/a/o/b;
.super Le/b/a/a/o/c;
.source "SourceFile"


# instance fields
.field public final E:Le/b/a/a/p/b;

.field public F:Z

.field public G:I

.field public H:I

.field public I:J

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:Le/b/a/a/q/d;

.field public O:Le/b/a/a/l;

.field public final P:Le/b/a/a/s/g;

.field public Q:[C

.field public R:Le/b/a/a/s/c;

.field public S:[B


# direct methods
.method public constructor <init>(Le/b/a/a/p/b;I)V
    .locals 6

    .line 1
    invoke-direct {p0, p2}, Le/b/a/a/o/c;-><init>(I)V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Le/b/a/a/o/b;->J:I

    .line 3
    iput v0, p0, Le/b/a/a/o/b;->L:I

    .line 4
    iput-object p1, p0, Le/b/a/a/o/b;->E:Le/b/a/a/p/b;

    .line 5
    new-instance v0, Le/b/a/a/s/g;

    iget-object p1, p1, Le/b/a/a/p/b;->d:Le/b/a/a/s/a;

    invoke-direct {v0, p1}, Le/b/a/a/s/g;-><init>(Le/b/a/a/s/a;)V

    .line 6
    iput-object v0, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    .line 7
    sget-object p1, Le/b/a/a/i$a;->STRICT_DUPLICATE_DETECTION:Le/b/a/a/i$a;

    invoke-virtual {p1, p2}, Le/b/a/a/i$a;->enabledIn(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    new-instance p1, Le/b/a/a/q/b;

    invoke-direct {p1, p0}, Le/b/a/a/q/b;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    .line 9
    new-instance p1, Le/b/a/a/q/d;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/b/a/a/q/d;-><init>(Le/b/a/a/q/d;Le/b/a/a/q/b;III)V

    .line 10
    iput-object p1, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    return-void
.end method

.method public static a([II)[I
    .locals 1

    if-nez p0, :cond_0

    .line 38
    new-array p0, p1, [I

    return-object p0

    .line 39
    :cond_0
    array-length v0, p0

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Le/b/a/a/a;CI)I
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x5c

    if-ne p2, v1, :cond_2

    .line 22
    invoke-virtual {p0}, Le/b/a/a/o/b;->k()C

    move-result p2

    const/16 v1, 0x20

    if-gt p2, v1, :cond_0

    if-nez p3, :cond_0

    const/4 p1, -0x1

    return p1

    .line 23
    :cond_0
    invoke-virtual {p1, p2}, Le/b/a/a/a;->a(C)I

    move-result v1

    if-ltz v1, :cond_1

    return v1

    .line 24
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Le/b/a/a/o/b;->a(Le/b/a/a/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    .line 25
    throw p1

    .line 26
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v0}, Le/b/a/a/o/b;->a(Le/b/a/a/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    .line 27
    throw p1
.end method

.method public final a(Le/b/a/a/a;II)I
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x5c

    if-ne p2, v1, :cond_2

    .line 16
    invoke-virtual {p0}, Le/b/a/a/o/b;->k()C

    move-result p2

    const/16 v1, 0x20

    if-gt p2, v1, :cond_0

    if-nez p3, :cond_0

    const/4 p1, -0x1

    return p1

    .line 17
    :cond_0
    invoke-virtual {p1, p2}, Le/b/a/a/a;->a(I)I

    move-result v1

    if-ltz v1, :cond_1

    return v1

    .line 18
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Le/b/a/a/o/b;->a(Le/b/a/a/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    .line 19
    throw p1

    .line 20
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v0}, Le/b/a/a/o/b;->a(Le/b/a/a/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    .line 21
    throw p1
.end method

.method public final a(Ljava/lang/String;D)Le/b/a/a/l;
    .locals 1

    .line 6
    iget-object p2, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    const/4 p3, 0x0

    .line 7
    iput-object p3, p2, Le/b/a/a/s/g;->b:[C

    const/4 v0, -0x1

    .line 8
    iput v0, p2, Le/b/a/a/s/g;->c:I

    const/4 v0, 0x0

    .line 9
    iput v0, p2, Le/b/a/a/s/g;->d:I

    .line 10
    iput-object p1, p2, Le/b/a/a/s/g;->j:Ljava/lang/String;

    .line 11
    iput-object p3, p2, Le/b/a/a/s/g;->k:[C

    .line 12
    iget-boolean p1, p2, Le/b/a/a/s/g;->f:Z

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p2}, Le/b/a/a/s/g;->a()V

    .line 14
    :cond_0
    iput v0, p2, Le/b/a/a/s/g;->i:I

    .line 15
    sget-object p1, Le/b/a/a/l;->VALUE_NUMBER_FLOAT:Le/b/a/a/l;

    return-object p1
.end method

.method public a(Le/b/a/a/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-gt p2, v2, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    add-int/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Illegal white space character (code 0x%s) as character #%d of 4-char base64 unit: can only used between units"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 29
    :cond_0
    iget-char v2, p1, Le/b/a/a/a;->C:C

    if-ne p2, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    const-string p2, "Unexpected padding character (\'"

    .line 30
    invoke-static {p2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 31
    iget-char p1, p1, Le/b/a/a/a;->C:C

    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\') as character #"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 33
    :cond_2
    invoke-static {p2}, Ljava/lang/Character;->isDefined(I)Z

    move-result p1

    const-string p3, ") in base64 content"

    if-eqz p1, :cond_4

    invoke-static {p2}, Ljava/lang/Character;->isISOControl(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "Illegal character \'"

    .line 34
    invoke-static {p1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    int-to-char v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\' (code 0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    :goto_0
    const-string p1, "Illegal character (code 0x"

    .line 35
    invoke-static {p1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-eqz p4, :cond_5

    const-string p2, ": "

    .line 36
    invoke-static {p1, p2, p4}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 37
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public a(IC)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    int-to-char p1, p1

    .line 2
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-virtual {v0}, Le/b/a/a/k;->e()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-virtual {p0}, Le/b/a/a/o/b;->n()Ljava/lang/Object;

    move-result-object v3

    .line 3
    new-instance p1, Le/b/a/a/g;

    iget v6, v0, Le/b/a/a/q/d;->g:I

    iget v7, v0, Le/b/a/a/q/d;->h:I

    const-wide/16 v4, -0x1

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Le/b/a/a/g;-><init>(Ljava/lang/Object;JII)V

    const/4 p2, 0x3

    aput-object p1, v1, p2

    const-string p1, "Unexpected close marker \'%s\': expected \'%c\' (for %s starting at %s)"

    .line 4
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Le/b/a/a/i;->a(Ljava/lang/String;)Le/b/a/a/h;

    move-result-object p1

    throw p1
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    sget-object v1, Le/b/a/a/l;->START_OBJECT:Le/b/a/a/l;

    if-eq v0, v1, :cond_0

    sget-object v1, Le/b/a/a/l;->START_ARRAY:Le/b/a/a/l;

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    .line 3
    iget-object v0, v0, Le/b/a/a/q/d;->c:Le/b/a/a/q/d;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Le/b/a/a/q/d;->f:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    .line 6
    iget-object v0, v0, Le/b/a/a/q/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/b/a/a/o/b;->F:Z

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iget v1, p0, Le/b/a/a/o/b;->H:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Le/b/a/a/o/b;->G:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Le/b/a/a/o/b;->F:Z

    .line 4
    :try_start_0
    invoke-virtual {p0}, Le/b/a/a/o/b;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0}, Le/b/a/a/o/b;->o()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Le/b/a/a/o/b;->o()V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public abstract j()V
.end method

.method public abstract k()C
.end method

.method public final l()I
    .locals 11

    .line 1
    iget-object v0, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    invoke-virtual {v0}, Le/b/a/a/k;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    invoke-virtual {v0}, Le/b/a/a/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Array"

    goto :goto_0

    :cond_0
    const-string v0, "Object"

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    .line 3
    iget-object v2, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    invoke-virtual {p0}, Le/b/a/a/o/b;->n()Ljava/lang/Object;

    move-result-object v4

    const/4 v9, 0x0

    if-eqz v2, :cond_1

    .line 4
    new-instance v10, Le/b/a/a/g;

    iget v7, v2, Le/b/a/a/q/d;->g:I

    iget v8, v2, Le/b/a/a/q/d;->h:I

    const-wide/16 v5, -0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v8}, Le/b/a/a/g;-><init>(Ljava/lang/Object;JII)V

    aput-object v10, v1, v0

    const-string v0, ": expected close marker for %s (start marker at %s)"

    .line 5
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v9}, Le/b/a/a/o/c;->a(Ljava/lang/String;Le/b/a/a/l;)V

    throw v9

    .line 6
    :cond_1
    throw v9

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public m()Le/b/a/a/s/c;
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/a/a/o/b;->R:Le/b/a/a/s/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/b/a/a/s/c;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, v1}, Le/b/a/a/s/c;-><init>(Le/b/a/a/s/a;)V

    .line 4
    iput-object v0, p0, Le/b/a/a/o/b;->R:Le/b/a/a/s/c;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Le/b/a/a/s/c;->b()V

    .line 6
    :goto_0
    iget-object v0, p0, Le/b/a/a/o/b;->R:Le/b/a/a/s/c;

    return-object v0
.end method

.method public n()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Le/b/a/a/i$a;->INCLUDE_SOURCE_IN_LOCATION:Le/b/a/a/i$a;

    iget v1, p0, Le/b/a/a/i;->x:I

    invoke-virtual {v0, v1}, Le/b/a/a/i$a;->enabledIn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/b/a/a/o/b;->E:Le/b/a/a/p/b;

    .line 3
    iget-object v0, v0, Le/b/a/a/p/b;->a:Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    .line 2
    iget-object v1, v0, Le/b/a/a/s/g;->a:Le/b/a/a/s/a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Le/b/a/a/s/g;->i()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v0, Le/b/a/a/s/g;->h:[C

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Le/b/a/a/s/g;->i()V

    .line 6
    iget-object v1, v0, Le/b/a/a/s/g;->h:[C

    .line 7
    iput-object v2, v0, Le/b/a/a/s/g;->h:[C

    .line 8
    iget-object v0, v0, Le/b/a/a/s/g;->a:Le/b/a/a/s/a;

    const/4 v3, 0x2

    .line 9
    iget-object v0, v0, Le/b/a/a/s/a;->b:[[C

    aput-object v1, v0, v3

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Le/b/a/a/o/b;->Q:[C

    if-eqz v0, :cond_3

    .line 11
    iput-object v2, p0, Le/b/a/a/o/b;->Q:[C

    .line 12
    iget-object v1, p0, Le/b/a/a/o/b;->E:Le/b/a/a/p/b;

    if-eqz v1, :cond_2

    .line 13
    iget-object v3, v1, Le/b/a/a/p/b;->i:[C

    invoke-virtual {v1, v0, v3}, Le/b/a/a/p/b;->a([C[C)V

    .line 14
    iput-object v2, v1, Le/b/a/a/p/b;->i:[C

    .line 15
    iget-object v1, v1, Le/b/a/a/p/b;->d:Le/b/a/a/s/a;

    const/4 v2, 0x3

    .line 16
    iget-object v1, v1, Le/b/a/a/s/a;->b:[[C

    aput-object v0, v1, v2

    goto :goto_1

    .line 17
    :cond_2
    throw v2

    :cond_3
    :goto_1
    return-void
.end method
