.class public Lk/b/a/l2/v;
.super Lk/b/a/n;
.source "SourceFile"

# interfaces
.implements Lk/b/a/d;


# instance fields
.field public x:Lk/b/a/t;


# direct methods
.method public constructor <init>(Lk/b/a/t;)V
    .locals 1

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    instance-of v0, p1, Lk/b/a/d0;

    if-nez v0, :cond_1

    instance-of v0, p1, Lk/b/a/j;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown object passed to Time"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lk/b/a/l2/v;->x:Lk/b/a/t;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lk/b/a/l2/v;
    .locals 2

    if-eqz p0, :cond_3

    instance-of v0, p0, Lk/b/a/l2/v;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lk/b/a/d0;

    if-eqz v0, :cond_1

    new-instance v0, Lk/b/a/l2/v;

    check-cast p0, Lk/b/a/d0;

    invoke-direct {v0, p0}, Lk/b/a/l2/v;-><init>(Lk/b/a/t;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lk/b/a/j;

    if-eqz v0, :cond_2

    new-instance v0, Lk/b/a/l2/v;

    check-cast p0, Lk/b/a/j;

    invoke-direct {v0, p0}, Lk/b/a/l2/v;-><init>(Lk/b/a/t;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v1}, Le/a/a/a/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    check-cast p0, Lk/b/a/l2/v;

    return-object p0
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 1

    iget-object v0, p0, Lk/b/a/l2/v;->x:Lk/b/a/t;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 1
    iget-object v0, p0, Lk/b/a/l2/v;->x:Lk/b/a/t;

    instance-of v1, v0, Lk/b/a/d0;

    const-string v2, ":"

    const-string v3, "GMT+00:00"

    const-string v4, "GMT"

    const/16 v5, 0x2d

    const/16 v6, 0x2b

    const/4 v7, 0x0

    if-eqz v1, :cond_6

    check-cast v0, Lk/b/a/d0;

    .line 2
    iget-object v0, v0, Lk/b/a/d0;->x:[B

    invoke-static {v0}, Lk/b/j/f;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v8, 0xc

    const/16 v9, 0xa

    if-gez v1, :cond_1

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "00GMT+00:00"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    if-ne v1, v3, :cond_3

    const-string v3, "00"

    invoke-static {v0, v3}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const/16 v3, 0xf

    if-ne v1, v9, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "00GMT"

    invoke-static {v0, v7, v9, v1, v4}, Le/a/a/a/a;->a(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)V

    const/16 v4, 0xd

    invoke-static {v0, v9, v4, v1, v2}, Le/a/a/a/a;->a(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v7, v8, v1, v4}, Le/a/a/a/a;->a(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-static {v0, v8, v3, v1, v2}, Le/a/a/a/a;->a(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)V

    const/16 v2, 0x11

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x35

    if-ge v1, v2, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "20"

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "19"

    :goto_1
    invoke-static {v1, v2, v0}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 4
    :cond_6
    check-cast v0, Lk/b/a/j;

    .line 5
    iget-object v1, v0, Lk/b/a/j;->x:[B

    invoke-static {v1}, Lk/b/j/f;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0x5a

    if-ne v8, v10, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v5, :cond_8

    if-ne v8, v6, :cond_9

    :cond_8
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v3, v3, -0x3

    if-ne v8, v3, :cond_9

    move-object v0, v1

    goto/16 :goto_9

    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v5, :cond_11

    if-ne v8, v6, :cond_a

    goto/16 :goto_6

    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v5, :cond_10

    if-ne v8, v6, :cond_b

    goto/16 :goto_5

    :cond_b
    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v6

    const-string v7, "+"

    if-gez v6, :cond_c

    neg-int v6, v6

    const-string v8, "-"

    goto :goto_2

    :cond_c
    move-object v8, v7

    :goto_2
    const v10, 0x36ee80

    div-int v10, v6, v10

    mul-int/lit8 v11, v10, 0x3c

    mul-int/lit8 v11, v11, 0x3c

    mul-int/lit16 v11, v11, 0x3e8

    sub-int/2addr v6, v11

    const v11, 0xea60

    div-int/2addr v6, v11

    :try_start_0
    invoke-virtual {v5}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-virtual {v0}, Lk/b/a/j;->k()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v0, v1}, Lk/b/a/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_d
    invoke-virtual {v0}, Lk/b/a/j;->j()Ljava/text/SimpleDateFormat;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Lk/b/a/j;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Lk/b/a/j;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_e

    goto :goto_3

    :cond_e
    const/4 v9, -0x1

    :goto_3
    add-int/2addr v10, v9

    goto :goto_4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    :cond_f
    :goto_4
    invoke-static {v4, v8}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v10}, Lk/b/a/j;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Lk/b/a/j;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_10
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v7, v3, v0, v4}, Le/a/a/a/a;->a(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":00"

    goto :goto_7

    :cond_11
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, 0x3

    invoke-static {v1, v3, v4, v0, v2}, Le/a/a/a/a;->a(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0
.end method
