.class public final Le/b/a/a/p/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const/high16 v0, -0x80000000

    .line 1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/b/a/a/p/f;->a:Ljava/lang/String;

    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    const/16 v0, 0x3e8

    new-array v0, v0, [I

    .line 3
    sput-object v0, Le/b/a/a/p/f;->b:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v1, v3, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_0

    add-int/lit8 v6, v1, 0x30

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v7, v4, 0x30

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v5, 0x30

    or-int/2addr v6, v7

    .line 4
    sget-object v7, Le/b/a/a/p/f;->b:[I

    add-int/lit8 v8, v2, 0x1

    aput v6, v7, v2

    add-int/lit8 v5, v5, 0x1

    move v2, v8

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a(I[BI)I
    .locals 2

    .line 5
    sget-object v0, Le/b/a/a/p/f;->b:[I

    aget p0, v0, p0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    .line 6
    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    .line 7
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    int-to-byte p0, p0

    .line 8
    aput-byte p0, p1, p2

    return v0
.end method

.method public static a(I[CI)I
    .locals 2

    .line 1
    sget-object v0, Le/b/a/a/p/f;->b:[I

    aget p0, v0, p0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-char v1, v1

    .line 2
    aput-char v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit8 v1, v1, 0x7f

    int-to-char v1, v1

    .line 3
    aput-char v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    and-int/lit8 p0, p0, 0x7f

    int-to-char p0, p0

    .line 4
    aput-char p0, p1, p2

    return v0
.end method

.method public static b(I[BI)I
    .locals 2

    .line 5
    sget-object v0, Le/b/a/a/p/f;->b:[I

    aget v0, v0, p0

    const/16 v1, 0x9

    if-le p0, v1, :cond_1

    const/16 v1, 0x63

    if-le p0, v1, :cond_0

    add-int/lit8 p0, p2, 0x1

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    .line 6
    aput-byte v1, p1, p2

    move p2, p0

    :cond_0
    add-int/lit8 p0, p2, 0x1

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    .line 7
    aput-byte v1, p1, p2

    move p2, p0

    :cond_1
    add-int/lit8 p0, p2, 0x1

    int-to-byte v0, v0

    .line 8
    aput-byte v0, p1, p2

    return p0
.end method

.method public static b(I[CI)I
    .locals 2

    .line 1
    sget-object v0, Le/b/a/a/p/f;->b:[I

    aget v0, v0, p0

    const/16 v1, 0x9

    if-le p0, v1, :cond_1

    const/16 v1, 0x63

    if-le p0, v1, :cond_0

    add-int/lit8 p0, p2, 0x1

    shr-int/lit8 v1, v0, 0x10

    int-to-char v1, v1

    .line 2
    aput-char v1, p1, p2

    move p2, p0

    :cond_0
    add-int/lit8 p0, p2, 0x1

    shr-int/lit8 v1, v0, 0x8

    and-int/lit8 v1, v1, 0x7f

    int-to-char v1, v1

    .line 3
    aput-char v1, p1, p2

    move p2, p0

    :cond_1
    add-int/lit8 p0, p2, 0x1

    and-int/lit8 v0, v0, 0x7f

    int-to-char v0, v0

    .line 4
    aput-char v0, p1, p2

    return p0
.end method

.method public static c(I[BI)I
    .locals 5

    if-gez p0, :cond_2

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    .line 30
    sget-object p0, Le/b/a/a/p/f;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int/lit8 v1, p2, 0x1

    .line 31
    sget-object v2, Le/b/a/a/p/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_0

    :cond_0
    return p2

    :cond_1
    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x2d

    .line 32
    aput-byte v1, p1, p2

    neg-int p0, p0

    move p2, v0

    :cond_2
    const v0, 0xf4240

    if-ge p0, v0, :cond_5

    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_4

    const/16 v0, 0xa

    if-ge p0, v0, :cond_3

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 p0, p0, 0x30

    int-to-byte p0, p0

    .line 33
    aput-byte p0, p1, p2

    goto :goto_1

    .line 34
    :cond_3
    invoke-static {p0, p1, p2}, Le/b/a/a/p/f;->b(I[BI)I

    move-result v0

    goto :goto_1

    .line 35
    :cond_4
    div-int/lit16 v0, p0, 0x3e8

    mul-int/lit16 v1, v0, 0x3e8

    sub-int/2addr p0, v1

    .line 36
    invoke-static {v0, p1, p2}, Le/b/a/a/p/f;->b(I[BI)I

    move-result p2

    .line 37
    invoke-static {p0, p1, p2}, Le/b/a/a/p/f;->a(I[BI)I

    move-result v0

    :goto_1
    return v0

    :cond_5
    const v0, 0x3b9aca00

    if-lt p0, v0, :cond_7

    sub-int/2addr p0, v0

    if-lt p0, v0, :cond_6

    sub-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x32

    .line 38
    aput-byte v1, p1, p2

    goto :goto_2

    :cond_6
    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x31

    .line 39
    aput-byte v1, p1, p2

    .line 40
    :goto_2
    div-int/lit16 p2, p0, 0x3e8

    mul-int/lit16 v1, p2, 0x3e8

    sub-int/2addr p0, v1

    .line 41
    div-int/lit16 v1, p2, 0x3e8

    mul-int/lit16 v2, v1, 0x3e8

    sub-int/2addr p2, v2

    .line 42
    sget-object v2, Le/b/a/a/p/f;->b:[I

    aget v1, v2, v1

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    .line 43
    aput-byte v4, p1, v0

    add-int/lit8 v0, v3, 0x1

    shr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    .line 44
    aput-byte v4, p1, v3

    add-int/lit8 v3, v0, 0x1

    int-to-byte v1, v1

    .line 45
    aput-byte v1, p1, v0

    .line 46
    aget p2, v2, p2

    add-int/lit8 v0, v3, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    .line 47
    aput-byte v1, p1, v3

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    .line 48
    aput-byte v3, p1, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte p2, p2

    .line 49
    aput-byte p2, p1, v1

    .line 50
    aget p0, v2, p0

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    .line 51
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    .line 52
    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    int-to-byte p0, p0

    .line 53
    aput-byte p0, p1, v0

    return p2

    .line 54
    :cond_7
    div-int/lit16 v0, p0, 0x3e8

    mul-int/lit16 v1, v0, 0x3e8

    sub-int/2addr p0, v1

    .line 55
    div-int/lit16 v1, v0, 0x3e8

    mul-int/lit16 v2, v1, 0x3e8

    sub-int/2addr v0, v2

    .line 56
    invoke-static {v1, p1, p2}, Le/b/a/a/p/f;->b(I[BI)I

    move-result p2

    .line 57
    invoke-static {v0, p1, p2}, Le/b/a/a/p/f;->a(I[BI)I

    move-result p2

    .line 58
    invoke-static {p0, p1, p2}, Le/b/a/a/p/f;->a(I[BI)I

    move-result p0

    return p0
.end method

.method public static c(I[CI)I
    .locals 7

    if-gez p0, :cond_1

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Le/b/a/a/p/f;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 2
    sget-object v0, Le/b/a/a/p/f;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr p2, p0

    return p2

    :cond_0
    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x2d

    .line 3
    aput-char v1, p1, p2

    neg-int p0, p0

    move p2, v0

    :cond_1
    const v0, 0xf4240

    const/16 v1, 0x3e8

    if-ge p0, v0, :cond_4

    if-ge p0, v1, :cond_3

    const/16 v0, 0xa

    if-ge p0, v0, :cond_2

    add-int/lit8 p0, p0, 0x30

    int-to-char p0, p0

    .line 4
    aput-char p0, p1, p2

    add-int/lit8 p2, p2, 0x1

    return p2

    .line 5
    :cond_2
    invoke-static {p0, p1, p2}, Le/b/a/a/p/f;->b(I[CI)I

    move-result p0

    return p0

    .line 6
    :cond_3
    div-int/lit16 v0, p0, 0x3e8

    mul-int/lit16 v1, v0, 0x3e8

    sub-int/2addr p0, v1

    .line 7
    invoke-static {v0, p1, p2}, Le/b/a/a/p/f;->b(I[CI)I

    move-result p2

    .line 8
    invoke-static {p0, p1, p2}, Le/b/a/a/p/f;->a(I[CI)I

    move-result p0

    return p0

    :cond_4
    const v0, 0x3b9aca00

    if-lt p0, v0, :cond_6

    sub-int/2addr p0, v0

    if-lt p0, v0, :cond_5

    sub-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x1

    const/16 v2, 0x32

    .line 9
    aput-char v2, p1, p2

    goto :goto_0

    :cond_5
    add-int/lit8 v0, p2, 0x1

    const/16 v2, 0x31

    .line 10
    aput-char v2, p1, p2

    .line 11
    :goto_0
    div-int/lit16 p2, p0, 0x3e8

    mul-int/lit16 v2, p2, 0x3e8

    sub-int/2addr p0, v2

    .line 12
    div-int/lit16 v2, p2, 0x3e8

    .line 13
    sget-object v3, Le/b/a/a/p/f;->b:[I

    aget v4, v3, v2

    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, v4, 0x10

    int-to-char v6, v6

    .line 14
    aput-char v6, p1, v0

    add-int/lit8 v0, v5, 0x1

    shr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0x7f

    int-to-char v6, v6

    .line 15
    aput-char v6, p1, v5

    add-int/lit8 v5, v0, 0x1

    and-int/lit8 v4, v4, 0x7f

    int-to-char v4, v4

    .line 16
    aput-char v4, p1, v0

    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr p2, v2

    .line 17
    aget p2, v3, p2

    add-int/lit8 v0, v5, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-char v1, v1

    .line 18
    aput-char v1, p1, v5

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, p2, 0x8

    and-int/lit8 v2, v2, 0x7f

    int-to-char v2, v2

    .line 19
    aput-char v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    and-int/lit8 p2, p2, 0x7f

    int-to-char p2, p2

    .line 20
    aput-char p2, p1, v1

    .line 21
    aget p0, v3, p0

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-char v1, v1

    .line 22
    aput-char v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit8 v1, v1, 0x7f

    int-to-char v1, v1

    .line 23
    aput-char v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    and-int/lit8 p0, p0, 0x7f

    int-to-char p0, p0

    .line 24
    aput-char p0, p1, v0

    return p2

    .line 25
    :cond_6
    div-int/lit16 v0, p0, 0x3e8

    mul-int/lit16 v1, v0, 0x3e8

    sub-int/2addr p0, v1

    .line 26
    div-int/lit16 v1, v0, 0x3e8

    mul-int/lit16 v2, v1, 0x3e8

    sub-int/2addr v0, v2

    .line 27
    invoke-static {v1, p1, p2}, Le/b/a/a/p/f;->b(I[CI)I

    move-result p2

    .line 28
    invoke-static {v0, p1, p2}, Le/b/a/a/p/f;->a(I[CI)I

    move-result p2

    .line 29
    invoke-static {p0, p1, p2}, Le/b/a/a/p/f;->a(I[CI)I

    move-result p0

    return p0
.end method
