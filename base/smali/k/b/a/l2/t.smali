.class public Lk/b/a/l2/t;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public A:Lk/b/a/l2/v;

.field public B:Lk/b/a/l2/v;

.field public C:Lk/b/a/u;

.field public D:Lk/b/a/l2/k;

.field public x:Lk/b/a/l;

.field public y:Lk/b/a/l2/a;

.field public z:Lk/b/a/k2/c;


# direct methods
.method public constructor <init>(Lk/b/a/u;)V
    .locals 3

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    instance-of v1, v1, Lk/b/a/l;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/l;->a(Ljava/lang/Object;)Lk/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/l2/t;->x:Lk/b/a/l;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lk/b/a/l2/t;->x:Lk/b/a/l;

    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/l2/a;->a(Ljava/lang/Object;)Lk/b/a/l2/a;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/l2/t;->y:Lk/b/a/l2/a;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    invoke-static {v1}, Lk/b/a/k2/c;->a(Ljava/lang/Object;)Lk/b/a/k2/c;

    move-result-object v1

    iput-object v1, p0, Lk/b/a/l2/t;->z:Lk/b/a/k2/c;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/l2/v;->a(Ljava/lang/Object;)Lk/b/a/l2/v;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/l2/t;->A:Lk/b/a/l2/v;

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    instance-of v0, v0, Lk/b/a/d0;

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    instance-of v0, v0, Lk/b/a/j;

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    instance-of v0, v0, Lk/b/a/l2/v;

    if-eqz v0, :cond_2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    invoke-static {v1}, Lk/b/a/l2/v;->a(Ljava/lang/Object;)Lk/b/a/l2/v;

    move-result-object v1

    iput-object v1, p0, Lk/b/a/l2/t;->B:Lk/b/a/l2/v;

    move v1, v0

    :cond_2
    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    instance-of v0, v0, Lk/b/a/b0;

    if-nez v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    invoke-static {v1}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object v1

    iput-object v1, p0, Lk/b/a/l2/t;->C:Lk/b/a/u;

    move v1, v0

    :cond_3
    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    instance-of v0, v0, Lk/b/a/b0;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object p1

    check-cast p1, Lk/b/a/b0;

    invoke-static {p1, v2}, Lk/b/a/u;->a(Lk/b/a/b0;Z)Lk/b/a/u;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/l2/k;->a(Ljava/lang/Object;)Lk/b/a/l2/k;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/l2/t;->D:Lk/b/a/l2/k;

    :cond_4
    return-void

    :cond_5
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

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lk/b/a/f;-><init>(I)V

    iget-object v1, p0, Lk/b/a/l2/t;->x:Lk/b/a/l;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    :cond_0
    iget-object v1, p0, Lk/b/a/l2/t;->y:Lk/b/a/l2/a;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/l2/t;->z:Lk/b/a/k2/c;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/l2/t;->A:Lk/b/a/l2/v;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/l2/t;->B:Lk/b/a/l2/v;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    :cond_1
    iget-object v1, p0, Lk/b/a/l2/t;->C:Lk/b/a/u;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    :cond_2
    iget-object v1, p0, Lk/b/a/l2/t;->D:Lk/b/a/l2/k;

    if-eqz v1, :cond_3

    new-instance v2, Lk/b/a/h1;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lk/b/a/h1;-><init>(ILk/b/a/e;)V

    invoke-virtual {v0, v2}, Lk/b/a/f;->a(Lk/b/a/e;)V

    :cond_3
    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v0}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    return-object v1
.end method
