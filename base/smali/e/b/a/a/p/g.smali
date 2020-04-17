.class public Le/b/a/a/p/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/b/a/a/n;
.implements Ljava/io/Serializable;


# instance fields
.field public final x:Ljava/lang/String;

.field public y:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Le/b/a/a/p/g;->x:Ljava/lang/String;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Null String illegal for SerializedString"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()[B
    .locals 14

    .line 1
    iget-object v0, p0, Le/b/a/a/p/g;->y:[B

    if-nez v0, :cond_13

    .line 2
    iget-object v0, p0, Le/b/a/a/p/g;->x:Ljava/lang/String;

    .line 3
    sget-object v1, Le/b/a/a/s/b;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/a/p/d;

    :goto_0
    if-nez v1, :cond_1

    .line 5
    new-instance v1, Le/b/a/a/p/d;

    invoke-direct {v1}, Le/b/a/a/p/d;-><init>()V

    .line 6
    sget-object v3, Le/b/a/a/s/b;->b:Ljava/lang/ThreadLocal;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 7
    :cond_1
    iget-object v3, v1, Le/b/a/a/p/d;->a:Le/b/a/a/s/c;

    if-nez v3, :cond_2

    .line 8
    new-instance v3, Le/b/a/a/s/c;

    invoke-direct {v3, v2}, Le/b/a/a/s/c;-><init>(Le/b/a/a/s/a;)V

    iput-object v3, v1, Le/b/a/a/p/d;->a:Le/b/a/a/s/c;

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 10
    invoke-virtual {v3}, Le/b/a/a/s/c;->b()V

    .line 11
    iget-object v5, v3, Le/b/a/a/s/c;->z:[B

    .line 12
    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v4, :cond_12

    add-int/lit8 v9, v7, 0x1

    .line 13
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_2
    const/16 v10, 0x7f

    if-gt v7, v10, :cond_5

    if-lt v8, v6, :cond_3

    .line 14
    invoke-virtual {v3}, Le/b/a/a/s/c;->a()V

    .line 15
    iget-object v5, v3, Le/b/a/a/s/c;->z:[B

    .line 16
    array-length v6, v5

    const/4 v8, 0x0

    :cond_3
    add-int/lit8 v10, v8, 0x1

    int-to-byte v7, v7

    .line 17
    aput-byte v7, v5, v8

    if-lt v9, v4, :cond_4

    move v8, v10

    goto/16 :goto_6

    :cond_4
    add-int/lit8 v7, v9, 0x1

    .line 18
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v9, v7

    move v7, v8

    move v8, v10

    goto :goto_2

    :cond_5
    if-lt v8, v6, :cond_6

    .line 19
    invoke-virtual {v3}, Le/b/a/a/s/c;->a()V

    .line 20
    iget-object v5, v3, Le/b/a/a/s/c;->z:[B

    .line 21
    array-length v6, v5

    const/4 v8, 0x0

    :cond_6
    const/16 v10, 0x800

    if-ge v7, v10, :cond_7

    add-int/lit8 v10, v8, 0x1

    shr-int/lit8 v11, v7, 0x6

    or-int/lit16 v11, v11, 0xc0

    int-to-byte v11, v11

    .line 22
    aput-byte v11, v5, v8

    goto/16 :goto_4

    :cond_7
    const v10, 0xd800

    if-lt v7, v10, :cond_f

    const v11, 0xdfff

    if-le v7, v11, :cond_8

    goto/16 :goto_3

    :cond_8
    const v12, 0xdbff

    if-gt v7, v12, :cond_e

    if-ge v9, v4, :cond_d

    add-int/lit8 v12, v9, 0x1

    .line 23
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const v13, 0xdc00

    if-lt v9, v13, :cond_c

    if-gt v9, v11, :cond_c

    const/high16 v11, 0x10000

    sub-int/2addr v7, v10

    shl-int/lit8 v7, v7, 0xa

    add-int/2addr v7, v11

    sub-int/2addr v9, v13

    add-int/2addr v7, v9

    const v9, 0x10ffff

    if-gt v7, v9, :cond_b

    add-int/lit8 v9, v8, 0x1

    shr-int/lit8 v10, v7, 0x12

    or-int/lit16 v10, v10, 0xf0

    int-to-byte v10, v10

    .line 24
    aput-byte v10, v5, v8

    if-lt v9, v6, :cond_9

    .line 25
    invoke-virtual {v3}, Le/b/a/a/s/c;->a()V

    .line 26
    iget-object v5, v3, Le/b/a/a/s/c;->z:[B

    .line 27
    array-length v6, v5

    const/4 v9, 0x0

    :cond_9
    add-int/lit8 v8, v9, 0x1

    shr-int/lit8 v10, v7, 0xc

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    .line 28
    aput-byte v10, v5, v9

    if-lt v8, v6, :cond_a

    .line 29
    invoke-virtual {v3}, Le/b/a/a/s/c;->a()V

    .line 30
    iget-object v5, v3, Le/b/a/a/s/c;->z:[B

    .line 31
    array-length v6, v5

    const/4 v8, 0x0

    :cond_a
    add-int/lit8 v9, v8, 0x1

    shr-int/lit8 v10, v7, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    .line 32
    aput-byte v10, v5, v8

    move v8, v7

    move v7, v12

    goto :goto_5

    .line 33
    :cond_b
    invoke-static {v7}, Le/b/a/a/p/d;->a(I)V

    throw v2

    .line 34
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Broken surrogate pair: first char 0x"

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", second 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; illegal combination"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_d
    invoke-static {v7}, Le/b/a/a/p/d;->a(I)V

    throw v2

    .line 36
    :cond_e
    invoke-static {v7}, Le/b/a/a/p/d;->a(I)V

    throw v2

    :cond_f
    :goto_3
    add-int/lit8 v10, v8, 0x1

    shr-int/lit8 v11, v7, 0xc

    or-int/lit16 v11, v11, 0xe0

    int-to-byte v11, v11

    .line 37
    aput-byte v11, v5, v8

    if-lt v10, v6, :cond_10

    .line 38
    invoke-virtual {v3}, Le/b/a/a/s/c;->a()V

    .line 39
    iget-object v5, v3, Le/b/a/a/s/c;->z:[B

    .line 40
    array-length v6, v5

    const/4 v10, 0x0

    :cond_10
    add-int/lit8 v8, v10, 0x1

    shr-int/lit8 v11, v7, 0x6

    and-int/lit8 v11, v11, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    .line 41
    aput-byte v11, v5, v10

    move v10, v8

    :goto_4
    move v8, v7

    move v7, v9

    move v9, v10

    :goto_5
    if-lt v9, v6, :cond_11

    .line 42
    invoke-virtual {v3}, Le/b/a/a/s/c;->a()V

    .line 43
    iget-object v5, v3, Le/b/a/a/s/c;->z:[B

    .line 44
    array-length v6, v5

    const/4 v9, 0x0

    :cond_11
    add-int/lit8 v10, v9, 0x1

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 45
    aput-byte v8, v5, v9

    move v8, v10

    goto/16 :goto_1

    .line 46
    :cond_12
    :goto_6
    iget-object v0, v1, Le/b/a/a/p/d;->a:Le/b/a/a/s/c;

    .line 47
    iput v8, v0, Le/b/a/a/s/c;->A:I

    .line 48
    invoke-virtual {v0}, Le/b/a/a/s/c;->c()[B

    move-result-object v0

    .line 49
    iput-object v0, p0, Le/b/a/a/p/g;->y:[B

    :cond_13
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Le/b/a/a/p/g;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Le/b/a/a/p/g;

    .line 3
    iget-object v0, p0, Le/b/a/a/p/g;->x:Ljava/lang/String;

    iget-object p1, p1, Le/b/a/a/p/g;->x:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/a/p/g;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/a/p/g;->x:Ljava/lang/String;

    return-object v0
.end method
