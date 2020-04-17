.class public Li/a/b/j$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/b/j$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public synthetic constructor <init>(Li/a/b/j$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    if-eq v3, p1, :cond_2

    return v2

    .line 3
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 4
    invoke-static {v3}, Li/a/b/j;->a(C)Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-static {v3}, Li/a/b/j;->b(C)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_7

    :cond_3
    const/4 v3, 0x1

    :goto_0
    if-lt v3, v1, :cond_19

    .line 5
    invoke-static {p1}, Li/a/b/j;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    .line 6
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    const/16 v5, 0x39

    const/16 v6, 0x30

    if-lt v3, v6, :cond_5

    if-le v3, v5, :cond_6

    :cond_5
    if-ne v3, v4, :cond_18

    :cond_6
    const/4 v7, 0x1

    :goto_1
    if-lt v7, v1, :cond_7

    goto :goto_2

    .line 7
    :cond_7
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_9

    if-le v3, v5, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_9
    :goto_2
    if-ne v7, v1, :cond_a

    return v2

    :cond_a
    const/16 v8, 0x2e

    if-ne v3, v8, :cond_c

    :cond_b
    add-int/lit8 v7, v7, 0x1

    :cond_c
    if-lt v7, v1, :cond_d

    goto :goto_3

    .line 8
    :cond_d
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_e

    if-le v3, v5, :cond_b

    :cond_e
    :goto_3
    if-ne v7, v1, :cond_f

    return v2

    :cond_f
    const/16 v8, 0x45

    if-eq v3, v8, :cond_10

    const/16 v8, 0x65

    if-ne v3, v8, :cond_13

    :cond_10
    add-int/lit8 v7, v7, 0x1

    if-ne v7, v1, :cond_11

    return v0

    .line 9
    :cond_11
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0x2b

    if-eq v3, v8, :cond_12

    if-ne v3, v4, :cond_13

    :cond_12
    add-int/lit8 v7, v7, 0x1

    .line 10
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    :cond_13
    if-ne v7, v1, :cond_14

    return v0

    :cond_14
    :goto_4
    if-lt v7, v1, :cond_15

    goto :goto_5

    .line 11
    :cond_15
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_17

    if-le v3, v5, :cond_16

    goto :goto_5

    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_17
    :goto_5
    if-ne v7, v1, :cond_18

    return v2

    :cond_18
    return v0

    .line 12
    :cond_19
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_1a

    const/16 v5, 0x5d

    if-eq v4, v5, :cond_1a

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_1a

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_1a

    const/4 v5, 0x0

    goto :goto_6

    :cond_1a
    const/4 v5, 0x1

    :goto_6
    if-nez v5, :cond_1c

    .line 13
    invoke-static {v4}, Li/a/b/j;->b(C)Z

    move-result v4

    if-eqz v4, :cond_1b

    goto :goto_7

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1c
    :goto_7
    return v2
.end method
