.class public Lk/b/a/f2/a;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public x:Lk/b/a/o;

.field public y:Lk/b/a/e;


# direct methods
.method public constructor <init>(Lk/b/a/u;)V
    .locals 3

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    check-cast v0, Lk/b/a/o;

    iput-object v0, p0, Lk/b/a/f2/a;->x:Lk/b/a/o;

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-virtual {p1, v1}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object p1

    check-cast p1, Lk/b/a/b0;

    .line 1
    iget-boolean v0, p1, Lk/b/a/b0;->y:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p1, Lk/b/a/b0;->x:I

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lk/b/a/b0;->j()Lk/b/a/t;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/f2/a;->y:Lk/b/a/e;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad tag for \'content\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad sequence size: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 4

    new-instance v0, Lk/b/a/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lk/b/a/f;-><init>(I)V

    iget-object v1, p0, Lk/b/a/f2/a;->x:Lk/b/a/o;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/f2/a;->y:Lk/b/a/e;

    if-eqz v1, :cond_0

    new-instance v2, Lk/b/a/n0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lk/b/a/n0;-><init>(ILk/b/a/e;)V

    invoke-virtual {v0, v2}, Lk/b/a/f;->a(Lk/b/a/e;)V

    :cond_0
    new-instance v1, Lk/b/a/j0;

    invoke-direct {v1, v0}, Lk/b/a/j0;-><init>(Lk/b/a/f;)V

    return-object v1
.end method
