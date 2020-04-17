.class public final Le/b/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final A:Ljava/lang/String;

.field public final transient B:Z

.field public final transient C:C

.field public final transient D:I

.field public final transient x:[I

.field public final transient y:[C

.field public final transient z:[B


# direct methods
.method public constructor <init>(Le/b/a/a/a;Ljava/lang/String;ZCI)V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [I

    .line 18
    iput-object v0, p0, Le/b/a/a/a;->x:[I

    const/16 v0, 0x40

    new-array v1, v0, [C

    .line 19
    iput-object v1, p0, Le/b/a/a/a;->y:[C

    new-array v0, v0, [B

    .line 20
    iput-object v0, p0, Le/b/a/a/a;->z:[B

    .line 21
    iput-object p2, p0, Le/b/a/a/a;->A:Ljava/lang/String;

    .line 22
    iget-object p2, p1, Le/b/a/a/a;->z:[B

    .line 23
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    iget-object p2, p1, Le/b/a/a/a;->y:[C

    .line 25
    iget-object v0, p0, Le/b/a/a/a;->y:[C

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    iget-object p1, p1, Le/b/a/a/a;->x:[I

    .line 27
    iget-object p2, p0, Le/b/a/a/a;->x:[I

    array-length v0, p1

    invoke-static {p1, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    iput-boolean p3, p0, Le/b/a/a/a;->B:Z

    .line 29
    iput-char p4, p0, Le/b/a/a/a;->C:C

    .line 30
    iput p5, p0, Le/b/a/a/a;->D:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZCI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Le/b/a/a/a;->x:[I

    const/16 v0, 0x40

    new-array v1, v0, [C

    .line 3
    iput-object v1, p0, Le/b/a/a/a;->y:[C

    new-array v1, v0, [B

    .line 4
    iput-object v1, p0, Le/b/a/a/a;->z:[B

    .line 5
    iput-object p1, p0, Le/b/a/a/a;->A:Ljava/lang/String;

    .line 6
    iput-boolean p3, p0, Le/b/a/a/a;->B:Z

    .line 7
    iput-char p4, p0, Le/b/a/a/a;->C:C

    .line 8
    iput p5, p0, Le/b/a/a/a;->D:I

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 10
    iget-object p5, p0, Le/b/a/a/a;->y:[C

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1, p5, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 11
    iget-object p2, p0, Le/b/a/a/a;->x:[I

    const/4 p5, -0x1

    invoke-static {p2, p5}, Ljava/util/Arrays;->fill([II)V

    :goto_0
    if-ge v0, p1, :cond_0

    .line 12
    iget-object p2, p0, Le/b/a/a/a;->y:[C

    aget-char p2, p2, v0

    .line 13
    iget-object p5, p0, Le/b/a/a/a;->z:[B

    int-to-byte v1, p2

    aput-byte v1, p5, v0

    .line 14
    iget-object p5, p0, Le/b/a/a/a;->x:[I

    aput v0, p5, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 15
    iget-object p1, p0, Le/b/a/a/a;->x:[I

    const/4 p2, -0x2

    aput p2, p1, p4

    :cond_1
    return-void

    .line 16
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Base64Alphabet length must be exactly 64 (was "

    const-string p4, ")"

    invoke-static {p3, p1, p4}, Le/a/a/a/a;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a(C)I
    .locals 1

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Le/b/a/a/a;->x:[I

    aget p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public a(I)I
    .locals 1

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Le/b/a/a/a;->x:[I

    aget p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public a()V
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected end-of-String in base64 content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(CILjava/lang/String;)V
    .locals 2

    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    const-string v0, "Illegal white space character (code 0x"

    .line 32
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") as character #"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of 4-char base64 unit: can only used between units"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 33
    :cond_0
    iget-char v0, p0, Le/b/a/a/a;->C:C

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const-string p1, "Unexpected padding character (\'"

    .line 34
    invoke-static {p1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 35
    iget-char v0, p0, Le/b/a/a/a;->C:C

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\') as character #"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 37
    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->isDefined(C)Z

    move-result p2

    const-string v0, ") in base64 content"

    if-eqz p2, :cond_4

    invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 38
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal character \'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' (code 0x"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    :goto_1
    const-string p2, "Illegal character (code 0x"

    .line 39
    invoke-static {p2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    if-eqz p3, :cond_5

    const-string p2, ": "

    .line 40
    invoke-static {p1, p2, p3}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Ljava/lang/String;Le/b/a/a/s/c;)V
    .locals 10

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    add-int/lit8 v3, v2, 0x1

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x20

    if-le v2, v4, :cond_e

    .line 5
    invoke-virtual {p0, v2}, Le/b/a/a/a;->a(C)I

    move-result v4

    const/4 v5, 0x0

    if-ltz v4, :cond_d

    if-ge v3, v0, :cond_c

    add-int/lit8 v2, v3, 0x1

    .line 6
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 7
    invoke-virtual {p0, v3}, Le/b/a/a/a;->a(C)I

    move-result v6

    if-ltz v6, :cond_b

    shl-int/lit8 v3, v4, 0x6

    or-int/2addr v3, v6

    if-lt v2, v0, :cond_2

    .line 8
    iget-boolean p1, p0, Le/b/a/a/a;->B:Z

    if-nez p1, :cond_1

    shr-int/lit8 p1, v3, 0x4

    .line 9
    invoke-virtual {p2, p1}, Le/b/a/a/s/c;->a(I)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p0}, Le/b/a/a/a;->a()V

    throw v5

    :cond_2
    add-int/lit8 v4, v2, 0x1

    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 12
    invoke-virtual {p0, v2}, Le/b/a/a/a;->a(C)I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, -0x2

    const/4 v9, 0x2

    if-gez v6, :cond_6

    if-ne v6, v8, :cond_5

    if-ge v4, v0, :cond_4

    add-int/lit8 v2, v4, 0x1

    .line 13
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 14
    invoke-virtual {p0, v4}, Le/b/a/a/a;->b(C)Z

    move-result v6

    if-eqz v6, :cond_3

    shr-int/lit8 v3, v3, 0x4

    .line 15
    invoke-virtual {p2, v3}, Le/b/a/a/s/c;->a(I)V

    goto :goto_0

    :cond_3
    const-string p1, "expected padding character \'"

    .line 16
    invoke-static {p1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 17
    iget-char p2, p0, Le/b/a/a/a;->C:C

    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, v7, p1}, Le/b/a/a/a;->a(CILjava/lang/String;)V

    throw v5

    .line 19
    :cond_4
    invoke-virtual {p0}, Le/b/a/a/a;->a()V

    throw v5

    .line 20
    :cond_5
    invoke-virtual {p0, v2, v9, v5}, Le/b/a/a/a;->a(CILjava/lang/String;)V

    throw v5

    :cond_6
    shl-int/lit8 v2, v3, 0x6

    or-int/2addr v2, v6

    if-lt v4, v0, :cond_8

    .line 21
    iget-boolean p1, p0, Le/b/a/a/a;->B:Z

    if-nez p1, :cond_7

    shr-int/lit8 p1, v2, 0x2

    .line 22
    invoke-virtual {p2, p1}, Le/b/a/a/s/c;->c(I)V

    :goto_1
    return-void

    .line 23
    :cond_7
    invoke-virtual {p0}, Le/b/a/a/a;->a()V

    throw v5

    :cond_8
    add-int/lit8 v3, v4, 0x1

    .line 24
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 25
    invoke-virtual {p0, v4}, Le/b/a/a/a;->a(C)I

    move-result v6

    if-gez v6, :cond_a

    if-ne v6, v8, :cond_9

    shr-int/lit8 v2, v2, 0x2

    .line 26
    invoke-virtual {p2, v2}, Le/b/a/a/s/c;->c(I)V

    goto :goto_2

    .line 27
    :cond_9
    invoke-virtual {p0, v4, v7, v5}, Le/b/a/a/a;->a(CILjava/lang/String;)V

    throw v5

    :cond_a
    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v2, v6

    .line 28
    invoke-virtual {p2, v2}, Le/b/a/a/s/c;->b(I)V

    goto :goto_2

    :cond_b
    const/4 p1, 0x1

    .line 29
    invoke-virtual {p0, v3, p1, v5}, Le/b/a/a/a;->a(CILjava/lang/String;)V

    throw v5

    .line 30
    :cond_c
    invoke-virtual {p0}, Le/b/a/a/a;->a()V

    throw v5

    .line 31
    :cond_d
    invoke-virtual {p0, v2, v1, v5}, Le/b/a/a/a;->a(CILjava/lang/String;)V

    throw v5

    :cond_e
    :goto_2
    move v2, v3

    goto/16 :goto_0
.end method

.method public b(C)Z
    .locals 1

    .line 1
    iget-char v0, p0, Le/b/a/a/a;->C:C

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/a/a;->A:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/a/a;->A:Ljava/lang/String;

    return-object v0
.end method
