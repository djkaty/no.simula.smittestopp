.class public Lk/b/a/l2/n;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public A:I

.field public x:Lk/b/a/l2/o;

.field public y:Lk/b/a/l2/m;

.field public z:Lk/b/a/l2/q;


# direct methods
.method public constructor <init>(Lk/b/a/b0;)V
    .locals 2

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lk/b/a/l2/n;->A:I

    .line 3
    iget v1, p1, Lk/b/a/b0;->x:I

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    .line 4
    invoke-static {p1, v0}, Lk/b/a/l2/m;->a(Lk/b/a/b0;Z)Lk/b/a/l2/m;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/l2/n;->y:Lk/b/a/l2/m;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag in Holder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1, v0}, Lk/b/a/l2/o;->a(Lk/b/a/b0;Z)Lk/b/a/l2/o;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/l2/n;->x:Lk/b/a/l2/o;

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lk/b/a/l2/n;->A:I

    return-void
.end method

.method public constructor <init>(Lk/b/a/u;)V
    .locals 6

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lk/b/a/l2/n;->A:I

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    invoke-virtual {p1, v2}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v3

    invoke-static {v3}, Lk/b/a/b0;->a(Ljava/lang/Object;)Lk/b/a/b0;

    move-result-object v3

    .line 1
    iget v4, v3, Lk/b/a/b0;->x:I

    if-eqz v4, :cond_2

    if-eq v4, v0, :cond_1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 2
    invoke-static {v3, v1}, Lk/b/a/l2/q;->a(Lk/b/a/b0;Z)Lk/b/a/l2/q;

    move-result-object v3

    iput-object v3, p0, Lk/b/a/l2/n;->z:Lk/b/a/l2/q;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag in Holder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v3, v1}, Lk/b/a/l2/m;->a(Lk/b/a/b0;Z)Lk/b/a/l2/m;

    move-result-object v3

    iput-object v3, p0, Lk/b/a/l2/n;->y:Lk/b/a/l2/m;

    goto :goto_1

    :cond_2
    invoke-static {v3, v1}, Lk/b/a/l2/o;->a(Lk/b/a/b0;Z)Lk/b/a/l2/o;

    move-result-object v3

    iput-object v3, p0, Lk/b/a/l2/n;->x:Lk/b/a/l2/o;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iput v0, p0, Lk/b/a/l2/n;->A:I

    return-void

    :cond_4
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
    .locals 5

    iget v0, p0, Lk/b/a/l2/n;->A:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    new-instance v0, Lk/b/a/f;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Lk/b/a/f;-><init>(I)V

    iget-object v3, p0, Lk/b/a/l2/n;->x:Lk/b/a/l2/o;

    if-eqz v3, :cond_0

    new-instance v4, Lk/b/a/h1;

    invoke-direct {v4, v1, v1, v3}, Lk/b/a/h1;-><init>(ZILk/b/a/e;)V

    invoke-virtual {v0, v4}, Lk/b/a/f;->a(Lk/b/a/e;)V

    :cond_0
    iget-object v3, p0, Lk/b/a/l2/n;->y:Lk/b/a/l2/m;

    if-eqz v3, :cond_1

    new-instance v4, Lk/b/a/h1;

    invoke-direct {v4, v1, v2, v3}, Lk/b/a/h1;-><init>(ZILk/b/a/e;)V

    invoke-virtual {v0, v4}, Lk/b/a/f;->a(Lk/b/a/e;)V

    :cond_1
    iget-object v2, p0, Lk/b/a/l2/n;->z:Lk/b/a/l2/q;

    if-eqz v2, :cond_2

    new-instance v3, Lk/b/a/h1;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v4, v2}, Lk/b/a/h1;-><init>(ZILk/b/a/e;)V

    invoke-virtual {v0, v3}, Lk/b/a/f;->a(Lk/b/a/e;)V

    :cond_2
    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v0}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    return-object v1

    :cond_3
    iget-object v0, p0, Lk/b/a/l2/n;->y:Lk/b/a/l2/m;

    if-eqz v0, :cond_4

    new-instance v1, Lk/b/a/h1;

    invoke-direct {v1, v2, v2, v0}, Lk/b/a/h1;-><init>(ZILk/b/a/e;)V

    return-object v1

    :cond_4
    new-instance v0, Lk/b/a/h1;

    iget-object v3, p0, Lk/b/a/l2/n;->x:Lk/b/a/l2/o;

    invoke-direct {v0, v2, v1, v3}, Lk/b/a/h1;-><init>(ZILk/b/a/e;)V

    return-object v0
.end method
