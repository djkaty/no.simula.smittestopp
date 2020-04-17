.class public Lk/b/a/l2/w;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public x:Lk/b/a/l2/m;

.field public y:Lk/b/a/l2/o;

.field public z:Lk/b/a/l2/q;


# direct methods
.method public constructor <init>(Lk/b/a/u;)V
    .locals 5

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    instance-of v1, v1, Lk/b/a/b0;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    invoke-static {v1}, Lk/b/a/l2/m;->a(Ljava/lang/Object;)Lk/b/a/l2/m;

    move-result-object v1

    iput-object v1, p0, Lk/b/a/l2/w;->x:Lk/b/a/l2/m;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v3

    if-eq v1, v3, :cond_3

    invoke-virtual {p1, v1}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v3

    invoke-static {v3}, Lk/b/a/b0;->a(Ljava/lang/Object;)Lk/b/a/b0;

    move-result-object v3

    .line 1
    iget v4, v3, Lk/b/a/b0;->x:I

    if-nez v4, :cond_1

    .line 2
    invoke-static {v3, v0}, Lk/b/a/l2/o;->a(Lk/b/a/b0;Z)Lk/b/a/l2/o;

    move-result-object v3

    iput-object v3, p0, Lk/b/a/l2/w;->y:Lk/b/a/l2/o;

    goto :goto_1

    :cond_1
    if-ne v4, v2, :cond_2

    invoke-static {v3, v0}, Lk/b/a/l2/q;->a(Lk/b/a/b0;Z)Lk/b/a/l2/q;

    move-result-object v3

    iput-object v3, p0, Lk/b/a/l2/w;->z:Lk/b/a/l2/q;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad tag number: "

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    iget v1, v3, Lk/b/a/b0;->x:I

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
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

.method public static a(Ljava/lang/Object;)Lk/b/a/l2/w;
    .locals 1

    instance-of v0, p0, Lk/b/a/l2/w;

    if-eqz v0, :cond_0

    check-cast p0, Lk/b/a/l2/w;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lk/b/a/l2/w;

    invoke-static {p0}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/b/a/l2/w;-><init>(Lk/b/a/u;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 5

    new-instance v0, Lk/b/a/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lk/b/a/f;-><init>(I)V

    iget-object v1, p0, Lk/b/a/l2/w;->x:Lk/b/a/l2/m;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    :cond_0
    iget-object v1, p0, Lk/b/a/l2/w;->y:Lk/b/a/l2/o;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v3, Lk/b/a/h1;

    invoke-direct {v3, v2, v2, v1}, Lk/b/a/h1;-><init>(ZILk/b/a/e;)V

    invoke-virtual {v0, v3}, Lk/b/a/f;->a(Lk/b/a/e;)V

    :cond_1
    iget-object v1, p0, Lk/b/a/l2/w;->z:Lk/b/a/l2/q;

    if-eqz v1, :cond_2

    new-instance v3, Lk/b/a/h1;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Lk/b/a/h1;-><init>(ZILk/b/a/e;)V

    invoke-virtual {v0, v3}, Lk/b/a/f;->a(Lk/b/a/e;)V

    :cond_2
    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v0}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    return-object v1
.end method
