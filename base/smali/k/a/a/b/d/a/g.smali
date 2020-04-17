.class public Lk/a/a/b/d/a/g;
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
    iput p1, p0, Lk/a/a/b/d/a/g;->b:I

    .line 3
    iput p2, p0, Lk/a/a/b/d/a/g;->c:I

    .line 4
    iput-boolean p3, p0, Lk/a/a/b/d/a/g;->d:Z

    return-void
.end method

.method public static a(II)Lk/a/a/b/d/a/g;
    .locals 2

    .line 1
    new-instance v0, Lk/a/a/b/d/a/g;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lk/a/a/b/d/a/g;-><init>(IIZ)V

    return-object v0
.end method


# virtual methods
.method public a(ILjava/io/Writer;)Z
    .locals 2

    .line 2
    iget-boolean v0, p0, Lk/a/a/b/d/a/g;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lk/a/a/b/d/a/g;->b:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lk/a/a/b/d/a/g;->c:I

    if-le p1, v0, :cond_2

    :cond_0
    return v1

    .line 4
    :cond_1
    iget v0, p0, Lk/a/a/b/d/a/g;->b:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lk/a/a/b/d/a/g;->c:I

    if-gt p1, v0, :cond_2

    return v1

    :cond_2
    const-string v0, "&#"

    .line 5
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 6
    invoke-static {p1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p1, 0x3b

    .line 7
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(I)V

    const/4 p1, 0x1

    return p1
.end method
