.class public Lk/a/a/b/d/a/e;
.super Lk/a/a/b/d/a/c;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:I

.field public final d:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/a/a/b/d/a/c;-><init>()V

    .line 2
    iput p1, p0, Lk/a/a/b/d/a/e;->b:I

    .line 3
    iput p2, p0, Lk/a/a/b/d/a/e;->c:I

    .line 4
    iput-boolean p3, p0, Lk/a/a/b/d/a/e;->d:Z

    return-void
.end method

.method public static a(II)Lk/a/a/b/d/a/e;
    .locals 2

    .line 1
    new-instance v0, Lk/a/a/b/d/a/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lk/a/a/b/d/a/e;-><init>(IIZ)V

    return-object v0
.end method


# virtual methods
.method public a(ILjava/io/Writer;)Z
    .locals 5

    .line 2
    iget-boolean v0, p0, Lk/a/a/b/d/a/e;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Lk/a/a/b/d/a/e;->b:I

    if-lt p1, v0, :cond_3

    iget v0, p0, Lk/a/a/b/d/a/e;->c:I

    if-le p1, v0, :cond_1

    goto :goto_1

    .line 4
    :cond_0
    iget v0, p0, Lk/a/a/b/d/a/e;->b:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lk/a/a/b/d/a/e;->c:I

    if-gt p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const v0, 0xffff

    const/4 v2, 0x1

    const-string v3, "\\u"

    if-le p1, v0, :cond_2

    .line 5
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    .line 6
    invoke-static {v3}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-char v1, p1, v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char p1, p1, v2

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 13
    sget-object v0, Lk/a/a/b/d/a/b;->a:[C

    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 14
    sget-object v0, Lk/a/a/b/d/a/b;->a:[C

    shr-int/lit8 v1, p1, 0x8

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 15
    sget-object v0, Lk/a/a/b/d/a/b;->a:[C

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 16
    sget-object v0, Lk/a/a/b/d/a/b;->a:[C

    and-int/lit8 p1, p1, 0xf

    aget-char p1, v0, p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(I)V

    :goto_0
    const/4 v1, 0x1

    :cond_3
    :goto_1
    return v1
.end method
