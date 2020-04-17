.class public final Le/b/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/b/a/a/a;

.field public static final b:Le/b/a/a/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v6, Le/b/a/a/a;

    const-string v1, "MIME"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const/4 v3, 0x1

    const/16 v4, 0x3d

    const/16 v5, 0x4c

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Le/b/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZCI)V

    sput-object v6, Le/b/a/a/b;->a:Le/b/a/a/a;

    .line 2
    new-instance v7, Le/b/a/a/a;

    .line 3
    iget-boolean v3, v6, Le/b/a/a/a;->B:Z

    iget-char v4, v6, Le/b/a/a/a;->C:C

    const-string v2, "MIME-NO-LINEFEEDS"

    const v5, 0x7fffffff

    move-object v0, v7

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Le/b/a/a/a;-><init>(Le/b/a/a/a;Ljava/lang/String;ZCI)V

    .line 4
    sput-object v7, Le/b/a/a/b;->b:Le/b/a/a/a;

    .line 5
    sget-object v0, Le/b/a/a/b;->a:Le/b/a/a/a;

    const/16 v1, 0x80

    new-array v2, v1, [I

    const/16 v3, 0x40

    new-array v4, v3, [C

    new-array v5, v3, [B

    .line 6
    iget-object v6, v0, Le/b/a/a/a;->z:[B

    .line 7
    array-length v7, v6

    const/4 v8, 0x0

    invoke-static {v6, v8, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object v5, v0, Le/b/a/a/a;->y:[C

    .line 9
    array-length v6, v5

    invoke-static {v5, v8, v4, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget-object v0, v0, Le/b/a/a/a;->x:[I

    .line 11
    array-length v4, v0

    invoke-static {v0, v8, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "+"

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x2d

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const-string v2, "/"

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x5f

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [I

    new-array v2, v3, [C

    new-array v4, v3, [B

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 17
    invoke-virtual {v0, v8, v5, v2, v8}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v0, -0x1

    .line 18
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    :goto_0
    if-ge v8, v5, :cond_0

    .line 19
    aget-char v0, v2, v8

    int-to-byte v3, v0

    .line 20
    aput-byte v3, v4, v8

    .line 21
    aput v8, v1, v0

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Base64Alphabet length must be exactly 64 (was "

    const-string v2, ")"

    invoke-static {v1, v5, v2}, Le/a/a/a/a;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
