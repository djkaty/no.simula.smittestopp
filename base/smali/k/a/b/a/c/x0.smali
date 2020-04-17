.class public final synthetic Lk/a/b/a/c/x0;
.super Ljava/lang/Object;
.source "WritableBuffer.java"


# direct methods
.method public static a(Lk/a/b/a/c/y0;I)V
    .locals 0

    return-void
.end method

.method public static a(Lk/a/b/a/c/y0;Ljava/lang/String;)V
    .locals 6
    .param p0, "_this"    # Lk/a/b/a/c/y0;

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0xff80

    and-int/2addr v3, v2

    if-nez v3, :cond_0

    int-to-byte v2, v2

    .line 3
    invoke-interface {p0, v2}, Lk/a/b/a/c/y0;->a(B)V

    goto/16 :goto_2

    :cond_0
    const v3, 0xf800

    and-int/2addr v3, v2

    if-nez v3, :cond_1

    shr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x1f

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    .line 4
    invoke-interface {p0, v3}, Lk/a/b/a/c/y0;->a(B)V

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 5
    invoke-interface {p0, v2}, Lk/a/b/a/c/y0;->a(B)V

    goto :goto_2

    :cond_1
    const v3, 0xd800

    and-int v4, v2, v3

    if-ne v4, v3, :cond_4

    const v3, 0xdbff

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-eq v1, v0, :cond_3

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v4, 0xdc00

    and-int v5, v3, v4

    if-ne v5, v4, :cond_3

    const/high16 v4, 0x10000

    and-int/lit16 v2, v2, 0x3ff

    shl-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v4

    and-int/lit16 v3, v3, 0x3ff

    add-int/2addr v2, v3

    shr-int/lit8 v3, v2, 0x12

    and-int/lit8 v3, v3, 0x7

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    .line 7
    invoke-interface {p0, v3}, Lk/a/b/a/c/y0;->a(B)V

    shr-int/lit8 v3, v2, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 8
    invoke-interface {p0, v3}, Lk/a/b/a/c/y0;->a(B)V

    shr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 9
    invoke-interface {p0, v3}, Lk/a/b/a/c/y0;->a(B)V

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 10
    invoke-interface {p0, v2}, Lk/a/b/a/c/y0;->a(B)V

    goto :goto_2

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String contains invalid Unicode code points"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    shr-int/lit8 v3, v2, 0xc

    and-int/lit8 v3, v3, 0xf

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    .line 12
    invoke-interface {p0, v3}, Lk/a/b/a/c/y0;->a(B)V

    shr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 13
    invoke-interface {p0, v3}, Lk/a/b/a/c/y0;->a(B)V

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 14
    invoke-interface {p0, v2}, Lk/a/b/a/c/y0;->a(B)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method
